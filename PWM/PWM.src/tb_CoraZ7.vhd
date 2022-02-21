library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Common.all;

entity tb_CoraZ7 is
end tb_CoraZ7 ;

architecture tb of tb_CoraZ7 is
    signal clk      : std_logic;                                        -- 125 MHz input clock
    signal rst      : std_logic;                                        -- Input reset
    signal PWM_en   : std_logic;                                        -- Input for PWM enable
    signal PWM_data : std_logic_vector(IPWM_DATA_WIDTH-1 downto 0);     -- PWM data input
    signal PWM_out  : std_logic;                                        -- PWM signal out

begin
-- PORT MAP TO TOP_LEVEL ------------------------------------------------------
  DUT : entity work.CoraZ7
    port map (
      CLK       => clk,
      RESET     => rst,
      PWM_en    => PWM_en,
      PWM_data  => PWM_data,
      PWM       => PWM_out
    );

  clock_driver : process
  begin -- Clock rising edge every 8 ns for a 125MHz clock
	clk <= '1';
	wait for 4 ns;
	clk <= '0';
	wait for 4 ns;
  end process;
	
tb1 : process
begin
	-- BEGIN TEST CODE --
	
	wait;
end process;
end tb;