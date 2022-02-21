library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Common.all;

entity CoraZ7 is
  generic (
    N : integer := 8
  );

  port (
    CLK         : in std_logic;
    RESET       : in std_logic;
    PWM_en      : in std_logic;
    PWM_data    : in std_logic_vector(IPWM_DATA_WIDTH - 1 downto 0);

    PWM         : out std_logic
  );
end CoraZ7;

architecture Behavioral of CoraZ7 is

  component top_level is
    generic(
      IPWM_DATA_WIDTH : integer := N
    );
    port (
      -- INS
      iClk        : in std_logic;
      iReset      : in std_logic;
      iPWM_en     : in std_logic;
      iPWM_data   : in std_logic_vector(IPWM_DATA_WIDTH-1 downto 0);

      -- OUTS
      oPWM        : out std_logic
    );
  end component;

  begin


end Behavioral;