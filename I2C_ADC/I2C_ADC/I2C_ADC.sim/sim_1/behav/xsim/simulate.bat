@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1.3 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sun Feb 20 01:52:51 -0500 2022
REM SW Build 2644227 on Wed Sep  4 09:45:24 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim cora_wrapper_behav -key {Behavioral:sim_1:Functional:cora_wrapper} -tclbatch cora_wrapper.tcl -log simulate.log"
call xsim  cora_wrapper_behav -key {Behavioral:sim_1:Functional:cora_wrapper} -tclbatch cora_wrapper.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
