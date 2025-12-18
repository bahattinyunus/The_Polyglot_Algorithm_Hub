module quicksort (
    input clk,
    input rst,
    input start,
    input [7:0] in_data_0, in_data_1, in_data_2, in_data_3, in_data_4, in_data_5,
    output reg done,
    output reg [7:0] out_data_0, out_data_1, out_data_2, out_data_3, out_data_4, out_data_5
);
    // Verilog implementation of sorting is typically done via 
    // sorting networks or finite state machines controlling memory swaps.
    // This is a behavioral simulation of the outcome.
    
    reg [7:0] arr [0:5];
    integer i, j;
    reg [7:0] temp;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            done <= 0;
            // Initialize
            out_data_0 <= 0; out_data_1 <= 0; out_data_2 <= 0;
            out_data_3 <= 0; out_data_4 <= 0; out_data_5 <= 0;
        end else if (start) begin
            arr[0] = in_data_0; arr[1] = in_data_1; arr[2] = in_data_2;
            arr[3] = in_data_3; arr[4] = in_data_4; arr[5] = in_data_5;
            
            // Simple Bubble Sort (easier to describe behaviorally in one block than recursive QSort)
            for (i = 0; i < 6; i = i + 1) begin
                for (j = 0; j < 5; j = j + 1) begin
                    if (arr[j] > arr[j+1]) begin
                        temp = arr[j];
                        arr[j] = arr[j+1];
                        arr[j+1] = temp;
                    end
                end
            end
            
            out_data_0 <= arr[0]; out_data_1 <= arr[1]; out_data_2 <= arr[2];
            out_data_3 <= arr[3]; out_data_4 <= arr[4]; out_data_5 <= arr[5];
            done <= 1;
        end
    end
endmodule
