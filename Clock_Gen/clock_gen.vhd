library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.MATH_REAL.ALL;

library work;

entity clock_gen is
    generic(data_width: integer := 8;
            input_clk : integer := 125_000_000;
            low_freq  : integer := 500;
            high_freq : integer := 1500);
	port(
		-- IN
		clk_i      	: in    std_logic;                     	--clock input
		reset_n     : in    std_logic;                     	--active-low reset
        data_i      : in    std_logic_vector(data_width-1 downto 0); -- N bit data in 

		-- INOUT
		clk_o       : out    std_logic
	);
end clock_gen;

architecture behavioral of clock_gen is

	--general signals
    constant length      : integer   := 2**data_width -1;   -- 2^width -1
    constant ratio       : integer   := integer(real(high_freq-low_freq)/real(length)); -- (low - high)/length to get a multiply ratio
    signal   clk_freq    : integer   := low_freq; -- low_freq to high_freq 
    signal   clk_divider : integer   := 0; -- Initial 0
    signal   count       : integer   := 0; -- Initial 0
    signal   temp        : std_logic := '0'; -- Initial '0'
	
	
	
	begin
	
	clk_freq <= low_freq + to_integer(unsigned(data_i))*ratio; -- low_freq to high_freq, low + data_i*ratio
	clk_divider <= input_clk/clk_freq; -- clk divider = input clk/clk_freq
	
    process(clk_i)
    begin 
        if reset_n = '0' then
            count <=  0;
            temp  <= '0';
        elsif rising_edge(clk_i) then
            count <= count + 1;
            if count > clk_divider/2 then
                temp  <= NOT temp;
                count <= 0;
            end if;
        end if;
        clk_o <= temp;
    end process;
      
end behavioral;