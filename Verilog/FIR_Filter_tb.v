`timescale 1ns / 1ps

module FIR_TB(
);

parameter N = 16;

reg clk, reset;
reg [N-1:0] data_in;
wire [N-1:0] data_out; 
wire [N-1:0] input_stream = data_in << 6;  // scaling just for better visibility in simulation

FIR_Filter inst0(
    clk, reset, data_in, data_out
);

// Create the RAM
reg [N-1:0] RAMM [0:31]; // memory of 32 words with 16 bits each 

// read input sine wave's bistream
initial
$readmemb("signal.data", RAMM);

// create a clock
initial 
clk = 0;
always 
#10 clk = ~ clk;  

// Address counter 
reg [4:0] Address; 

// Read RAM data to create input bitstream
always@(posedge clk)
    data_in <= RAMM[Address];  // referring to the 16 bit entry at address = Address
    
initial
Address = 1; 
always@(posedge clk)
begin
    if (Address == 31)
        Address = 0; 
    else
        Address = Address + 1; 
end     

// Write data_out to a file to generate filtered wave's bitstream 

integer file;
integer valid_count;
integer signed_data_out;

initial 
begin
    file = $fopen("data_out.txt", "w");
    valid_count = 0;
    if (file != 0) begin
        $display("Opened data_out.txt for writing");
        $display("Waiting for valid data_out...");
        while (valid_count < 128) begin // it is periodic ; taking first 128 values for few cycles
            @(posedge clk);
            if (data_out !== 16'bxxxx) begin
                // Sign extend the 16-bit value to 32 bits
                signed_data_out = {{16{data_out[15]}}, data_out};
                // Convert to decimal
                $fwrite(file, "%d\n", signed_data_out);
                valid_count = valid_count + 1;
                $display("Valid data_out written: %d", signed_data_out);
            end
        end
        $fclose(file);
        $display("Closed data_out.txt");
    end
    else begin
        $display("Error opening data_out.txt for writing");
    end
end

endmodule
