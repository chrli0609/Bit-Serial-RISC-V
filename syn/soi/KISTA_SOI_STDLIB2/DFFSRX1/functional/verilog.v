//Verilog HDL for "KISTA_SOI_STDLIB2", "DFFSRX1" "functional"


module DFFSRX1 (Q, QN, D, RN, SN, CK );
	output reg Q, QN;
	input D, RN, SN, CK;

	always @(posedge CK or SN or negedge RN) begin
		if (!SN) begin
			Q <= 1;
			QN <= 0;
		end else if (!RN) begin
			Q <= 0;
			QN <= 1;
		end else begin
			Q <= D;
			QN <= ~D;
		end
	end

endmodule
