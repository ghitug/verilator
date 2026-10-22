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
  rand bit x;
  rand bit y;
  // Size not a power of 2, so out-of-bounds indices do not wrap to existing elements
  rand item_t items[3];
  // Whole condition is a guard
  constraint if_c {foreach (items[i]) if (i != 0) items[i-1].value < 200;}
  constraint impl_c {foreach (items[i]) (i < 2) -> items[i+1].value > items[i].value;}
  // Guard combined with random variables
  constraint and_c {foreach (items[i]) (i != 0 && x) -> items[i-1].value[0] == 1;}
  constraint not_or_c {foreach (items[i]) !(i == 0 || !y) -> items[i-1].value[1] == 1;}
  constraint or_and_c {
    foreach (items[i]) ((i == 2 && x) || (i == 2 && y)) -> items[i-2].value[2] == 1;
  }
  constraint and_and_c {
    foreach (items[i]) ((i != 0 && x) && (i != 2 && y)) -> items[i-1].value[3] == 1;
  }
  // Guard never decides alone, as 'x' may still make the condition true
  constraint or_c {foreach (items[i]) (i == 0 || x) -> items[i].value != 3;}
  constraint or_rev_c {foreach (items[i]) (y || i == 0) -> items[i].value != 4;}
  function new();
    foreach (items[i]) items[i] = new;
  endfunction
  function void check();
    for (int i = 1; i < 3; ++i) begin
      `checkd(items[i-1].value < 200, 1);
      `checkd(items[i].value > items[i-1].value, 1);
      if (x) `checkd(items[i-1].value[0], 1);
      if (y) `checkd(items[i-1].value[1], 1);
    end
    if (x || y) `checkd(items[0].value[2], 1);
    if (x && y) `checkd(items[0].value[3], 1);
    `checkd(items[0].value != 3, 1);
    if (x) foreach (items[i]) `checkd(items[i].value != 3, 1);
    `checkd(items[0].value != 4, 1);
    if (y) foreach (items[i]) `checkd(items[i].value != 4, 1);
  endfunction
endclass

// Dynamic array: foreach is not unrolled, so guards are evaluated at runtime
class dyn_container;
  rand bit x;
  rand item_t items[];
  constraint impl_c {foreach (items[i]) (i < 2 && x) -> items[i+1].value > items[i].value;}
  function new();
    items = new[3];
    foreach (items[i]) items[i] = new;
  endfunction
  function void check();
    if (x) for (int i = 1; i < 3; ++i) `checkd(items[i].value > items[i-1].value, 1);
  endfunction
endclass

module t;
  initial begin
    automatic container c = new;
    automatic dyn_container d = new;
    repeat (20) begin
      `checkd(c.randomize(), 1);
      c.check();
      `checkd(d.randomize(), 1);
      d.check();
    end
    `checkd(c.randomize() with {x && y;}, 1);
    c.check();
    `checkd(d.randomize() with {x;}, 1);
    d.check();
    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
