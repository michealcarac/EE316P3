
s
Command: %s
53*	vivadotcl2B
.synth_design -top CoraZ7 -part xc7z010clg400-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1973.023 ; gain = 153.719 ; free physical = 765 ; free virtual = 15585
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
CoraZ72default:default2Q
;/home/cameron/Projects/EE316P3/master/master.src/CoraZ7.vhd2default:default2
192default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	top_level2default:default2R
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
82default:default2"
inst_top_level2default:default2
	top_level2default:default2Q
;/home/cameron/Projects/EE316P3/master/master.src/CoraZ7.vhd2default:default2
422default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	top_level2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
282default:default8@Z8-638h px? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
i2c_user_lcd2default:default2U
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_lcd.vhd2default:default2
62default:default2%
inst_i2c_user_lcd2default:default2 
i2c_user_lcd2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
1772default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
i2c_user_lcd2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_lcd.vhd2default:default2
232default:default8@Z8-638h px? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

i2c_master2default:default2S
?/home/cameron/Projects/EE316P3/master/master.src/I2C_Master.vhd2default:default2
392default:default2#
Inst_i2c_master2default:default2

i2c_master2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_lcd.vhd2default:default2
832default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

i2c_master2default:default2U
?/home/cameron/Projects/EE316P3/master/master.src/I2C_Master.vhd2default:default2
572default:default8@Z8-638h px? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

i2c_master2default:default2
12default:default2
12default:default2U
?/home/cameron/Projects/EE316P3/master/master.src/I2C_Master.vhd2default:default2
572default:default8@Z8-256h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

first_line2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_lcd.vhd2default:default2
2172default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

selectMode2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_lcd.vhd2default:default2
2172default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
second_line2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_lcd.vhd2default:default2
2172default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
clockOutput2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_lcd.vhd2default:default2
2172default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
i2c_user_lcd2default:default2
22default:default2
12default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_lcd.vhd2default:default2
232default:default8@Z8-256h px? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
i2c_user_adc2default:default2U
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_adc.vhd2default:default2
72default:default2%
inst_i2c_user_adc2default:default2 
i2c_user_adc2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
1882default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
i2c_user_adc2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_adc.vhd2default:default2
222default:default8@Z8-638h px? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

i2c_master2default:default2S
?/home/cameron/Projects/EE316P3/master/master.src/I2C_Master.vhd2default:default2
392default:default2#
Inst_i2c_master2default:default2

i2c_master2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_adc.vhd2default:default2
702default:default8@Z8-3491h px? 
?
default block is never used226*oasys2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_adc.vhd2default:default2
1782default:default8@Z8-226h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
byteSel2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_adc.vhd2default:default2
1762default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
cmd2default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_adc.vhd2default:default2
1762default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
i2c_user_adc2default:default2
32default:default2
12default:default2W
A/home/cameron/Projects/EE316P3/master/master.src/i2c_user_adc.vhd2default:default2
222default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
pwm2default:default2L
8/home/cameron/Projects/EE316P3/master/master.src/PWM.vhd2default:default2
82default:default2
inst_pwm2default:default2
pwm2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
1992default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
pwm2default:default2N
8/home/cameron/Projects/EE316P3/master/master.src/PWM.vhd2default:default2
212default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
pwm2default:default2
42default:default2
12default:default2N
8/home/cameron/Projects/EE316P3/master/master.src/PWM.vhd2default:default2
212default:default8@Z8-256h px? 
_
%s
*synth2G
3	Parameter data_width bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter low_freq bound to: 500 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter high_freq bound to: 1500 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clock_gen2default:default2R
>/home/cameron/Projects/EE316P3/master/master.src/clock_gen.vhd2default:default2
82default:default2"
inst_clock_gen2default:default2
	clock_gen2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
