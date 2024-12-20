//Verilog HDL for "KISTA_SOI_STDLIB2", "MUX4X1" "functional"


module MX4X1 (Y, A, B, C, D, S0, S1);
	output Y;
	input A, B, C, D, S0, S1;

	assign Y = (A & (~S1) & (~S0)) | (B & (~S1) & (S0)) | (C & (S1) & (~S0)) | (D & (S1) & (S0));

endmodule

