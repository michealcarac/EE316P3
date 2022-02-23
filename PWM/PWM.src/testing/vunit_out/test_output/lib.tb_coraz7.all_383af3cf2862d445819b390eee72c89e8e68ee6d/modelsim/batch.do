onerror {quit -code 1}
source "C:/EE316P3/PWM/PWM.src/testing/vunit_out/test_output/lib.tb_coraz7.all_383af3cf2862d445819b390eee72c89e8e68ee6d/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
