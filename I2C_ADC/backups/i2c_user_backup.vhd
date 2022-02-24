
library ieee;
use ieee.std_logic_1164.all;

library work;

entity i2c_user is
	port(
		clk_i    : in    std_logic;                     --clock input
		reset_n  : in    std_logic;                     --active-low reset
		data_i 	 : in    std_logic_vector(3 downto 0); -- Data to be sent
		data_o 	 : out   std_logic_vector(7 downto 0);  -- Data to be read
		
		sda      : inout std_logic;                     --i2c data
		scl      : inout std_logic                      --i2c clock
	);
end i2c_user;

architecture behavioral of i2c_user is
	component i2c_master is
		GENERIC(
			input_clk : INTEGER := 125_000_000; --input clock speed from user logic in Hz
            bus_clk   : INTEGER := 90000);   --speed the i2c bus (scl) will run at in Hz
		PORT(
			clk       : IN     STD_LOGIC;                    --system clock
			reset_n   : IN     STD_LOGIC;                    --active low reset
			ena       : IN     STD_LOGIC;                    --latch in command
			addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
			rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
			data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
			busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
			data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
			ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
			sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
			scl       : INOUT  STD_LOGIC);                   --serial clock output of i2c bus
	END component;

	--general signals
	type stateType is (start, ready, data_valid, busy_high, repeat);
	signal state, next_state  : stateType := start;            --state machine vars
	signal cmd                : std_logic_vector(3 downto 0);
	signal prev_cmd           : std_logic_vector(3 downto 0);
	signal cmd_change         : std_logic;
	-- View note in repeat section of the FSM
	--signal byteSel            : integer range 0 to N := 0;    --current byte to send (Change the N value)
	
	
	--i2c master signals
	signal i2c_enable  : std_logic;                    --enable/start the i2c_master component
	signal i2c_address : std_logic_vector(7 downto 0); --Ignore the MSB when connecting to i2c component
	signal i2c_data    : std_logic_vector(7 downto 0); --data to write
	signal i2c_busy    : std_logic;                    --is the i2c component busy?
	signal i2c_rw      : std_logic;
	signal addr        : std_logic_vector(7 downto 0);
	signal wr_done  : std_logic := '0'; -- Used for the system to decide if it is done writing or not
	signal read_en     : std_logic := '0'; -- To tell system if its in read only mode
	
	begin

	state <= next_state;       -- Personal preference naming scheme
	cmd   <= data_i;           -- To make it more clear
	i2c_address <= x"48"; 	   -- Default ADC I2C Address
	i2c_data <= x"4" & cmd;    -- cmd is hex 0x0-0x3, selects one of the four analog inputs of the ADC

	
	Inst_i2c_master : i2c_master
		port map(
			clk       => clk_i,
			reset_n   => reset_n,
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
	--Process: Sends Write Address then Writes the command
	--Then Sends Read Address and constantly pulls data to data_o. 
	--This process repeats once the write command is changed, otherwise it reads forever
	process(clk_i) 
	begin
		if rising_edge(clk_i) then
			if reset_n = '0' or cmd_change = '1' then
				next_state  <= start; --move to the starting state
				-- View note in repeat section of the FSM
				--byteSel     <= 0;     --reset the counter
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
                            i2c_enable <= '1';
                        end if;
                        next_state <= ready;
						
					when ready =>
						if i2c_busy = '0' then       --if we can go to the next transaction
							if read_en <= '0' then   -- If Writing
								i2c_enable <= '1';   --set the enable signal
                            else
                                i2c_enable <= '0';
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
							wr_done <= '1';  -- Indicate write done
							next_state <= repeat;     --move to the next state
						end if;
						
					when repeat =>
						-- Note: If it is wanted to have a byteSel case statement to send multiple data bytes before constantly reading, simply 
						-- Include the byteSel increment with this added functionality:
						-- if byteSel < N then               --If we're not at the top (N = size of case statement)
						--	  byteSel     <= byteSel + 1;     --increment 
						--    wr_done <= '0';             --Dont allow system to progress to read until all bytes are written
						-- else                               --otherwise, this is a normal repeat
						--    wr_done <= '1;              --Finally, allow system to continue and switch to reading only
						--    byteSel <= 0;                   --so go back to the beginning or start
						-- end if;
						-- It is also most likely suggested to remove the command change functionality, but maybe not if some piece of data
						-- in the case statement will be changed on the fly before continously reading. You will also need to uncomment this and
						-- Multiple other areas marked "View note in repeat section of the FSM"
						if wr_done = '1' then
                          i2c_enable <= '1';
                          i2c_rw     <= '1';
                          read_en    <= '1';
                        end if;
						next_state <= start;
					end case;
			end if;
		end if;
	end process;

    -- View note in repeat section of the FSM, this is an example byteSel case statement
	-- --Multiplexor for current byte
	-- process(byteSel, data_hex)
	-- begin
	-- 	case byteSel is
	-- 		when 0      => i2c_data <= X"76";
	-- 		when 1      => i2c_data <= X"76";
	-- 		when 2      => i2c_data <= X"76";
	-- 		when 3      => i2c_data <= X"7A";
	-- 		when 4      => i2c_data <= X"FF";
	-- 		when 5      => i2c_data <= X"77";
	-- 		when 6      => i2c_data <= X"00";
	-- 		when 7      => i2c_data <= X"79"; --Repeat here
	-- 		when 8      => i2c_data <= X"00";
	-- 		when 9      => i2c_data <= X"0"&data_disp(15 downto 12);
	-- 		when 10     => i2c_data <= X"0"&data_disp(11 downto 8);
	-- 		when 11     => i2c_data <= X"0"&data_disp(7  downto 4);
	-- 		when 12     => i2c_data <= X"0"&data_disp(3  downto 0);
	-- 		when others => i2c_data <= X"76";
	-- 	end case;
	-- end process;

end behavioral;