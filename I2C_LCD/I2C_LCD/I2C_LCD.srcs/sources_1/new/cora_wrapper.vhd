----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2022 12:06:59 AM
-- Design Name: 
-- Module Name: cora_wrapper - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
            input_clk : integer := 125_000_000;  -- System Clock Speed
            bus_clk   : integer := 90_000);      -- bus_clk/9 = I2C_ADC Sampling Rate (9 bits per read) (1 start (Low), 7 data, 1 stop (High))
		port(
        clk_i       : in  std_logic; --Clock In
        reset_n     : in  std_logic; --Asynchronous Reset Active Low  
        selectMode	: in  std_logic_vector(3 downto 0); -- 00 = LDR, 01 = TEMP, 10 = ANALOG, 11 = POT
		clockOutput : in  std_logic;   					-- 0 = Blank, 1 = Display "Clock Output"
		
        SDA         : inout std_logic;   --Data/Address Line
        SCL         : inout std_logic    --Clock Line
        -- If en is high at the conclsion of transaction, then a new address read/write command and data is latched
	  );
end component;
signal btn_n : std_logic;
begin

btn_n <= not btn(0);
Inst_top_level: I2C_User_LCD
        generic map(
            input_clk => 125_000_000,   -- System Clock Speed
            bus_clk   => 90_000)        -- bus_clk/9 = I2C_ADC Sampling Rate (9 bits per read) (1 start (Low), 7 data, 1 stop (High))
		port map (
			reset_n	=> btn_n,
			clk_i   => clk, 
			selectMode 	=> x"3",	
			clockOutput	=> '1',
			SDA     => ja(3),
			SCL     => ja(2)
		);


end Behavioral;
