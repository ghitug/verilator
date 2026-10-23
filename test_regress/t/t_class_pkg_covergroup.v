// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Antmicro
// SPDX-License-Identifier: CC0-1.0

module t;
  int a;

  // No static members: its class package is not needed
  class Plain;
    int m_x;
  endclass

  // Has the implicit static 'type_option' member (IEEE 1800-2023 19.10),
  // whose storage lives in the class package
  covergroup Cg;
    coverpoint a;
  endgroup

  initial begin
    Plain p;
    Cg cg;
    p = new;
    cg = new;
    a = 1;
    cg.sample();
    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
