-- This package is a collection of constants used throughout Project 3.
-- Using a package like this, global constants can be changed all from
-- one location.
--
-- To include the package in a vhd file, use the following statements:
--   library work;
--   use work.Common.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;

package Common is
  constant IPWM_DATA_WIDTH    : integer := 8;
  constant CLOCK_SPEED        : integer := 125_000_000;                   -- input clock speed in Hz
  constant CP_ns              : integer := 1/CLOCK_SPEED * 10**9;         -- input clock period in nanoseconds
  constant LCD_BUS_CLK        : integer := 50_000;                        -- lcd clock speed
  constant ADC_BUS_CLK        : integer := 90_000;                        -- adc clock speed
  constant DEBOUNCE_COUNT_MAX : std_logic_vector(15 downto 0) := X"000F"; -- button debouncer counter max, X"000F" for sim, X"FFFF" for impl

  type adc_state is (ch0, ch1, ch2, ch3);
end Common;

package body Common is
end Common;