// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Wilson Snyder
// SPDX-License-Identifier: CC0-1.0

// verilog_format: off
`define stop $stop
`define checkd(gotv,expv) do if ((gotv) !== (expv)) begin $write("%%Error: %s:%0d:  got=%0d exp=%0d\n", `__FILE__,`__LINE__, (gotv), (expv)); `stop; end while(0);
// verilog_format: on

module t (
    input clk
);

  int cyc = 0;
  int fails = 0;
  always @(posedge clk) cyc <= cyc + 1;

  // Sequence-local variable with a leading clocking event
  sequence s_clocked;
    int snap;
    @(posedge clk) (1, snap = cyc) ##4 (cyc == snap + 4);
  endsequence
  assert property (s_clocked);
  // Same shape referenced twice gets separate local variables
  assert property (s_clocked);

  // Sequence-local variable, clock from the assertion
  sequence s_unclocked;
    int snap;
    (1, snap = cyc) ##1 (1, snap = snap + cyc) ##2 (snap == 2 * cyc - 5);
  endsequence
  assert property (@(posedge clk) s_unclocked);

  // A wrong expectation must fail once per attempt
  sequence s_wrong;
    int snap;
    @(posedge clk) (1, snap = cyc) ##3 (cyc == snap + 2);
  endsequence
  assert property (s_wrong) else fails <= fails + 1;

  // Match item in a property without implication
  property p_no_implication;
    int snap;
    @(posedge clk) (1, snap = cyc) ##2 (cyc == snap + 2);
  endproperty
  assert property (p_no_implication);

  // Match item in the consequent
  property p_consequent;
    int snap;
    @(posedge clk) (cyc > 2) |-> ##1 (1, snap = cyc) ##3 (cyc == snap + 3);
  endproperty
  assert property (p_consequent);

  // Match item in a multi-cycle antecedent
  property p_antecedent_overlap;
    int snap;
    @(posedge clk) (cyc > 0, snap = cyc) ##2 (cyc > 2) |-> ##1 (cyc == snap + 3);
  endproperty
  assert property (p_antecedent_overlap);

  property p_antecedent_nonoverlap;
    int snap;
    @(posedge clk) (cyc > 0, snap = cyc) ##2 (cyc > 2) |=> (cyc == snap + 3);
  endproperty
  assert property (p_antecedent_nonoverlap);

  // Consequent that is just the local variable
  property p_consequent_var;
    bit flag;
    @(posedge clk) (1, flag = cyc >= 0) |=> flag;
  endproperty
  assert property (p_consequent_var);

  always @(posedge clk) begin
    if (cyc == 20) begin
      // s_wrong attempts started at cycles 0..16 matured by cycle 19
      `checkd(fails, 17);
      $write("*-* All Finished *-*\n");
      $finish;
    end
  end

endmodule
