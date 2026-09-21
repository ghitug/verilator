// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain, for
// any use, without warranty, 2026 by Wilson Snyder.
// SPDX-License-Identifier: CC0-1.0

class Cls;
   int x;
   function int get(); return x; endfunction
endclass

module sub(input int i, output int o);
   always_comb o = i + 1;
endmodule

module t(/*AUTOARG*/
   // Inputs
   clk
   );
   input clk;
   int i;
   int o;
   sub sub_i(.i(i), .o(o));
   always @(posedge clk) begin
      i <= i + 1;
      if (i > 3) begin
         if (o != i + 1) $stop;
         $write("*-* All Finished *-*\n");
         $finish;
      end
   end
endmodule
