library work;
package Common is
  constant IPWM_DATA_WIDTH   : integer := 8;
  constant CLOCK_SPEED       : integer := 125000000; -- Clock speed in Hz
  constant CP_ns             : integer := 1/CLOCK_SPEED * 10**9; -- Clock period in nanoseconds
end Common;

package body Common is
  -- subprogram bodies here
end Common;