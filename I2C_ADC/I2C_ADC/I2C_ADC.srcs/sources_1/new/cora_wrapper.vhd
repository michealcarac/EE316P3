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

component I2C_User is
		port(
        clk_i       : in  std_logic; --Clock In
        reset_n     : in  std_logic; --Asynchronous Reset Active Low  
        data_i      : in  std_logic_vector(3 downto 0);  --To be transmitted off master
		data_o      : out std_logic_vector(7 downto 0); --Read over I2C
        SDA         : inout std_logic;   --Data/Address Line
        SCL         : inout std_logic    --Clock Line
        -- If en is high at the conclsion of transaction, then a new address read/write command and data is latched
	  );
end component;
signal btn_n : std_logic;
begin

btn_n <= not btn(0);
Inst_top_level: I2C_User
		port map (
			reset_n	=> btn_n,
			clk_i   => clk, 
			data_i 	=> x"3",	
			data_o	=> open,
			SDA     => jb(3),
			SCL     => jb(2)
		);


end Behavioral;
