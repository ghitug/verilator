// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Wilson Snyder
// SPDX-License-Identifier: CC0-1.0

module t;
  logic arr1[7];
  logic arr2[5:9];
  logic arr3[-2:2];
  logic [6:0] vec;
  localparam int P = 9;

  logic l;
  initial begin
    l = arr1[-1];  // Index is a constant expression, not a constant
    l = arr1[1 - 2];
    l = arr1[P];
    l = arr2[-2];
    l = arr3[-3];
    l = arr3[3];  // Above msb of an array with negative lsb
    l = vec[P];
  end
endmodule
