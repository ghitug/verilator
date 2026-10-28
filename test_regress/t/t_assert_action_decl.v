// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Wilson Snyder
// SPDX-License-Identifier: CC0-1.0

// verilog_format: off
`define stop $stop
`define checkd(gotv,expv) do if ((gotv) !== (expv)) begin $write("%%Error: %s:%0d:  got=%0d exp=%0d\n", `__FILE__,`__LINE__, (gotv), (expv)); `stop; end while(0);
// verilog_format: on

// Action blocks with declarations, which multi-cycle assertion lowering clones
module t (
    input clk
);

  int cyc = 0;
  int fails = 0;
  int passes = 0;
  int vacuous = 0;
  always @(posedge clk) cyc <= cyc + 1;

  // Fail action is replayed per failing thread
  assert property (@(posedge clk) 1 ##1 (cyc < 3))
  else begin
    int one;
    one = 1;
    fails <= fails + one;
  end

  // Pass action is gated on match and prepended to the fail action
  assert property (@(posedge clk) 1 ##1 (cyc >= 0))
  begin
    int one;
    one = 1;
    passes <= passes + one;
  end
  else $stop;

  // Pass action is split into vacuous and nonvacuous successes
  assert property (@(posedge clk) (cyc > 5) |-> ##1 (cyc > 0))
  begin : named_pass
    int one;
    one = 1;
    if (cyc <= 5) vacuous <= vacuous + one;
  end

  always @(posedge clk) begin
    if (cyc == 10) begin
      `checkd(fails, 7);  // Attempts at cycles 2..8
      `checkd(passes, 9);  // Attempts at cycles 0..8
      `checkd(vacuous, 6);  // Attempts at cycles 0..5
      $write("*-* All Finished *-*\n");
      $finish;
    end
  end

endmodule
