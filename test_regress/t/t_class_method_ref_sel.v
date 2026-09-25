// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Wilson Snyder
// SPDX-License-Identifier: CC0-1.0

// verilog_format: off
`define stop $stop
`define checkd(gotv,expv) do if ((gotv) !== (expv)) begin $write("%%Error: %s:%0d:  got=%0d exp=%0d\n", `__FILE__,`__LINE__, (gotv), (expv)); `stop; end while(0);
`define checks(gotv,expv) do if ((gotv) != (expv)) begin $write("%%Error: %s:%0d:  got='%s' exp='%s'\n", `__FILE__,`__LINE__, (gotv), (expv)); `stop; end while(0);
// verilog_format: on

typedef bit [14:0] elem_t;

class Holder;
  elem_t q[$];
endclass

class Cls;
  task set_ref(ref elem_t x, input elem_t v);
    x = v;
  endtask
  task set_out(output elem_t x, input elem_t v);
    x = v;
  endtask
  task inc_inout(inout elem_t x);
    x = x + 1;
  endtask
  task set_char(ref byte c, input byte v);
    c = v;
  endtask
  static task sset_ref(ref elem_t x, input elem_t v);
    x = v;
  endtask
endclass

task automatic plain_set_ref(ref elem_t x, input elem_t v);
  x = v;
endtask

module t;

  elem_t q[$];
  elem_t dyn[];
  elem_t assoc[int];
  elem_t unp[3:1];
  string str;
  Cls c;
  Holder h;

  initial begin
    c = new;
    h = new;
    q = '{0, 0, 0};
    dyn = new[3];
    assoc[5] = 0;
    assoc[7] = 0;
    h.q = '{0, 0, 0};
    str = "abc";

    for (int i = 0; i < 3; ++i) begin
      // Method call, ref argument
      c.set_ref(q[i], elem_t'(100 + i));
      `checkd(q[i], 100 + i);
      c.set_ref(dyn[i], elem_t'(200 + i));
      `checkd(dyn[i], 200 + i);
      c.set_ref(unp[i+1], elem_t'(300 + i));
      `checkd(unp[i+1], 300 + i);
      c.set_ref(h.q[i], elem_t'(400 + i));
      `checkd(h.q[i], 400 + i);
      // Method call, output argument
      c.set_out(q[i], elem_t'(500 + i));
      `checkd(q[i], 500 + i);
      c.set_out(dyn[i], elem_t'(600 + i));
      `checkd(dyn[i], 600 + i);
      // Method call, inout argument
      c.inc_inout(q[i]);
      `checkd(q[i], 501 + i);
      c.inc_inout(dyn[i]);
      `checkd(dyn[i], 601 + i);
      // Static method call, ref argument
      c.sset_ref(q[i], elem_t'(700 + i));
      `checkd(q[i], 700 + i);
      // Plain task call, ref argument
      plain_set_ref(q[i], elem_t'(800 + i));
      `checkd(q[i], 800 + i);
      plain_set_ref(dyn[i], elem_t'(900 + i));
      `checkd(dyn[i], 900 + i);
      // String character, ref argument
      c.set_char(str[i], byte'("x" + i));
      `checkd(str[i], "x" + i);
    end
    `checks(str, "xyz");

    for (int k = 5; k <= 7; k += 2) begin
      c.set_ref(assoc[k], elem_t'(k * 11));
      `checkd(assoc[k], k * 11);
    end

    // Writing past the end of a queue through a ref argument appends
    c.set_ref(q[q.size()], 15'd1234);
    `checkd(q.size(), 4);
    `checkd(q[3], 1234);
    c.set_ref(q[$], 15'd4321);
    `checkd(q[3], 4321);

    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
