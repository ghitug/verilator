// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Antmicro
// SPDX-License-Identifier: CC0-1.0

class Unrelated;
  int x = 1;
endclass

class Cls;
  int m = 1;
  function int plain();
    return m + 1;
  endfunction
  function int uses_dollar_c();
    return $c("2");
  endfunction
endclass

module t;
  initial begin
    Unrelated u;
    Cls c;
    u = new;
    c = new;
    if (u.x != 1) $stop;
    if (c.plain() != 2) $stop;
    if (c.uses_dollar_c() != 2) $stop;
    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
