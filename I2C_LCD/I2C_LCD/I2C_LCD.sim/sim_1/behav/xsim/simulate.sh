#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Feb 27 16:54:23 EST 2022
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim cora_wrapper_behav -key {Behavioral:sim_1:Functional:cora_wrapper} -tclbatch cora_wrapper.tcl -view /home/spixy/Documents/College/EE316/EE316P3/EE316P3/I2C_LCD/I2C_LCD/cora_wrapper_behav.wcfg -log simulate.log"
xsim cora_wrapper_behav -key {Behavioral:sim_1:Functional:cora_wrapper} -tclbatch cora_wrapper.tcl -view /home/spixy/Documents/College/EE316/EE316P3/EE316P3/I2C_LCD/I2C_LCD/cora_wrapper_behav.wcfg -log simulate.log

