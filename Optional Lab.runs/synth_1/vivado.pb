
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:072	
474.2812	
182.262Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {C:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/utils_1/imports/synth_1/Control_Unit.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2s
qC:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/utils_1/imports/synth_1/Control_Unit.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
o
Command: %s
53*	vivadotcl2>
<synth_design -top MulticycleCalculator -part xc7z010clg400-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z010Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z010Z17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
7608Z8-7075h px� 
�
%s*synth2u
sStarting Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 926.625 ; gain = 438.188
h px� 
�
synthesizing module '%s'638*oasys2
MulticycleCalculator2h
dC:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/Top_Level.vhd2
378@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
Instruction_Memory2j
fC:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/Instruction.vhd2
328@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Instruction_Memory2
02
12j
fC:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/Instruction.vhd2
328@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
Control_Unit2k
gC:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/Control_Unit.vhd2
358@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Control_Unit2
02
12k
gC:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/Control_Unit.vhd2
358@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
Register_File2b
^C:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/Reg.vhd2
378@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Register_File2
02
12b
^C:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/Reg.vhd2
378@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
ALU2b
^C:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/ALU.vhd2
348@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
result2b
^C:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/ALU.vhd2
368@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2
02
12b
^C:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/ALU.vhd2
348@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MulticycleCalculator2
02
12h
dC:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.srcs/sources_1/new/Top_Level.vhd2
378@Z8-256h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
Register_FileZ8-7129h px� 
�
%s*synth2v
tFinished Synthesize : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1033.715 ; gain = 545.277
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1033.715 ; gain = 545.277
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z010clg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1033.715 ; gain = 545.277
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
Loading part %s157*device2
xc7z010clg400-1Z21-403h px� 
x
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
Control_UnitZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                      id |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_                     exe |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                      wb |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2	
one-hot2
Control_UnitZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1033.715 ; gain = 545.277
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	  33 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(CtrlUnit/FSM_onehot_current_state_reg[2]2
MulticycleCalculatorZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(CtrlUnit/FSM_onehot_current_state_reg[1]2
MulticycleCalculatorZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(CtrlUnit/FSM_onehot_current_state_reg[0]2
MulticycleCalculatorZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |OBUF |     8|
h px� 
0
%s*synth2
+------+-----+------+
h px� 
3
%s
*synth2

Report Instance Areas: 
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
<
%s
*synth2$
"|      |Instance |Module |Cells |
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
<
%s
*synth2$
"|1     |top      |       |     8|
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1218.828 ; gain = 730.391
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1218.828 ; gain = 730.391
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1218.828 ; gain = 730.391
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1219.7112
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1324.0782
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

4caff877Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
262
62
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:202

00:00:242

1324.0782	
841.281Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1324.0782
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2k
iC:/Users/biged/OneDrive/Documents/CPEG324/Optional Lab/Optional Lab.runs/synth_1/MulticycleCalculator.dcpZ17-1381h px� 
�
%s4*runtcl2�
~Executing : report_utilization -file MulticycleCalculator_utilization_synth.rpt -pb MulticycleCalculator_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed May 22 14:44:53 2024Z17-206h px� 


End Record