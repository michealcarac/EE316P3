library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.Common.all;

entity pwm is
  port (
    --INS
    clk_i 		    : in std_logic;
    reset 	      : in std_logic;
    en 	          : in std_logic;
    data_i        : in std_logic_vector(IPWM_DATA_WIDTH-1 downto 0) := (others => '0');
    
    --OUTS
    pwm_o		      : out std_logic
  );
end pwm;

architecture Behavioral of pwm is

signal pwm_sig      : std_logic;
signal counter  : integer range 0 to (2**IPWM_DATA_WIDTH - 1):= 0;

begin

pwm_o <= pwm_sig;

pwm_process : process(clk_i, en, reset)
begin
  if (rising_edge(clk_i)) then
    if (en = '1' and reset = '0') then
      if (counter >= to_integer(unsigned(data_i))) then
        pwm_sig <= '0';
        counter <= counter + 1;
      else
        counter <= counter + 1;
        pwm_sig <= '1';
      end if;
    else
      pwm_sig <= '0';
      counter <= 0;
    end if;
  end if;
end process;


end Behavioral;