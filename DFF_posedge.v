module DFF(clk, reset, data_in, data_delayed);
    parameter N = 16;
    input clk, reset;
    input [N-1:0] data_in;
    output [N-1:0] data_delayed; 
    
    reg [N-1:0] Q_reg, Q_next;
    
    // Asynchronous reset
    always @(posedge clk, negedge reset) 
    begin
        if (!reset)
            Q_reg <= 1'b0;
        else
            Q_reg <= Q_next;
    end
    
    // Next state logic
    always @(data_in, Q_reg)
    begin
//        Q_next = Q_reg;
//        if(!clear_n)
//            Q_next = 1'b0;
//        else
        Q_next = data_in;
    end

    // Output logic
    assign data_delayed = Q_reg;
endmodule
