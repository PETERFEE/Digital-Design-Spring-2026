# Copyright (C) 2023  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition
# File: E:\Digital_Design\quartus_files\Pong_back_actual\Top_pong.tcl
# Generated on: Fri Mar 20 13:57:19 2026

package require ::quartus::project

set_location_assignment PIN_P11 -to MAX10_CLK1_50
set_location_assignment PIN_B8 -to KEY[0]
set_location_assignment PIN_A7 -to KEY[1]
set_location_assignment PIN_N2 -to VGA_B[3]
set_location_assignment PIN_P4 -to VGA_B[2]
set_location_assignment PIN_T1 -to VGA_B[1]
set_location_assignment PIN_P1 -to VGA_B[0]
set_location_assignment PIN_R1 -to VGA_G[3]
set_location_assignment PIN_R2 -to VGA_G[2]
set_location_assignment PIN_T2 -to VGA_G[1]
set_location_assignment PIN_W1 -to VGA_G[0]
set_location_assignment PIN_N3 -to VGA_HS
set_location_assignment PIN_Y1 -to VGA_R[3]
set_location_assignment PIN_Y2 -to VGA_R[2]
set_location_assignment PIN_V1 -to VGA_R[1]
set_location_assignment PIN_AA1 -to VGA_R[0]
set_location_assignment PIN_N1 -to VGA_VS
