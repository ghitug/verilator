// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Wilson Snyder
// SPDX-License-Identifier: CC0-1.0

interface class Ifc;
  pure virtual function int get;
endclass

interface class IfcExt extends Ifc;
  pure virtual function int getExt;
endclass

class Cls implements IfcExt;
  virtual function int get;
    return 1;
  endfunction
  virtual function int getExt;
    return 2;
  endfunction
endclass

module t;
  Cls c;
  IfcExt i;

  initial begin
    c = new;
    i = c;
    if (i.get() != 1) $stop;
    if (i.getExt() != 2) $stop;
    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
