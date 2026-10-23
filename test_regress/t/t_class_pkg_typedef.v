// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Antmicro
// SPDX-License-Identifier: CC0-1.0

module t;
  // Control: no typedefs or statics
  class Plain;
    int m_x;
  endclass

  // Typedef is only a name, V3Dead deletes it after V3Class, but the
  // class package is kept, empty
  class WithTypedef;
    typedef int count_t;
    count_t m_x;
  endclass

  initial begin
    Plain p;
    WithTypedef t;
    p = new;
    t = new;
    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
