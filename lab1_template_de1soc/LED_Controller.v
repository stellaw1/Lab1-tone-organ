module LED_Controller(clk, LEDR);
    input clk;
    output [7:0] LEDR;

    reg LED_direction = 1'b1;
    reg [7:0] LED = 8'b0000_0001;

    always @(posedge clk)
    begin
    if (LED == 8'b0000_0001 && LED_direction == 1'b0)
        LED_direction = 1'b1;
    else if (LED == 8'b1000_0000 && LED_direction == 1'b1)
        LED_direction = 1'b0;

    if (LED_direction)
        LED = LED << 1;
    else
        LED = LED >> 1;
    end

    assign LEDR = LED;
endmodule