// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain
// SPDX-FileCopyrightText: 2026 Antmicro
// SPDX-License-Identifier: CC0-1.0

module t;
  logic arr1[7];
  logic arr2[-2:2];  // Negative declared range
  bit [3:0] arr3[5];  // Unpacked with packed

  logic l1;
  bit [3:0] b4;

  initial begin
    l1 = arr1[-1];  // Negative index
    l1 = arr2[-3];  // Negative index below negative range
    b4 = arr3[-1];  // Negative index
    l1 = arr1[(1'h0/1'b0)];  // X index, not range checked
  end
endmodule