2092default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	clock_gen2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/clock_gen.vhd2default:default2
252default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter data_width bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter low_freq bound to: 500 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter high_freq bound to: 1500 - type: integer 
2default:defaulth p
x
? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
reset_n2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/clock_gen.vhd2default:default2
402default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
en2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/clock_gen.vhd2default:default2
402default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
temp2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/clock_gen.vhd2default:default2
402default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	clock_gen2default:default2
52default:default2
12default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/clock_gen.vhd2default:default2
252default:default8@Z8-256h px? 
`
%s
*synth2H
4	Parameter CNTR_MAX bound to: 16'b1111111111111111 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
btn_debounce_toggle2default:default2\
H/home/cameron/Projects/EE316P3/master/master.src/btn_debounce_toggle.vhd2default:default2
332default:default2"
inst_reset_deb2default:default2'
btn_debounce_toggle2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
2202default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2'
btn_debounce_toggle2default:default2^
H/home/cameron/Projects/EE316P3/master/master.src/btn_debounce_toggle.vhd2default:default2
432default:default8@Z8-638h px? 
`
%s
*synth2H
4	Parameter CNTR_MAX bound to: 16'b1111111111111111 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
btn_debounce_toggle2default:default2
62default:default2
12default:default2^
H/home/cameron/Projects/EE316P3/master/master.src/btn_debounce_toggle.vhd2default:default2
432default:default8@Z8-256h px? 
`
%s
*synth2H
4	Parameter CNTR_MAX bound to: 16'b1111111111111111 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
btn_debounce_toggle2default:default2\
H/home/cameron/Projects/EE316P3/master/master.src/btn_debounce_toggle.vhd2default:default2
332default:default2(
inst_control_btn_deb2default:default2'
btn_debounce_toggle2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
2292default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Reset_Delay2default:default2T
@/home/cameron/Projects/EE316P3/master/master.src/reset_delay.vhd2default:default2
122default:default2$
inst_reset_delay2default:default2
Reset_Delay2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
2382default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
Reset_Delay2default:default2V
@/home/cameron/Projects/EE316P3/master/master.src/reset_delay.vhd2default:default2
212default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
Reset_Delay2default:default2
72default:default2
12default:default2V
@/home/cameron/Projects/EE316P3/master/master.src/reset_delay.vhd2default:default2
212default:default8@Z8-256h px? 
?
merging register '%s' into '%s'3619*oasys2+
adc_data_i_sig_reg[3:0]2default:default2/
lcd_selectMode_sig_reg[3:0]2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
1922default:default8@Z8-4471h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
adc_data_i_sig_reg2default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
1922default:default8@Z8-6014h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	top_level2default:default2
82default:default2
12default:default2T
>/home/cameron/Projects/EE316P3/master/master.src/top_level.vhd2default:default2
282default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
CoraZ72default:default2
92default:default2
12default:default2Q
;/home/cameron/Projects/EE316P3/master/master.src/CoraZ7.vhd2default:default2
192default:default8@Z8-256h px? 
?
!design %s has unconnected port %s3331*oasys2 
i2c_user_lcd2default:default2!
selectMode[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
i2c_user_lcd2default:default2!
selectMode[2]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[7]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[6]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[5]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[4]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[3]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
jb[7]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
jb[6]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
jb[5]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
jb[4]2default:defaultZ8-3331h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2027.773 ; gain = 208.469 ; free physical = 817 ; free virtual = 15606
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 2030.742 ; gain = 211.438 ; free physical = 817 ; free virtual = 15606
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 2030.742 ; gain = 211.438 ; free physical = 817 ; free virtual = 15606
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2\
F/home/cameron/Projects/EE316P3/master/master.src/Cora-Z7-10-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2\
F/home/cameron/Projects/EE316P3/master/master.src/Cora-Z7-10-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Z
F/home/cameron/Projects/EE316P3/master/master.src/Cora-Z7-10-Master.xdc2default:default2,
.Xil/CoraZ7_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2216.3672default:default2
0.0002default:default2
7192default:default2
155142default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2216.3672default:default2
0.0002default:default2
7192default:default2
155142default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 760 ; free virtual = 15587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z010clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 760 ; free virtual = 15587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 760 ; free virtual = 15587
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2

i2c_master2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
next_state_reg2default:default2 
i2c_user_adc2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2%
adc_state_sig_reg2default:default2
	top_level2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   ready |                        000000001 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                        000000010 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 command |                        000000100 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                slv_ack1 |                        000001000 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2s
_                      wr |                        000010000 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_                slv_ack2 |                        000100000 |                             0110
2default:defaulth p
x
? 
?
%s
*synth2s
_                      rd |                        001000000 |                             0101
2default:defaulth p
x
? 
?
%s
*synth2s
_                mstr_ack |                        010000000 |                             0111
2default:defaulth p
x
? 
?
%s
*synth2s
_                    stop |                        100000000 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2

i2c_master2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                            00001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   ready |                            00010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_              data_valid |                            00100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_               busy_high |                            01000 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                  repeat |                            10000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
next_state_reg2default:default2
one-hot2default:default2 
i2c_user_adc2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   reset |                            00001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                     ch0 |                            00010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                     ch1 |                            00100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                     ch2 |                            01000 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                     ch3 |                            10000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
adc_state_sig_reg2default:default2
one-hot2default:default2
	top_level2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 758 ; free virtual = 15585
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     31 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 41    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input    128 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input    128 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 20    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
?
%s
*synth2'
Module i2c_master 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
A
%s
*synth2)
Module i2c_user_lcd 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input    128 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input    128 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
A
%s
*synth2)
Module i2c_user_adc 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
? 
8
%s
*synth2 
Module pwm 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
>
%s
*synth2&
Module clock_gen 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     31 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 1     
2default:defaulth p
x
? 
H
%s
*synth20
Module btn_debounce_toggle 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
@
%s
*synth2(
Module Reset_Delay 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
>
%s
*synth2&
Module top_level 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[7]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[6]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[5]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[4]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
ja[3]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
jb[7]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
jb[6]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
jb[5]2default:defaultZ8-3331h px? 
z
!design %s has unconnected port %s3331*oasys2
CoraZ72default:default2
jb[4]2default:defaultZ8-3331h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[0]2default:default2
FDE2default:default2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[1]2default:default2
FDE2default:default2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[2]2default:default2
FDE2default:default2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[3]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[4]2default:default2
FDE2default:default2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[5]2default:default2
FDE2default:default2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[8]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2L
8\inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[6] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[9]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[10]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[17]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[11]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[16]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[17]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[23]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[18]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[20]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[20]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[21]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[21]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[22]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[22]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[24]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[23]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[25]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[25]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[26]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[26]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[27]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[27]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[28]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[28]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[29]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[29]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[30]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[30]2default:default2
FDE2default:default2K
7inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2M
9\inst_top_level/inst_i2c_user_lcd/lcd_delay_cnst_reg[31] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/data_tx_reg[3]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/data_tx_reg[1]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[5]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[7]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[0]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[4]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2U
A\inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[4] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[1]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[2]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[3]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[6]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2U
A\inst_top_level/inst_i2c_user_lcd/Inst_i2c_master/addr_rw_reg[6] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[7]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[6]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[5]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[4]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[3]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/data_tx_reg[2]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[6]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[7]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[1]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[2]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[3]2default:default2
FDE2default:default2S
?inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[5]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2U
A\inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2U
A\inst_top_level/inst_i2c_user_adc/Inst_i2c_master/addr_rw_reg[5] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 708 ; free virtual = 15571
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 611 ; free virtual = 15444
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 629 ; free virtual = 15419
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2\
Hinst_top_level/inst_i2c_user_lcd/Inst_i2c_master/FSM_onehot_state_reg[7]2default:default2
CoraZ72default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2\
Hinst_top_level/inst_i2c_user_lcd/Inst_i2c_master/FSM_onehot_state_reg[6]2default:default2
CoraZ72default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 628 ; free virtual = 15418
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 599 ; free virtual = 15421
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 599 ; free virtual = 15421
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 599 ; free virtual = 15421
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 599 ; free virtual = 15421
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 599 ; free virtual = 15421
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 599 ; free virtual = 15421
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |   202|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    13|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |   515|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    92|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |   147|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   133|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |   128|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |     1|
2default:defaulth px? 
D
%s*synth2,
|10    |FDCE   |    81|
2default:defaulth px? 
D
%s*synth2,
|11    |FDPE   |    12|
2default:defaulth px? 
D
%s*synth2,
|12    |FDRE   |   168|
2default:defaulth px? 
D
%s*synth2,
|13    |FDSE   |     2|
2default:defaulth px? 
D
%s*synth2,
|14    |IBUF   |     3|
2default:defaulth px? 
D
%s*synth2,
|15    |IOBUF  |     3|
2default:defaulth px? 
D
%s*synth2,
|16    |OBUF   |     3|
2default:defaulth px? 
D
%s*synth2,
|17    |OBUFT  |     6|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
m
%s
*synth2U
A+------+-------------------------+----------------------+------+
2default:defaulth p
x
? 
m
%s
*synth2U
A|      |Instance                 |Module                |Cells |
2default:defaulth p
x
? 
m
%s
*synth2U
A+------+-------------------------+----------------------+------+
2default:defaulth p
x
? 
m
%s
*synth2U
A|1     |top                      |                      |  1510|
2default:defaulth p
x
? 
m
%s
*synth2U
A|2     |  inst_top_level         |top_level             |  1494|
2default:defaulth p
x
? 
m
%s
*synth2U
A|3     |    inst_clock_gen       |clock_gen             |   658|
2default:defaulth p
x
? 
m
%s
*synth2U
A|4     |    inst_control_btn_deb |btn_debounce_toggle   |    49|
2default:defaulth p
x
? 
m
%s
*synth2U
A|5     |    inst_i2c_user_adc    |i2c_user_adc          |   347|
2default:defaulth p
x
? 
m
%s
*synth2U
A|6     |      Inst_i2c_master    |i2c_master_1          |   321|
2default:defaulth p
x
? 
m
%s
*synth2U
A|7     |    inst_i2c_user_lcd    |i2c_user_lcd          |   320|
2default:defaulth p
x
? 
m
%s
*synth2U
A|8     |      Inst_i2c_master    |i2c_master            |   164|
2default:defaulth p
x
? 
m
%s
*synth2U
A|9     |    inst_pwm             |pwm                   |    24|
2default:defaulth p
x
? 
m
%s
*synth2U
A|10    |    inst_reset_deb       |btn_debounce_toggle_0 |    45|
2default:defaulth p
x
? 
m
%s
*synth2U
A|11    |    inst_reset_delay     |Reset_Delay           |    36|
2default:defaulth p
x
? 
m
%s
*synth2U
A+------+-------------------------+----------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 598 ; free virtual = 15421
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 11 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2216.367 ; gain = 211.438 ; free physical = 654 ; free virtual = 15477
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 2216.367 ; gain = 397.062 ; free physical = 654 ; free virtual = 15477
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2062default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2223.3052default:default2
0.0002default:default2
6262default:default2
154172default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2k
W  A total of 3 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 3 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
942default:default2
322default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:312default:default2
00:00:342default:default2
2223.3052default:default2
628.1802default:default2
7222default:default2
155122default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2223.3052default:default2
0.0002default:default2
7222default:default2
155122default:defaultZ17-722h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2X
D/home/cameron/Projects/EE316P3/master/master.runs/synth_1/CoraZ7.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2v
bExecuting : report_utilization -file CoraZ7_utilization_synth.rpt -pb CoraZ7_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Mar  1 17:19:55 20222default:defaultZ17-206h px? 


End Record