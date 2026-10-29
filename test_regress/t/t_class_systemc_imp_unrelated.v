// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Antmicro
// SPDX-License-Identifier: CC0-1.0

// `systemc_implementation may reference any class, even one its class does not use

class Unrelated;
  int x  /*verilator public_flat_rw*/ = 7;
endclass

class Cls;
`systemc_implementation
int getUnrelatedX(void* p) {
    return static_cast<Vt_class_systemc_imp_unrelated___024unit__03a__03aUnrelated*>(p)->x;
}
`verilog
endclass

module t;
  initial begin
    Cls c;
    Unrelated u;
    c = new;
    u = new;
    // Declared locally, as a header section would make every class visible everywhere
    if ($c("([] { int getUnrelatedX(void*); return getUnrelatedX; }())(&*", u, ")") != 7) $stop;
    $write("*-* All Finished *-*\n");
    $finish;
  end
endmodule
