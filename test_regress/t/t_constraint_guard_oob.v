// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Wilson Snyder
// SPDX-License-Identifier: CC0-1.0

// Test: constraint guards (IEEE 1800-2023 18.5.13) prevent creating constraints
// on nonexistent class object array elements

// verilog_format: off
`define stop $stop
`define checkd(gotv,expv) do if ((gotv) !== (expv)) begin $write("%%Error: %s:%0d:  got=%0d exp=%0d\n", `__FILE__,`__LINE__, (gotv), (expv)); `stop; end while(0);
// verilog_format: on

class item_t;
  rand bit [7:0] value;
endclass

class container;
  // Size not a power of 2, so out-of-bounds indices do not wrap to existing elements
  rand item_t items[3];
  // If guard
  constraint if_c {foreach (items[i]) if (i != 0) items[i-1].value < 200;}
  // Implication guard
  constraint impl_c {foreach (items[i]) (i < 2) -> items[i+1].value > items[i].value;}
  function new();
    foreach (items[i]) items[i] = new;
  endfunction
endclass

// Dynamic array: foreach is not unrolled, so guards are evaluated at runtime
class dyn_container;
  rand item_t items[];
  constraint impl_c {foreach (items[i]) (i < 2) -> items[i+1].value > items[i].value;}
  function new();
    items = new[3];
    foreach (items[i]) items[i] = new;
  endfunction
endclass

module t;
  initial begin
    automatic container c = new;
    automatic dyn_container d = new;
    repeat (20) begin
      `checkd(c.randomize(), 1);
      for (int i = 1; i < 3; ++i) begin
        `checkd(c.items[i-1].value < 200, 1);
        `checkd(c.items[i].value > c.items[i-1].value, 1);
      end
      `checkd(d.randomize(), 1);
      for (int i = 1; i < 3; ++i) begin
        `checkd(d.items[i].value > d.items[i-1].value, 1);
      end
    end
    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
