//Verilog HDL for "KISTA_SOI_STDLIB2", "NOR4X1" "functional"


module NOR4X1 (A, B, C, D, Y);
	input A, B, C, D;
	output Y;

	assign Y = ~(A | B | C | D);

endmodule
