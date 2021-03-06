end behavioral;library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;

entity i2c_user is
	port(
		-- IN
		clk_i      	: in    std_logic;                     	--clock input
		reset_n     : in    std_logic;                     	--active-high reset
		selectMode	: in    std_logic_vector(1 downto 0); 	-- 00 = LDR, 01 = TEMP, 10 = ANALOG, 11 = POT
		clockOutput : in    std_logic;   					-- 0 = Blank, 1 = Display "Clock Output"

		-- INOUT
		sda      	: inout std_logic;                     	--i2c data
		scl      	: inout std_logic                      	--i2c clock
	);
end i2c_user;

architecture behavioral of i2c_user is
	component i2c_master is
		GENERIC(
			input_clk : integer := 125_000_000;	 			 --input clock speed from user logic in Hz
			bus_clk   : integer := 50_000);    			     --speed the i2c bus (scl) will run at in Hz
		PORT(
			clk       : in     std_logic;                    --system clock
			reset_n   : in     std_logic;                    --active low reset
			ena       : in     std_logic;                    --latch in command
			addr      : in     std_logic_vector(6 downto 0); --address of target slave
			rw        : in     std_logic;         	 		 --'0' is write, '1' is read
			data_wr   : in     std_logic_vector(7 downto 0); --data to write to slave
			busy      : out    std_logic;         	 		 --indicates transaction in progress
			data_rd   : out    std_logic_vector(7 downto 0); --data read from slave
			ack_error : buffer std_logic;                    --flag if improper acknowledge from slave
			sda       : inout  std_logic;                    --serial data output of i2c bus
			scl       : inout  std_logic);                   --serial clock output of i2c bus
	end component;

	--general signals
	type stateType is (start, ready, data_valid, busy_high, repeat);
	signal state, next_state  : stateType := start;            --state machine vars
	signal byteSel            : integer range 0 to 42 := 0;    --current byte to send
	signal nibble_sel         : std_logic;
	signal lcd_data           : std_logic_vector(8 downto 0); -- 9 bits, MSB is RS

	--i2c master signals
	signal i2c_enable  : std_logic;                    --enable/start the i2c_master component
	signal i2c_address : std_logic_vector(7 downto 0); --i2c address, MSB will be ignored
	signal i2c_data    : std_logic_vector(7 downto 0); --data to write
	signal i2c_busy    : std_logic;                    --is the i2c component busy?
	
	-- LCD DATA SIGNALS 
	TYPE LCD_FirstLine is array(0 to 3) of std_logic_vector(127 downto 0);
	signal first_line : LCD_FirstLine := (others => (others => '0'));

	TYPE LCD_SecondLine is array(0 to 1) of std_logic_vector(127 downto 0);
	signal second_line : LCD_SecondLine := (others => (others => '0'));
    
    -- Simple std_logic to integer function
    function std_to_integer( s : std_logic ) return natural is
    begin
        if s = '1' then
            return 1;
        else
            return 0;
        end if;
    end function;
    
	begin
	state <= next_state;
	Inst_i2c_master : i2c_master
		port map(
			clk       => clk_i,
			reset_n   => reset_n,
			ena       => i2c_enable,
			addr      => i2c_address(6 downto 0),
			rw        => '0',          --we're only writing
			data_wr   => i2c_data,
			busy      => i2c_busy,
			data_rd   => open,         --we're only writing
			ack_error => open,         --we're only writing
			sda       => sda,
			scl       => scl
		);
	
	-- Data Out Mux (For Nibble Writing)
	i2c_data <= x"0" & lcd_data(7 downto 4) when nibble_sel = '0' else
				x"0" & lcd_data(3 downto 0) when nibble_sel = '1' else
				(others => '0');
	
	-- Main State Machine
	process(clk_i) 
	begin
		if rising_edge(clk_i) then
			if reset_n = '0' then
				next_state  <= start; -- Initial: FSM State = start
				byteSel     <= 0;     -- Initial: Byte Counter  = 0
				nibble_sel  <= '0';   -- Initial: Nibble Select = 0
			else
				case(state) is 
					when start =>
						i2c_enable <= '0'; --don't start the i2c transaction
						next_state <= ready;
						
					when ready =>
						if i2c_busy = '0' then       --if we can go to the next transaction
							i2c_enable <= '1';       --enable the i2c controller
							next_state <= data_valid;--and move to the next state
						end if;
						
					when data_valid =>
						if i2c_busy = '1' then       --if the transaction has started
							i2c_enable <= '0';       --reset the enable signal
							next_state <= busy_high; --and move to the next state
						end if;
						
					when busy_high => 
						if i2c_busy = '0' then       --once the i2c transaction has completed
							next_state <= repeat;    --move to the next state
						end if;
						
					when repeat =>
						if nibble_sel = '1' then 
							if byteSel < 42 then             --If we're not at the top
								byteSel <= byteSel + 1;      --increment 
							else                             --otherwise, this is a normal repeat
								byteSel <= 9;                --so go back to the repeating bytes
							end if;
						end if;
						nibble_sel <= NOT nibble_sel;    -- Change to 0 or 1
						next_state <= start;
				end case;
			end if;
		end if;
	end process;
	
	i2c_address <= x"20"; -- (0x) 20, 21, 22, 23, 24, 25, 26, 27

    -- LCD DATA --

	-- First Line  --
	-- This part is editable for custom messages --
	-- Text: "----LDR-(A0)----", - = space
	first_line(0)     <= x"20" & x"20" & x"20" & x"20" & x"4C" & x"44" & x"52" & x"20" & x"28" & x"41" & x"30" & x"29" & x"20" & x"20" & x"20" & x"20";
	-- Text: "----TEMP-(A1)---", - = space
	first_line(1)     <= x"20" & x"20" & x"20" & x"20" & x"54" & x"45" & x"4D" & x"50" & x"20" & x"28" & x"41" & x"31" & x"29" & x"20" & x"20" & x"20";
	-- Text: "---ANALOG-(A2)--", - = space
	first_line(2)     <= x"20" & x"20" & x"20" & x"41" & x"4E" & x"41" & x"4C" & x"4F" & x"47" & x"20" & x"28" & x"41" & x"32" & x"29" & x"20" & x"20";
	-- Text: "----POT-(A3)----", - = space
	first_line(3)     <= x"20" & x"20" & x"20" & x"20" & x"50" & x"4F" & x"54" & x"20" & x"28" & x"41" & x"33" & x"29" & x"20" & x"20" & x"20" & x"20";

	-- Second Line --
	-- Text: "----------------", - = space
	second_line(0)    <= x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20";
	-- Text: "--CLOCK-OUTPUT--", - = space
	second_line(1)    <= x"20" & x"20" & x"43" & x"4C" & x"4F" & x"43" & x"4B" & x"20" & x"4F" & x"55" & x"54" & x"50" & x"55" & x"54" & x"20" & x"20";

	process(byteSel)
	 begin
	    case byteSel is
	       when 0  => lcd_data  <= '0'& X"28"; --Initialization Start
	       when 1  => lcd_data  <= '0'& X"28"; -- 4 bit, 2 lines
	       when 2  => lcd_data  <= '0'& X"28"; -- 4 bit, 2 lines
	       when 3  => lcd_data  <= '0'& X"28"; -- 4 bit, 2 lines
	       when 4  => lcd_data  <= '0'& X"28"; -- 4 bit, 2 lines
	       when 5  => lcd_data  <= '0'& X"28"; -- 4 bit, 2 lines
	       when 6  => lcd_data  <= '0'& X"01"; -- Clear Screen
	       when 7  => lcd_data  <= '0'& X"0C"; -- Restore Display
	       when 8  => lcd_data  <= '0'& X"06"; -- Inc Cursor
	       when 9  => lcd_data  <= '0'& X"80"; -- Initialization, set to top left
	       when 10 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(127 downto 120);
       	   when 11 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(119 downto 112);
       	   when 12 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(111 downto 104);
       	   when 13 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(103 downto  96);
       	   when 14 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(95  downto  88);
       	   when 15 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(87  downto  80);
       	   when 16 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(79  downto  72); 
       	   when 17 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(71  downto  64);
       	   when 18 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(63  downto  56);
       	   when 19 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(55  downto  48);
       	   when 20 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(47  downto  40);
       	   when 21 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(39  downto  32);
       	   when 22 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(31  downto  24);
       	   when 23 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(23  downto  16);
       	   when 24 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(15  downto   8);
       	   when 25 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(7   downto   0);
       	   when 26 => lcd_data  <= '0'& X"C0"; -- Change address to bottom left of screen--
       	   when 27 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(127 downto 120);
       	   when 28 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(119 downto 112);
       	   when 29 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(111 downto 104);
       	   when 30 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(103 downto  96);
       	   when 31 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(95  downto  88);
       	   when 32 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(87  downto  80);
       	   when 33 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(79  downto  72); 
       	   when 34 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(71  downto  64);
       	   when 35 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(63  downto  56);
       	   when 36 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(55  downto  48);
       	   when 37 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(47  downto  40);
       	   when 38 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(39  downto  32);
       	   when 39 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(31  downto  24);
       	   when 40 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(23  downto  16);
       	   when 41 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(15  downto   8);
       	   when 42 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(7   downto   0);
	       when others => lcd_data <= '0'& X"28"; 
	   end case;
	end process;



end behavioral;