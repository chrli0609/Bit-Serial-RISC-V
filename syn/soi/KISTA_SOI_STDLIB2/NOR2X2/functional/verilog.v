//Verilog HDL for "KISTA_SOI_STDLIB2", "NOR2X1" "functional"


module NOR2X2 (A, B, Y);
	input A, B;
	output Y;

	assign Y = ~(A | B);

endmodule
