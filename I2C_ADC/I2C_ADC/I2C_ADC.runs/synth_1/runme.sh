#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/spixy/XILINX/SDK/2019.1/bin:/home/spixy/XILINX/Vivado/2019.1/ids_lite/ISE/bin/lin64:/home/spixy/XILINX/Vivado/2019.1/bin
else
  PATH=/home/spixy/XILINX/SDK/2019.1/bin:/home/spixy/XILINX/Vivado/2019.1/ids_lite/ISE/bin/lin64:/home/spixy/XILINX/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/spixy/Documents/College/EE316/EE316P3/EE316P3/I2C_ADC/I2C_ADC/I2C_ADC.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log cora_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source cora_wrapper.tcl
