# Makefile for running Vitis HLS script

# Set your Vitis HLS installation directory
VITIS_HLS_DIR := ~/tools/Vitis_HLS/2020.2/

CPATH:=/usr/include/x86_64-linux-gnu

# Set the name of your TCL script
COMPILE_SCRIPT=scripts/compile.tcl
SYN_SCRIPT=scripts/syn.tcl
COSIM_SCRIPT=scripts/cosim.tcl

.PHONY: all compile synthesis cosim interative gui

all: compile synthesis cosim

compile:
	CPATH=$(CPATH) $(VITIS_HLS_DIR)/bin/vitis_hls -f $(COMPILE_SCRIPT)

synthesis:
	CPATH=$(CPATH) $(VITIS_HLS_DIR)/bin/vitis_hls -f $(SYN_SCRIPT)

cosim:
	CPATH=$(CPATH) $(VITIS_HLS_DIR)/bin/vitis_hls -f $(COSIM_SCRIPT)

interactive:
	CPATH=$(CPATH) $(VITIS_HLS_DIR)/bin/vitis_hls -i 

gui:
	CPATH=$(CPATH) $(VITIS_HLS_DIR)/bin/vitis_hls 