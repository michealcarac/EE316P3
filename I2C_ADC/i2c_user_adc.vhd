library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Common.all;

entity i2c_user_adc is
	generic(
        input_clk : integer := CLOCK_SPEED ;
        bus_clk   : integer := ADC_BUS_CLK
	);
	port(
		clk_i    : in    std_logic;                     --clock input
		reset_n  : in    std_logic;                     --active-low reset
		data_i 	 : in    std_logic_vector(3 downto 0); -- Data to be sent
		data_o 	 : out   std_logic_vector(7 downto 0);  -- Data to be read
		
		sda      : inout std_logic;                     --i2c data
		scl      : inout std_logic                      --i2c clock
	);
end i2c_user_adc;

architecture behavioral of i2c_user_adc is
	component i2c_master is
		generic(
			input_clk : integer := 125_000_000; --input clock speed from user logic in Hz
            bus_clk   : integer := 90_000);   --speed the i2c bus (scl) will run at in Hz
		port(
			clk       : in     std_logic;                    --system clock
			reset_n   : in     std_logic;                    --active low reset
			ena       : in     std_logic;                    --latch in command
			addr      : in     std_logic_vector(6 DOWNTO 0); --address of target slave
			rw        : in     std_logic;             		 --'0' is write, '1' is read
			data_wr   : in     std_logic_vector(7 DOWNTO 0); --data to write to slave
			busy      : out    std_logic;              		 --indicates transaction in progress
			data_rd   : out    std_logic_vector(7 DOWNTO 0); --data read from slave
			ack_error : buffer std_logic;                    --flag if improper acknowledge from slave
			sda       : inout  std_logic;                    --serial data output of i2c bus
			scl       : inout  std_logic);                   --serial clock output of i2c bus
	end component;

	--general signals
	type stateType is (start, ready, data_valid, busy_high, repeat);
	signal state, next_state  : stateType := start;            --state machine vars
	signal cmd                : std_logic_vector(3 downto 0);
	signal prev_cmd           : std_logic_vector(3 downto 0);
	signal cmd_change         : std_logic;
	-- View note in busy high section of the FSM
	signal byteSel            : integer range 0 to 7 := 0;    --current byte to send (Change the N value)
	
	
	--i2c master signals
	signal i2c_enable  : std_logic;                    --enable/start the i2c_master component
	signal i2c_address : std_logic_vector(7 downto 0); --Ignore the MSB when connecting to i2c component
	signal i2c_data    : std_logic_vector(7 downto 0); --data to write
	signal i2c_busy    : std_logic;                    --is the i2c component busy?
	signal i2c_rw      : std_logic;
	signal addr        : std_logic_vector(7 downto 0);
	signal wr_done     : std_logic := '0'; -- Used for the system to decide if it is done writing or not
	signal read_en     : std_logic := '0'; -- To tell system if its in read only mode
    signal master_reset_n : std_logic;	
	
	begin

	state <= next_state;       -- Personal preference naming scheme
	cmd   <= data_i;           -- To make it more clear
	i2c_address <= x"48"; 	   -- Default ADC I2C Address

    master_reset_n <= (reset_n AND NOT cmd_change); --Reset Master if reset_n goes low, or if cmd_change goes high
	
	Inst_i2c_master : i2c_master
	generic map(
			input_clk => input_clk,	 			 --input clock speed from user logic in Hz
			bus_clk   => bus_clk)    			 --speed the i2c bus (scl) will run at in Hz	
	port map(
			clk       => clk_i,
			reset_n   => master_reset_n,
			ena       => i2c_enable,
			addr      => i2c_address(6 downto 0),
			rw        => i2c_rw,         
			data_wr   => i2c_data,
			busy      => i2c_busy,
			data_rd   => data_o,         
			ack_error => open,     -- Not Used
			sda       => sda,
			scl       => scl
		);
	
	-- Detect if the command to change ADC Channel changes
	 process(clk_i)
	 begin
	 	if rising_edge(clk_i) then
	 		prev_cmd <= cmd;
	 		if prev_cmd = cmd then
	 			cmd_change <= '0';
	 		else
	 			cmd_change <= '1';
	 		end if;
	 	end if;
	 end process;

	
	--Main State Machine
	--Process: Sends Write Address then Writes the commands as specified in the byteSel Case
	--Then Sends Read Address and constantly pulls data to data_o. 
	--This process repeats once the write command is changed, otherwise it reads forever
	process(clk_i) 
	begin
		if rising_edge(clk_i) then
			if master_reset_n = '0' then
				next_state  <= start; --move to the starting state
				-- View note in  busy high section of the FSM
				byteSel     <= 0;     --reset the counter
				i2c_enable  <= '0';
				i2c_rw      <= '0';   --Write Mode
				read_en      <= '0';   --Enable Reading = 1, this happens after first write 
				wr_done <= '0';   --Set to Write
			else
				case(state) is 
					when start =>
                        if read_en <= '0' then   -- If Writing
                            i2c_enable <= '0';   -- dont start transaction
                            i2c_rw     <= '0';   -- Write
                        else
                            i2c_rw     <= '1';   -- Read
                        end if;
                        next_state <= ready;
						
					when ready =>
						if i2c_busy = '0' then       --if we can go to the next transaction
							if read_en <= '0' then   -- If Writing
								i2c_enable <= '1';   --set the enable signal
							end if;
							next_state <= data_valid; --and move to the next state
						end if;
						
					when data_valid =>
						if i2c_busy = '1' then       --if the transaction has started
							if read_en <= '0' then   -- If Writing
								i2c_enable <= '0';   --reset the enable signal
							end if;
							next_state <= busy_high;  --and move to the next state
						end if;
						
					when busy_high => 
						if i2c_busy = '0' then       --once the i2c transaction has completed
							wr_done <= '1';          -- Indicate write done
							-- Note: If it is wanted to have a byteSel case statement to send multiple data bytes before constantly reading, simply 
						    -- Include the byteSel increment below.					
						    -- It is also most likely suggested to remove the command change functionality, but maybe not if some piece of data
						    -- in the case statement will be changed on the fly before continously reading.
						    -- MC => Added to main design, Comment out if not wanted.
							if byteSel < 7 then               --If we're not at the top (N = size of case statement)
                                byteSel     <= byteSel + 1;     --increment 
						        wr_done <= '0';             --Dont allow system to progress to read until all bytes are written
						    else                            --otherwise, this is a normal repeat
						        wr_done <= '1';             --Finally, allow system to continue and switch to reading only
						        byteSel <= 0;               --so go back to the beginning or start
						    end if;
							next_state <= repeat;    --move to the next state
						end if;
						
					when repeat =>
						if wr_done = '1' then --If Writing done
                          i2c_enable <= '1';  --Enable i2c
                          i2c_rw     <= '1';  --Read Only
                          read_en    <= '1';  --System Read Enable
                        end if;
						next_state <= start;
					end case;
			end if;
		end if;
	end process;

    -- View note in busy high section of the FSM, this is an example byteSel case statement
	-- Multiplexor for current byte
	process(clk_i)
	begin
		case byteSel is
			when 0      => i2c_data <= x"4" & cmd;    -- cmd is hex 0x0-0x3, selects one of the four analog inputs of the ADC;
			when 1      => i2c_data <= x"4" & cmd;    -- cmd is hex 0x0-0x3, selects one of the four analog inputs of the ADC;
			when 2      => i2c_data <= x"4" & cmd;    -- cmd is hex 0x0-0x3, selects one of the four analog inputs of the ADC;
			when 3      => i2c_data <= x"4" & cmd;    -- cmd is hex 0x0-0x3, selects one of the four analog inputs of the ADC;
			when 4      => i2c_data <= x"4" & cmd;    -- cmd is hex 0x0-0x3, selects one of the four analog inputs of the ADC;
			when 5      => i2c_data <= x"4" & cmd;    -- cmd is hex 0x0-0x3, selects one of the four analog inputs of the ADC;
			when 6      => i2c_data <= x"4" & cmd;    -- cmd is hex 0x0-0x3, selects one of the four analog inputs of the ADC;
			when 7      => i2c_data <= x"4" & cmd;    -- cmd is hex 0x0-0x3, selects one of the four analog inputs of the ADC;
			when others => i2c_data <= X"00";
		end case;
	end process;

end behavioral;