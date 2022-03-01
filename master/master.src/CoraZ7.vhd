library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.Common.all;

entity CoraZ7 is
  port (
    clk         : in std_logic;
    btn         : in std_logic_vector(1 downto 0); 

    ja          : out std_logic_vector(7 downto 0);
    
    jb          : inout std_logic_vector(7 downto 0)

  );
end CoraZ7;

architecture Behavioral of CoraZ7 is

  component top_level is
    port (
      -- INS
    iClk        : in std_logic;
    iReset      : in std_logic;    -- BTN(0), active high
    iControlBtn : in std_logic;    -- BTN(1), active high

    -- OUTS
    oPWM        : out std_logic;   -- Tie this to a regular output pin
    oPWM_LP     : out std_logic;   -- Tie this to an output pin that leads to the low-pass filter (used when ADC CH2 is being read)
    oClk_gen    : out std_logic;   -- Clock generation output

    -- INOUTS
    LCD_SDA     : inout std_logic;
    LCD_SCL     : inout std_logic;
    ADC_SDA     : inout std_logic;
    ADC_SCL     : inout std_logic
    );
  end component;

  begin
  inst_top_level : top_level
		port map(
			-- INS
      iClk        => clk,
      iReset      => btn(0),
      iControlBtn => btn(1),
  
      -- OUTS
      oPWM        => ja(0),
      oPWM_LP     => ja(1),
      oClk_gen    => ja(2),
  
      -- INOUTS
      LCD_SDA     => jb(0),
      LCD_SCL     => jb(1),
      ADC_SDA     => jb(2),
      ADC_SCL     => jb(3) 

		);

end Behavioral;