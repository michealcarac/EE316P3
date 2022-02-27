library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

library work;
use work.Common.all;

entity top_level is
  port (
    -- INS
    iClk        : in std_logic;
    iReset      : in std_logic;    -- BTN(0), active high
    iControlBtn : in std_logic;    -- BTN(1), active high

    -- OUTS
    oPWM        : out std_logic;   -- Tie this to a regular output pin
    oPWM_LP     : out std_logic;   -- Tie this to an output pin that leads to the low-pass filter (used when ADC CH2 is being read)

    -- INOUTS
    LCD_SDA     : inout std_logic;
    LCD_SCL     : inout std_logic;
    ADC_SDA     : inout std_logic;
    ADC_SCL     : inout std_logic
  );
end top_level;

architecture Behavioral of top_level is

  component i2c_user_lcd is
    generic(
        input_clk : integer := CLOCK_SPEED;
        bus_clk   : integer := LCD_BUS_CLK
	  );
	  port(
      -- IN
      clk_i      	: in    std_logic;                     	-- clock input
      reset_n     : in    std_logic;                     	-- active-high reset
      selectMode	: in    std_logic_vector(3 downto 0); 	-- 0x0 = LDR, 0x1 = TEMP, 0x2 = ANALOG, 0x3 = POT
      clockOutput : in    std_logic;   					          -- 0 = Blank, 1 = Display "Clock Output"

      -- INOUT
      sda      	  : inout std_logic;                     	-- i2c data
      scl      	  : inout std_logic                      	-- i2c clock
	  );
  end component;

  component i2c_user_adc is
    generic(
      input_clk : integer := CLOCK_SPEED;
      bus_clk   : integer := ADC_BUS_CLK
	  );
	  port(
      clk_i     : in    std_logic;                     -- clock input
      reset_n   : in    std_logic;                     -- active-low reset
      data_i 	  : in    std_logic_vector(3 downto 0);  -- Data to be sent. 0x0 = CH0(LDR), 0x1 = CH1(TEMP), 0x2 = CH2(ANALOG), 0x3 = CH3(POT)
      data_o 	  : out   std_logic_vector(7 downto 0);  -- Data to be read
       
      sda       : inout std_logic;                     -- i2c data
      scl       : inout std_logic                      -- i2c clock
	  );
  end component;

  component pwm is
    generic(
      IDATA_WIDTH : integer := IPWM_DATA_WIDTH
    );
    port (
      --INS
      clk_i 		  : in std_logic;
      reset 	    : in std_logic := '0';
      en 	        : in std_logic;
      data_i      : in std_logic_vector(IDATA_WIDTH-1 downto 0);
      
      --OUTS
      pwm_o		    : out std_logic
    );
  
  end component;

  component btn_debounce_toggle is
    generic(
      constant CNTR_MAX : unsigned(15 downto 0) := DEBOUNCE_COUNT_MAX
    );
    port ( 
      BTN_I 	 : in  std_logic;
      CLK 		 : in  std_logic;
      BTN_O 	 : out  std_logic;
			pulse_O  : out std_logic;
      TOGGLE_O : out  std_logic
    );
  end component;

  -- general signals
  signal reset_sig   : std_logic;
  signal reset_n_sig : std_logic;

  -- lcd signals
  signal lcd_selectMode_sig  : std_logic_vector(3 downto 0);
  signal lcd_clockOutput_sig : std_logic;
  signal lcd_sda_sig         : std_logic;
  signal lcd_scl_sig         : std_logic;
  
  -- adc signals
  signal adc_data_i_sig      : std_logic_vector(3 downto 0);
  signal adc_data_o_sig      : std_logic_vector(7 downto 0);
  signal adc_sda_sig         : std_logic;
  signal adc_scl_sig         : std_logic;

  -- pwm signals
  signal pwm_en_sig          : std_logic := '1';
  signal pwm_data_i_sig      : std_logic_vector(IPWM_DATA_WIDTH-1 downto 0);
  signal pwm_o_sig           : std_logic;

  -- FSM & control signals
  signal adc_state_sig       : adc_state := ch0;
  signal clock_gen_state_sig : std_logic := '0';      -- '0' = clock gen off, '1' = clock gen on
  signal control_btn_sig     : std_logic;             -- signal for BTN(1)
  

begin
  -- permanent signal ties
  reset_n_sig  <= not reset_sig;              -- create an active low reset for some components
  pwm_data_i_sig <= adc_data_o_sig;           -- tie adc data output to pwm data input
  lcd_clockOutput_sig <= clock_gen_state_sig; -- tie the clock gen state to the lcd's clock gen message output
  LCD_SDA <= lcd_sda_sig;
  LCD_SCL <= lcd_scl_sig;
  ADC_SDA <= adc_sda_sig;
  ADC_SCL <= adc_scl_sig;

  inst_i2c_user_lcd : i2c_user_lcd
    port map(
      clk_i       => iClk,
      reset_n     => reset_n_sig,
      selectMode  => lcd_selectMode_sig,
      clockOutput => lcd_clockOutput_sig,

      sda         => lcd_sda_sig,
      scl         => lcd_scl_sig
    );
  
  inst_i2c_user_adc : i2c_user_adc
    port map(
      clk_i    => iClk,
      reset_n  => reset_n_sig,
      data_i 	 => adc_data_i_sig,
      data_o 	 => adc_data_o_sig,
      
      sda      => adc_sda_sig,
      scl      => adc_scl_sig
    );

  inst_pwm : pwm
    port map(
      clk_i      => iClk,
      reset      => reset_sig,
      en         => pwm_en_sig,
      data_i     => pwm_data_i_sig,

      pwm_o      => pwm_o_sig
    );

  inst_reset_deb : btn_debounce_toggle
    port map(
      BTN_I     => iReset,
      CLK 	    => iClk,
      BTN_O     => reset_sig,
			pulse_O   => open,
      TOGGLE_O  => open
    );

  inst_control_btn_deb : btn_debounce_toggle
    port map(
      BTN_I    => iControlBtn,
      CLK      => iClk,
      BTN_O    => control_btn_sig,
      pulse_O  => open,
      TOGGLE_O => clock_gen_state_sig
    );

  
  adc_state_process : process(iClk, control_btn_sig)
  begin
    if (iClk'EVENT and iClk = '1' and control_btn_sig = '1') then
      case adc_state_sig is
        when ch0 => adc_state_sig <= ch1;
        when ch1 => adc_state_sig <= ch2;
        when ch2 => adc_state_sig <= ch3;
        when ch3 => adc_state_sig <= ch0;
    
      end case;
    end if;
  end process;

  update_process : process(iClk, adc_state_sig)
  begin
    if (iClk'EVENT and iClk = '1') then
      case adc_state_sig is
        when ch0 =>
          lcd_selectMode_sig <= X"0";
          adc_data_i_sig <= X"0";
          oPWM <= pwm_o_sig;
        when ch1 =>
          lcd_selectMode_sig <= X"1";
          adc_data_i_sig <= X"1";
          oPWM <= pwm_o_sig;
        when ch2 =>
          lcd_selectMode_sig <= X"2";
          adc_data_i_sig <= X"2";
          oPWM_LP <= pwm_o_sig;
        when ch3 =>
          lcd_selectMode_sig <= X"3";
          adc_data_i_sig <= X"3";
          oPWM <= pwm_o_sig;

      end case;
    end if;


  end process;

end Behavioral;
