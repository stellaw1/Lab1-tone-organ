module Gen_Note_Clock_Frequency(SW, Note_Clock_Count);
  input [2:0] SW;
  output reg [31:0] Note_Clock_Count;

  always @(*) begin
    case (SW[2:0])
      3'b000: begin
        Note_Clock_Count = 32'hBAB9; //523Hz
      end
      3'b001: begin
        Note_Clock_Count = 32'hA65D; //587Hz
      end
      3'b010: begin
        Note_Clock_Count = 32'h9430; //659Hz
      end
      3'b011: begin
        Note_Clock_Count = 32'h8BE9; //698Hz
      end
      3'b100: begin
        Note_Clock_Count = 32'h7CB8; //783Hz
      end
      3'b101: begin
        Note_Clock_Count = 32'h6EF9; //880Hz
      end
      3'b110: begin
        Note_Clock_Count = 32'h62F1; //987Hz
      end
      3'b111: begin
        Note_Clock_Count = 32'h5D5D; //1046Hz
      end
      default: begin
        Note_Clock_Count = 32'h61A6;
      end
    endcase
  end
endmodule