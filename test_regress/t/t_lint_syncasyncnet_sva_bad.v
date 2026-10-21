// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain
// SPDX-FileCopyrightText: 2026 Antmicro
// SPDX-License-Identifier: CC0-1.0

module t (
    input clk,
    input rst,
    input d,
    output reg q_async,
    output reg q_sync
);
  // The let body is substituted into both the flop and the assertion, so the substituted
  // references share a FileLine. Ignoring the assertion usage must not hide the flop one.
  let rst_let = rst;
  always_ff @(posedge clk or negedge rst) begin
    q_async <= rst ? d : 1'b0;
  end
  always_ff @(posedge clk) begin
    q_sync <= rst_let ? d : 1'b0;
  end
  assert property (@(posedge clk) rst_let);
endmodule
