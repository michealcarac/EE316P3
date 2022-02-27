
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
            bus_clk   : INTEGER := 100000);   --speed the i2c bus (scl) will run at in Hz
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
	signal byteSel            : integer range 0 to 12 := 0;    --current byte to send
	signal read_toggle        : std_logic;
	
	--i2c master signals
	signal i2c_enable  : std_logic;                    --enable/start the i2c_master component
	signal i2c_address : std_logic_vector(7 downto 0); --Ignore the MSB when connecting to i2c component
	signal i2c_data    : std_logic_vector(7 downto 0); --data to write
	signal i2c_busy    : std_logic;                    --is the i2c component busy?
	signal i2c_rw      : std_logic;
	signal addr        : std_logic_vector(7 downto 0);
	
	begin
	state <= next_state;
	i2c_address <= x"48"; -- Only doing 1 address
	i2c_data <= x"4" & data_i;    -- Select one of the inputs

	
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
			ack_error => open,     -- To complicated
			sda       => sda,
			scl       => scl
		);
	
	--Main State Machine
	process(clk_i) 
	begin
		if rising_edge(clk_i) then
			if reset_n = '0' then
				next_state  <= start; --move to the starting state
				byteSel     <= 0;     --reset the counter
				read_toggle <= '0';   -- Initial State
				i2c_rw      <= '0';   --Write Mode
				read_en      <= '0';   --Enable Reading = 1, this happens after first write 
				first_write <= '0';   --Set to Write
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
							next_state <= repeat;     --move to the next state
						end if;
						
					when repeat =>
						if byteSel < 0 then               --If we're not at the top
							byteSel     <= byteSel + 1;     --increment 
						else                               --otherwise, this is a normal repeat
							byteSel <= 0;                   --so go back to the repeating bytes
						end if;
						if first_write = '0' then -- Change to read continous after first write
							i2c_rw <= '1'; -- Only read for now on
							read_en <= '1'; -- READ ONLY
							first_write <= '1';
						end if;
						next_state <= start;
					end case;
			end if;
		end if;
	end process;

	
end behavioral;