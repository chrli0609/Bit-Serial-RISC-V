//Verilog HDL for "KISTA_SOI_STDLIB2", "NAND3X1" "functional"


module NAND3X1 (A, B, C, Y);
	input A, B, C;
	output Y;

	assign Y = ~(A & B & C);

endmodule
