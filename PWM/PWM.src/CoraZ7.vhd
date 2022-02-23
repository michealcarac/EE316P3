library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
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
  inst_top_level : top_level
		port map(
			iClk => CLK,
			iReset => RESET,
			iPWM_en => PWM_en,
			iPWM_data => PWM_data,
			oPWM => PWM

		);

end Behavioral;