-- This package is a collection of constants used throughout Project 3.
-- Using a package like this, global constants can be changed all from
-- one location.
--
-- To include the package in a vhd file, use the following statements:
--   library work;
--   use work.Common.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

library work;

package Common is
  constant CLOCK_SPEED        : integer := 125_000_000;                   -- input clock speed in Hz
  constant ADC_BUS_CLK        : integer := 90_000;                        -- lcd clock speed
end Common;

package body Common is
end Common;