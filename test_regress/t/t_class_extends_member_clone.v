// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Antmicro
// SPDX-License-Identifier: CC0-1.0

class Other;
  int x;
endclass

class Base;
  Other m_o;
endclass

class Derived extends Base;
  int m_y;
endclass

module t;
  initial begin
    Derived d1;
    Derived d2;
    d1 = new;
    d1.m_o = new;
    d1.m_o.x = 3;
    d2 = new d1;
    if (d2.m_o != d1.m_o) $stop;
    if (d2.m_o.x != 3) $stop;
    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
