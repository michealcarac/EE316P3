library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

library work;
use work.Common.all;


entity vivado_tb_CoraZ7 is
end vivado_tb_CoraZ7 ;

architecture tb of vivado_tb_CoraZ7 is
  signal clk      : std_logic;                    -- 125 MHz input clock
  signal btn      : std_logic_vector(1 downto 0);
  signal ja       : std_logic_vector(7 downto 0);
  signal jb       : std_logic_vector(7 downto 0);

begin
-- PORT MAP TO TOP_LEVEL ------------------------------------------------------
  DUT : entity work.CoraZ7
    port map (
      clk => clk,
      btn => btn,
      ja  => ja,
      jb  => jb
    );

  clock_driver : process
  begin -- Clock rising edge every 8 ns for a 125MHz clock
    clk <= '1';
    wait for 4 ns;
    clk <= '0';
    wait for 4 ns;
  end process;
	
  main : process
  begin
    -- BEGIN TEST CODE --

    wait for 20*8 ns;

    btn(1) <= '1';
    wait for 20*8 ns;

    btn(1) <= '0';
    wait for 20*8 ns;

    btn(1) <= '1';
    wait for 20*8 ns;

    btn(1) <= '0';
    wait for 20*8 ns;

    btn(1) <= '1';
    wait for 20*8 ns;

    btn(1) <= '0';
    wait for 20*8 ns;


    

    wait for 1000*8 ns;
    wait for 2000 ms;
   

    --wait for 64*8 ns;
    --assert(PWM_out = '0') report "PWM did not go low" severity failure;

    wait;
  end process;
end tb;