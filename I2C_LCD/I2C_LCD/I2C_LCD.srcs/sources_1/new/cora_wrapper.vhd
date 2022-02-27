library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.Common.all;

entity cora_wrapper is
    port(
    user_dio : inout std_logic_vector(11 downto 0);
    jb       : inout std_logic_vector(7 downto 0);
    ja       : inout std_logic_vector(7 downto 0);
    btn      : in std_logic_vector(1 downto 0);
    clk      : in std_logic);
end cora_wrapper;

architecture Behavioral of cora_wrapper is

component I2C_User_LCD is
        generic(
            input_clk : integer := CLOCK_SPEED;  -- System Clock Speed
            bus_clk   : integer := LCD_BUS_CLK); 
		port(
        clk_i       : in  std_logic; --Clock In
        reset_n     : in  std_logic; --Asynchronous Reset Active Low  
        selectMode	: in  std_logic_vector(3 downto 0); -- 00 = LDR, 01 = TEMP, 10 = ANALOG, 11 = POT
		clockOutput : in  std_logic;   					-- 0 = Blank, 1 = Display "Clock Output"
		
        SDA         : inout std_logic;   --Data/Address Line
        SCL         : inout std_logic    --Clock Line
	  );
end component;
signal btn_n : std_logic;
begin

btn_n <= not btn(0);
Inst_top_level: I2C_User_LCD
        generic map(
            input_clk => CLOCK_SPEED,   -- System Clock Speed
            bus_clk   => LCD_BUS_CLK) 
		port map (
			reset_n	=> btn_n,
			clk_i   => clk, 
			selectMode 	=> x"3",	
			clockOutput	=> '1',
			SDA     => ja(3),
			SCL     => ja(2)
		);


end Behavioral;
