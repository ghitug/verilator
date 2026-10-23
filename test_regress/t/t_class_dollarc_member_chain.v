// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Antmicro
// SPDX-License-Identifier: CC0-1.0

class Inner;
  int x  /*verilator public*/ = 5;
endclass

class Outer;
  Inner m_i  /*verilator public*/ = new;
endclass

module t;
  initial begin
    Outer o;
    o = new;
    if ($c(o, "->m_i->x") != 5) $stop;
    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
