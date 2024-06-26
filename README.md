# FIR Filter

## Description

This project involves designing and implementing a Finite Impulse Response (FIR) filter using Verilog. The filter was tested and simulated in Xilinx Vivado, and its performance was verified using MATLAB. The images below show the original sine wave, the bitstream converted to an analog signal, and the filtered sine wave.

## Technologies used

- **Verilog**: Used for designing the FIR filter.
- **Xilinx Vivado**: Used for simulating and testing the Verilog design.
- **MATLAB**: Used for generating the sine wave, converting bitstreams to analog signals, and visualizing the results.

## Frequency and Timing Details
- The original sine wave is generated at 1 Hz and sampled at 5 Hz following *Nyquist* criterion giving 32 samples for one cycle
- The waves generated in vivado have time period 32 * T_clk = 32 * 20ns = 640ns
- The filtered bitstream is again reconstructed with the same sampling frequency of 5 Hz to retain the 1 Hz original signal
- The output wave is delayed by some time due to the 15 flip flops used; it is delayed by 15 * T_clk = 300 ns giving almost 180 degrees of phase lag


## Original Sine Wave Generated in MATLAB Filtered in Xilinx Vivado 

![Original Sine Wave](https://github.com/HardikJainGit/FIR-Filter-Verilog/assets/133627261/aac482d3-a9b5-449a-bf14-2caba95f07ce)

<br><br>

## Original Sine Wave's Bitstream Converted to Analog Signal in MATLAB

![untitled2](https://github.com/HardikJainGit/FIR-Filter-Verilog/assets/133627261/6c2692fd-f4c4-4307-8b55-0c082a8c8181)

<br><br>

## Filtered Sine Wave's Bitstream Extracted from Bitstream Generated in Xilinx Vivado Converted to Analog Signal (Filtered Version of Original Wave) in MATLAB

![untitled1](https://github.com/HardikJainGit/FIR-Filter-Verilog/assets/133627261/fdc29bc3-5b1a-4de7-bf90-0bb18c2faa29)

