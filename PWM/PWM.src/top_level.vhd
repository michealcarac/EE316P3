library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.Common.all;

entity top_level is
  port (
    -- INS
    iClk        : in std_logic;
    iReset      : in std_logic;
    iPWM_en     : in std_logic;
    iPWM_data   : in std_logic_vector(IPWM_DATA_WIDTH-1 downto 0);

    -- OUTS
    oPWM        : out std_logic
  );
end top_level;

architecture Behavioral of top_level is

  component PWM is
    generic(
      IDATA_WIDTH : integer := IPWM_DATA_WIDTH
    );
    port (
      --INS
      iClk 		  : in std_logic;
      iReset 	  : in std_logic := '0';
      iEn 	    : in std_logic;
      iData     : in std_logic_vector(IDATA_WIDTH-1 downto 0);
      
      --OUTS
      oPWM		  : out std_logic
    );
  
  end component;

begin
  Inst_PWM : PWM
    port map(
      iClk      => iClk,
      iReset    => iReset,
      iEn       => iPWM_en,
      iData     => iPWM_data,
      oPWM      => oPWM
    );



end Behavioral;
