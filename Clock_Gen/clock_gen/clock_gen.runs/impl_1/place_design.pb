
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2725.3092default:default2
0.0002default:default2
1392default:default2
60742default:defaultZ17-722h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: e0449716
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.04 . Memory (MB): peak = 2725.309 ; gain = 0.000 ; free physical = 139 ; free virtual = 60742default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2725.3092default:default2
0.0002default:default2
1392default:default2
60742default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: ef21bb80
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.48 ; elapsed = 00:00:00.28 . Memory (MB): peak = 2749.320 ; gain = 24.012 ; free physical = 132 ; free virtual = 60602default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 12e29e7f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.55 ; elapsed = 00:00:00.35 . Memory (MB): peak = 2749.320 ; gain = 24.012 ; free physical = 134 ; free virtual = 60602default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 12e29e7f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.55 ; elapsed = 00:00:00.35 . Memory (MB): peak = 2749.320 ; gain = 24.012 ; free physical = 134 ; free virtual = 60612default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 12e29e7f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.55 ; elapsed = 00:00:00.35 . Memory (MB): peak = 2749.320 ; gain = 24.012 ; free physical = 134 ; free virtual = 60612default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 12e29e7f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.56 ; elapsed = 00:00:00.36 . Memory (MB): peak = 2749.320 ; gain = 24.012 ; free physical = 134 ; free virtual = 60612default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px? 
K
6Phase 2.2 Global Placement Core | Checksum: 1b6cacfcb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.72 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 130 ; free virtual = 60582default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1b6cacfcb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.72 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 130 ; free virtual = 60582default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1b6cacfcb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.73 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 130 ; free virtual = 60582default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 2284acb27
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.82 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 128 ; free virtual = 60562default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1db40c760
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.83 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 128 ; free virtual = 60562default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1db40c760
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.83 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 128 ; free virtual = 60562default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 1e3d6b8a7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.94 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 131 ; free virtual = 60542default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 1e3d6b8a7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.99 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 129 ; free virtual = 60522default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 1e3d6b8a7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.99 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 129 ; free virtual = 60532default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1e3d6b8a7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 129 ; free virtual = 60522default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1e3d6b8a7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 129 ; free virtual = 60522default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1e3d6b8a7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 129 ; free virtual = 60532default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 1e3d6b8a7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 129 ; free virtual = 60522default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2781.3362default:default2
0.0002default:default2
1292default:default2
60522default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1c609d910
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 129 ; free virtual = 60532default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1c609d910
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 129 ; free virtual = 60532default:defaulth px? 
>
)Ending Placer Task | Checksum: 17f20a8db
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2781.336 ; gain = 56.027 ; free physical = 129 ; free virtual = 60532default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
402default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2781.3362default:default2
0.0002default:default2
1292default:default2
60532default:defaultZ17-722h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.272default:default2
00:00:00.212default:default2
2781.3362default:default2
0.0002default:default2
1272default:default2
60482default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
r/home/spixy/Documents/College/EE316/EE316P3/EE316P3/Clock_Gen/clock_gen/clock_gen.runs/impl_1/clock_gen_placed.dcp2default:defaultZ17-1381h px? 
d
%s4*runtcl2H
4Executing : report_io -file clock_gen_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.09 ; elapsed = 00:00:00.16 . Memory (MB): peak = 2781.336 ; gain = 0.000 ; free physical = 135 ; free virtual = 6030
*commonh px? 
?
%s4*runtcl2~
jExecuting : report_utilization -file clock_gen_utilization_placed.rpt -pb clock_gen_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2e
QExecuting : report_control_sets -verbose -file clock_gen_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.11 . Memory (MB): peak = 2781.336 ; gain = 0.000 ; free physical = 134 ; free virtual = 6030
*commonh px? 


End Record