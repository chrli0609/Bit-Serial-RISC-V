//Verilog HDL for "KISTA_SOI_STDLIB2", "TFFsyncR" "functional"


module TFFRX1 (Q, QN, T, RN, CK );
	output reg Q, QN;
	input T, RN, CK;

	initial begin
		Q <= 0;
		QN <= 1;
	end

	always @(posedge CK) begin
		if (!RN) begin
			Q <= 0;
			QN <= 1;
		end else if(T) begin
			Q <= ~Q;
			QN <= Q;
		end
	end

endmodule
