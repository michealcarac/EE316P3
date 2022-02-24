library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.Common.all;

entity PWM is
  generic(
    IDATA_WIDTH : integer := IPWM_DATA_WIDTH
  );
  port (
    --INS
    iClk 		    : in std_logic;
    iReset 	    : in std_logic := '0';
    iEn 	      : in std_logic;
    iData       : in std_logic_vector(IDATA_WIDTH-1 downto 0);
    
    --OUTS
    oPWM		    : out std_logic
  );
end PWM;

architecture Behavioral of PWM is

signal pwm      : std_logic;
signal counter  : integer range 0 to (2**IDATA_WIDTH - 1):= 0;

begin

oPWM <= pwm;

PWM_Process: process(iClk, iEn, iReset)
begin
  if (rising_edge(iClk)) then
    if (iEn = '1' and iReset = '0') then
      if (counter >= to_integer(unsigned(iData))) then
        pwm <= '0';
        counter <= counter + 1;
      else
        counter <= counter + 1;
        pwm <= '1';
      end if;
    else
      pwm <= '0';
      counter <= 0;
    end if;
  end if;
end process;


end Behavioral;