
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
?Placement Constraints Check for IO constraints: Partially locked IO Bus is found. Following components of the IO Bus %s are not locked:  %s%s*DRC2D
 ".
user_dio[11:0]user_dio2default:default2default:default2D
 ".
user_dio[0]user_dio[0]2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-3h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 1805c4d7d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 276 ; free virtual = 84202default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 1805c4d7d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 251 ; free virtual = 83952default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 1805c4d7d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 219 ; free virtual = 83622default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 1805c4d7d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 219 ; free virtual = 83622default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 184e8e9c4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:13 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 212 ; free virtual = 83562default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.796  | TNS=0.000  | WHS=-0.120 | THS=-2.361 |
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 179bebdfe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:13 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 212 ; free virtual = 83562default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 134ace2d8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 212 ; free virtual = 83552default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.574  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: e429d684
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: e429d684
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 5.1.1 Update Timing | Checksum: 8c9305f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.727  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: 8c9305f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: 8c9305f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: 8c9305f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 6.1.1 Update Timing | Checksum: cd49fec4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.727  | TNS=0.000  | WHS=0.183  | THS=0.000  |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: cf6860a1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: cf6860a1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 107568b1c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 107568b1c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1bc032363
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=2.727  | TNS=0.000  | WHS=0.183  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 1bc032363
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 211 ; free virtual = 83542default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:12 . Memory (MB): peak = 2861.676 ; gain = 0.000 ; free physical = 237 ; free virtual = 83802default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
712default:default2
52default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:182default:default2
00:00:152default:default2
2861.6762default:default2
68.3442default:default2
2372default:default2
83802default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2861.6762default:default2
0.0002default:default2
2372default:default2
83802default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
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
00:00:00.182default:default2
00:00:00.052default:default2
2861.6762default:default2
0.0002default:default2
2362default:default2
83812default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
o/home/spixy/Documents/College/EE316/EE316P3/EE316P3/I2C_LCD/I2C_LCD/I2C_LCD.runs/impl_1/cora_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
yExecuting : report_drc -file cora_wrapper_drc_routed.rpt -pb cora_wrapper_drc_routed.pb -rpx cora_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
lreport_drc -file cora_wrapper_drc_routed.rpt -pb cora_wrapper_drc_routed.pb -rpx cora_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
s/home/spixy/Documents/College/EE316/EE316P3/EE316P3/I2C_LCD/I2C_LCD/I2C_LCD.runs/impl_1/cora_wrapper_drc_routed.rpts/home/spixy/Documents/College/EE316/EE316P3/EE316P3/I2C_LCD/I2C_LCD/I2C_LCD.runs/impl_1/cora_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file cora_wrapper_methodology_drc_routed.rpt -pb cora_wrapper_methodology_drc_routed.pb -rpx cora_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file cora_wrapper_methodology_drc_routed.rpt -pb cora_wrapper_methodology_drc_routed.pb -rpx cora_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
/home/spixy/Documents/College/EE316/EE316P3/EE316P3/I2C_LCD/I2C_LCD/I2C_LCD.runs/impl_1/cora_wrapper_methodology_drc_routed.rpt/home/spixy/Documents/College/EE316/EE316P3/EE316P3/I2C_LCD/I2C_LCD/I2C_LCD.runs/impl_1/cora_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file cora_wrapper_power_routed.rpt -pb cora_wrapper_power_summary_routed.pb -rpx cora_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
|report_power -file cora_wrapper_power_routed.rpt -pb cora_wrapper_power_summary_routed.pb -rpx cora_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
832default:default2
52default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2y
eExecuting : report_route_status -file cora_wrapper_route_status.rpt -pb cora_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file cora_wrapper_timing_summary_routed.rpt -pb cora_wrapper_timing_summary_routed.pb -rpx cora_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
%s4*runtcl2i
UExecuting : report_incremental_reuse -file cora_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2i
UExecuting : report_clock_utilization -file cora_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file cora_wrapper_bus_skew_routed.rpt -pb cora_wrapper_bus_skew_routed.pb -rpx cora_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record