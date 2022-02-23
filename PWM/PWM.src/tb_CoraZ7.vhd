library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.Common.all;

-- VUnit library and context
library vunit_lib;
context vunit_lib.vunit_context;

-- use vunit_lib.types_pkg.all;
-- use vunit_lib.integer_vector_ptr_pkg.all;
-- use vunit_lib.integer_vector_ptr_pool_pkg.all;
-- use vunit_lib.integer_array_pkg.all;
-- use vunit_lib.queue_pkg.all;
-- use vunit_lib.queue_pool_pkg.all;
-- use vunit_lib.string_ptr_pkg.all;
-- use vunit_lib.string_ptr_pool_pkg.all;
-- use vunit_lib.byte_vector_ptr_pkg.all;
-- use vunit_lib.dict_pkg.all;

-- use vunit_lib.string_ops.all;
-- use vunit_lib.dictionary.all;
-- use vunit_lib.path.all;
-- use vunit_lib.print_pkg.all;
-- use vunit_lib.log_levels_pkg.all;
-- use vunit_lib.logger_pkg.all;
-- use vunit_lib.log_handler_pkg.all;
-- use vunit_lib.log_deprecated_pkg.all;
-- use vunit_lib.ansi_pkg.all;
-- use vunit_lib.checker_pkg.all;
-- use vunit_lib.check_pkg.all;
-- use vunit_lib.check_deprecated_pkg.all;
-- use vunit_lib.run_types_pkg.all;
-- use vunit_lib.run_pkg.all;
-- use vunit_lib.run_deprecated_pkg.all;

entity tb_CoraZ7 is
  generic (runner_cfg : string);
end tb_CoraZ7 ;

architecture tb of tb_CoraZ7 is
  signal clk      : std_logic;                                        -- 125 MHz input clock
  signal rst      : std_logic;                                        -- Input reset
  signal PWM_en   : std_logic;                                        -- Input for PWM enable
  signal PWM_data : std_logic_vector(8-1 downto 0);     -- PWM data input
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
	
  main : process
  begin
    -- BEGIN TEST CODE --
    -- VUnit Code
    test_runner_setup(runner, runner_cfg);
    report "Hello world!";
    test_runner_cleanup(runner);

    rst <= '1';
    wait for 16 ns;
    PWM_data <= X"80"; 
    
    wait;
  end process;
end tb;