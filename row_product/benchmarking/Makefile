CC = g++
CFLAGS = -pedantic -std=c++17
SRC_DIR = ../src
TB = $(SRC_DIR)/row_product_tb.cpp
SRC = $(SRC_DIR)/row_product.cpp
INCLUDE = $(SRC_DIR)/row_product.hpp
vitis_include = /home/leoh/tools/Vitis_HLS/2020.2/include

# Define the target-specific clock configuration file
CLOCKS_CONFIG = clock.config

# Read the clock configuration and generate compiler flags
CLOCK_FLAGS = $(shell python3 generate_clock_flags.py $(CLOCKS_CONFIG))

all: run
	
count_clocks: $(TB) $(SRC) $(INCLUDE) $(CLOCKS_CONFIG)
	$(CC) $(CFLAGS) $(CLOCK_FLAGS) -I$(vitis_include) -o row_product_tb $(TB) $(SRC)

row_product_tb: $(TB) $(SRC) $(INCLUDE)
	$(CC) $(CFLAGS) -I$(vitis_include) -o row_product_tb $(TB) $(SRC)

valgrind_report.rpt: row_product_tb
	valgrind --tool=memcheck --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --log-file=valgrind_report.rpt ./row_product_tb

run: row_product_tb
	./row_product_tb

debug: $(TB) $(SRC) $(INCLUDE)
	$(CC) $(CFLAGS) -ggdb -I$(vitis_include) -o row_product_tb $(TB) $(SRC)

.PHONY: clean
clean: 
	rm -f row_product_tb