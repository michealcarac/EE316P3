library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

library work;
use work.Common.all;

-- VUnit library and context
library vunit_lib;
--context vunit_lib.vunit_context;

-- VUnit use statements (instead of above context statement - context only works in later versions of VHDL)
use vunit_lib.types_pkg.all;
use vunit_lib.integer_vector_ptr_pkg.all;
use vunit_lib.integer_vector_ptr_pool_pkg.all;
use vunit_lib.integer_array_pkg.all;
use vunit_lib.queue_pkg.all;
use vunit_lib.queue_pool_pkg.all;
use vunit_lib.string_ptr_pkg.all;
use vunit_lib.string_ptr_pool_pkg.all;
use vunit_lib.byte_vector_ptr_pkg.all;
use vunit_lib.dict_pkg.all;

use vunit_lib.string_ops.all;
use vunit_lib.dictionary.all;
use vunit_lib.path.all;
use vunit_lib.print_pkg.all;
use vunit_lib.log_levels_pkg.all;
use vunit_lib.logger_pkg.all;
use vunit_lib.log_handler_pkg.all;
use vunit_lib.log_deprecated_pkg.all;
use vunit_lib.ansi_pkg.all;
use vunit_lib.checker_pkg.all;
use vunit_lib.check_pkg.all;
use vunit_lib.check_deprecated_pkg.all;
use vunit_lib.run_types_pkg.all;
use vunit_lib.run_pkg.all;
use vunit_lib.run_deprecated_pkg.all;

entity tb_CoraZ7 is
  generic (
    runner_cfg : string -- Necessary generic for VUnit
  );  
end tb_CoraZ7 ;

architecture tb of tb_CoraZ7 is
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
    test_runner_setup(runner, runner_cfg);  -- VUnit begin
    
    btn(0) <= '1';
    wait for 20*8 ns;

    btn(0) <= '0';
    wait for 20*8 ns;

    wait for 50*8 ns;
   

    --wait for 64*8 ns;
    --assert(PWM_out = '0') report "PWM did not go low" severity failure;

    

    test_runner_cleanup(runner);  -- VUnit end
    wait;
  end process;
end tb;