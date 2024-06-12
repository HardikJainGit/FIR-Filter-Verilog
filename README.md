# FIR Filter

## Description

This project involves designing and implementing a Finite Impulse Response (FIR) filter using Verilog. The filter was tested and simulated in Vivado Xilinx, and its performance was verified using MATLAB. The images below show the original sine wave, the bitstream converted to an analog signal, and the filtered sine wave.

## Technologies used

- **Verilog**: Used for designing the FIR filter.
- **Vivado Xilinx**: Used for simulating and testing the Verilog design.
- **MATLAB**: Used for generating the sine wave, converting bitstreams to analog signals, and visualizing the results.

- ## Frequency Details
- The original sine wave is generated at 1 Hz and sampled at 5 Hz following *Nyquist* criterion giving 32 samples for one cycle
- The waves generated in vivado have time period 32 * T_clk = 32 * 20ns = 640ns
- The filtered bitstream is again reconstructed with the same sampling frequency of 5 Hz to retain the 1 Hz original signal.


## Original Sine Wave Generated in MATLAB Filtered in Vivado Xilinx

![Original Sine Wave](https://github.com/HardikJainGit/FIR-Filter-Verilog/assets/133627261/aac482d3-a9b5-449a-bf14-2caba95f07ce)

<br><br>

## Original Sine Wave's Bitstream Converted to Analog Signal in MATLAB

![untitled2](https://github.com/HardikJainGit/FIR-Filter-Verilog/assets/133627261/6c8b1f30-31af-4817-887b-6bd743bcbd01)

<br><br>

## Filtered Sine Wave's Bitstream Extracted from Bitstream Generated in Xilinx Vivado Converted to Analog Signal (Filtered Version of Original Wave) in MATLAB

![untitled1](https://github.com/HardikJainGit/FIR-Filter-Verilog/assets/133627261/9225330c-999b-48f5-acd7-a868e972ba08)

