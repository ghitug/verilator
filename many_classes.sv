// Generated stress design: a package holding many SystemVerilog classes.
// The tool emits one .cpp pair per class, so the class count -- not
// --output-split -- is what drives the number of compilation units.
// Grouping only engages when fast class files >= 4 * --output-groups,
// so 200 classes supports --output-groups up to roughly 50.
//
// Every statement below depends on a runtime value (an argument, a member,
// or an array element at a computed index), so none of it folds away and
// the emitted code survives at any optimization level.

package many_pkg;

  parameter int HIST_DEPTH = 64;

  virtual class comp_base;
    int unsigned m_id;
    int unsigned m_seed;
    int unsigned m_hist[HIST_DEPTH];

    function new(int unsigned id = 0);
      m_id = id;
      m_seed = id + 32'd1;
    endfunction

    pure virtual function int unsigned step(int unsigned seed);

    virtual function int unsigned digest(int unsigned seed);
      int unsigned acc;
      acc = step(seed);
      return acc ^ m_hist[acc % HIST_DEPTH];
    endfunction
  endclass

  class comp_0 extends comp_base;
    function new(int unsigned id = 32'd0);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd0);
      acc = acc + m_hist[idx] + 32'd7;
      idx = (idx + acc + 32'd14) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd21);
      acc = acc + m_hist[idx] + 32'd28;
      idx = (idx + acc + 32'd35) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd42);
      acc = acc + m_hist[idx] + 32'd49;
      idx = (idx + acc + 32'd56) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd63);
      acc = acc + m_hist[idx] + 32'd70;
      idx = (idx + acc + 32'd77) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd84);
      acc = acc + m_hist[idx] + 32'd91;
      idx = (idx + acc + 32'd98) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd105);
      acc = acc + m_hist[idx] + 32'd112;
      idx = (idx + acc + 32'd119) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd126);
      acc = acc + m_hist[idx] + 32'd133;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd13);
      acc = acc + m_hist[idx] + 32'd20;
      idx = (idx + acc + 32'd27) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd34);
      acc = acc + m_hist[idx] + 32'd41;
      idx = (idx + acc + 32'd48) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd55);
      acc = acc + m_hist[idx] + 32'd62;
      idx = (idx + acc + 32'd69) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd76);
      acc = acc + m_hist[idx] + 32'd83;
      idx = (idx + acc + 32'd90) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd97);
      acc = acc + m_hist[idx] + 32'd104;
      idx = (idx + acc + 32'd111) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd118);
      acc = acc + m_hist[idx] + 32'd125;
      idx = (idx + acc + 32'd132) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd139);
      acc = acc + m_hist[idx] + 32'd146;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd26);
      acc = acc + m_hist[idx] + 32'd33;
      idx = (idx + acc + 32'd40) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd47);
      acc = acc + m_hist[idx] + 32'd54;
      idx = (idx + acc + 32'd61) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd68);
      acc = acc + m_hist[idx] + 32'd75;
      idx = (idx + acc + 32'd82) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd89);
      acc = acc + m_hist[idx] + 32'd96;
      idx = (idx + acc + 32'd103) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd110);
      acc = acc + m_hist[idx] + 32'd117;
      idx = (idx + acc + 32'd124) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd131);
      acc = acc + m_hist[idx] + 32'd138;
      idx = (idx + acc + 32'd145) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd152);
      acc = acc + m_hist[idx] + 32'd159;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_1 extends comp_base;
    function new(int unsigned id = 32'd1);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd31);
      acc = acc + m_hist[idx] + 32'd38;
      idx = (idx + acc + 32'd45) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd52);
      acc = acc + m_hist[idx] + 32'd59;
      idx = (idx + acc + 32'd66) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd73);
      acc = acc + m_hist[idx] + 32'd80;
      idx = (idx + acc + 32'd87) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd94);
      acc = acc + m_hist[idx] + 32'd101;
      idx = (idx + acc + 32'd108) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd115);
      acc = acc + m_hist[idx] + 32'd122;
      idx = (idx + acc + 32'd129) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd136);
      acc = acc + m_hist[idx] + 32'd143;
      idx = (idx + acc + 32'd150) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd157);
      acc = acc + m_hist[idx] + 32'd164;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd44);
      acc = acc + m_hist[idx] + 32'd51;
      idx = (idx + acc + 32'd58) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd65);
      acc = acc + m_hist[idx] + 32'd72;
      idx = (idx + acc + 32'd79) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd86);
      acc = acc + m_hist[idx] + 32'd93;
      idx = (idx + acc + 32'd100) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd107);
      acc = acc + m_hist[idx] + 32'd114;
      idx = (idx + acc + 32'd121) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd128);
      acc = acc + m_hist[idx] + 32'd135;
      idx = (idx + acc + 32'd142) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd149);
      acc = acc + m_hist[idx] + 32'd156;
      idx = (idx + acc + 32'd163) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd170);
      acc = acc + m_hist[idx] + 32'd177;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd57);
      acc = acc + m_hist[idx] + 32'd64;
      idx = (idx + acc + 32'd71) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd78);
      acc = acc + m_hist[idx] + 32'd85;
      idx = (idx + acc + 32'd92) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd99);
      acc = acc + m_hist[idx] + 32'd106;
      idx = (idx + acc + 32'd113) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd120);
      acc = acc + m_hist[idx] + 32'd127;
      idx = (idx + acc + 32'd134) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd141);
      acc = acc + m_hist[idx] + 32'd148;
      idx = (idx + acc + 32'd155) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd162);
      acc = acc + m_hist[idx] + 32'd169;
      idx = (idx + acc + 32'd176) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd183);
      acc = acc + m_hist[idx] + 32'd190;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_2 extends comp_base;
    function new(int unsigned id = 32'd2);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd62);
      acc = acc + m_hist[idx] + 32'd69;
      idx = (idx + acc + 32'd76) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd83);
      acc = acc + m_hist[idx] + 32'd90;
      idx = (idx + acc + 32'd97) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd104);
      acc = acc + m_hist[idx] + 32'd111;
      idx = (idx + acc + 32'd118) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd125);
      acc = acc + m_hist[idx] + 32'd132;
      idx = (idx + acc + 32'd139) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd146);
      acc = acc + m_hist[idx] + 32'd153;
      idx = (idx + acc + 32'd160) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd167);
      acc = acc + m_hist[idx] + 32'd174;
      idx = (idx + acc + 32'd181) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd188);
      acc = acc + m_hist[idx] + 32'd195;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd75);
      acc = acc + m_hist[idx] + 32'd82;
      idx = (idx + acc + 32'd89) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd96);
      acc = acc + m_hist[idx] + 32'd103;
      idx = (idx + acc + 32'd110) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd117);
      acc = acc + m_hist[idx] + 32'd124;
      idx = (idx + acc + 32'd131) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd138);
      acc = acc + m_hist[idx] + 32'd145;
      idx = (idx + acc + 32'd152) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd159);
      acc = acc + m_hist[idx] + 32'd166;
      idx = (idx + acc + 32'd173) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd180);
      acc = acc + m_hist[idx] + 32'd187;
      idx = (idx + acc + 32'd194) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd201);
      acc = acc + m_hist[idx] + 32'd208;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd88);
      acc = acc + m_hist[idx] + 32'd95;
      idx = (idx + acc + 32'd102) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd109);
      acc = acc + m_hist[idx] + 32'd116;
      idx = (idx + acc + 32'd123) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd130);
      acc = acc + m_hist[idx] + 32'd137;
      idx = (idx + acc + 32'd144) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd151);
      acc = acc + m_hist[idx] + 32'd158;
      idx = (idx + acc + 32'd165) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd172);
      acc = acc + m_hist[idx] + 32'd179;
      idx = (idx + acc + 32'd186) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd193);
      acc = acc + m_hist[idx] + 32'd200;
      idx = (idx + acc + 32'd207) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd214);
      acc = acc + m_hist[idx] + 32'd221;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_3 extends comp_base;
    function new(int unsigned id = 32'd3);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd93);
      acc = acc + m_hist[idx] + 32'd100;
      idx = (idx + acc + 32'd107) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd114);
      acc = acc + m_hist[idx] + 32'd121;
      idx = (idx + acc + 32'd128) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd135);
      acc = acc + m_hist[idx] + 32'd142;
      idx = (idx + acc + 32'd149) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd156);
      acc = acc + m_hist[idx] + 32'd163;
      idx = (idx + acc + 32'd170) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd177);
      acc = acc + m_hist[idx] + 32'd184;
      idx = (idx + acc + 32'd191) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd198);
      acc = acc + m_hist[idx] + 32'd205;
      idx = (idx + acc + 32'd212) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd219);
      acc = acc + m_hist[idx] + 32'd226;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd106);
      acc = acc + m_hist[idx] + 32'd113;
      idx = (idx + acc + 32'd120) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd127);
      acc = acc + m_hist[idx] + 32'd134;
      idx = (idx + acc + 32'd141) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd148);
      acc = acc + m_hist[idx] + 32'd155;
      idx = (idx + acc + 32'd162) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd169);
      acc = acc + m_hist[idx] + 32'd176;
      idx = (idx + acc + 32'd183) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd190);
      acc = acc + m_hist[idx] + 32'd197;
      idx = (idx + acc + 32'd204) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd211);
      acc = acc + m_hist[idx] + 32'd218;
      idx = (idx + acc + 32'd225) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd232);
      acc = acc + m_hist[idx] + 32'd239;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd119);
      acc = acc + m_hist[idx] + 32'd126;
      idx = (idx + acc + 32'd133) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd140);
      acc = acc + m_hist[idx] + 32'd147;
      idx = (idx + acc + 32'd154) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd161);
      acc = acc + m_hist[idx] + 32'd168;
      idx = (idx + acc + 32'd175) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd182);
      acc = acc + m_hist[idx] + 32'd189;
      idx = (idx + acc + 32'd196) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd203);
      acc = acc + m_hist[idx] + 32'd210;
      idx = (idx + acc + 32'd217) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd224);
      acc = acc + m_hist[idx] + 32'd231;
      idx = (idx + acc + 32'd238) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd245);
      acc = acc + m_hist[idx] + 32'd252;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_4 extends comp_base;
    function new(int unsigned id = 32'd4);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd124);
      acc = acc + m_hist[idx] + 32'd131;
      idx = (idx + acc + 32'd138) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd145);
      acc = acc + m_hist[idx] + 32'd152;
      idx = (idx + acc + 32'd159) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd166);
      acc = acc + m_hist[idx] + 32'd173;
      idx = (idx + acc + 32'd180) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd187);
      acc = acc + m_hist[idx] + 32'd194;
      idx = (idx + acc + 32'd201) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd208);
      acc = acc + m_hist[idx] + 32'd215;
      idx = (idx + acc + 32'd222) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd229);
      acc = acc + m_hist[idx] + 32'd236;
      idx = (idx + acc + 32'd243) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd250);
      acc = acc + m_hist[idx] + 32'd257;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd137);
      acc = acc + m_hist[idx] + 32'd144;
      idx = (idx + acc + 32'd151) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd158);
      acc = acc + m_hist[idx] + 32'd165;
      idx = (idx + acc + 32'd172) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd179);
      acc = acc + m_hist[idx] + 32'd186;
      idx = (idx + acc + 32'd193) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd200);
      acc = acc + m_hist[idx] + 32'd207;
      idx = (idx + acc + 32'd214) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd221);
      acc = acc + m_hist[idx] + 32'd228;
      idx = (idx + acc + 32'd235) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd242);
      acc = acc + m_hist[idx] + 32'd249;
      idx = (idx + acc + 32'd256) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd263);
      acc = acc + m_hist[idx] + 32'd270;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd150);
      acc = acc + m_hist[idx] + 32'd157;
      idx = (idx + acc + 32'd164) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd171);
      acc = acc + m_hist[idx] + 32'd178;
      idx = (idx + acc + 32'd185) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd192);
      acc = acc + m_hist[idx] + 32'd199;
      idx = (idx + acc + 32'd206) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd213);
      acc = acc + m_hist[idx] + 32'd220;
      idx = (idx + acc + 32'd227) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd234);
      acc = acc + m_hist[idx] + 32'd241;
      idx = (idx + acc + 32'd248) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd255);
      acc = acc + m_hist[idx] + 32'd262;
      idx = (idx + acc + 32'd269) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd276);
      acc = acc + m_hist[idx] + 32'd283;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_5 extends comp_base;
    function new(int unsigned id = 32'd5);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd155);
      acc = acc + m_hist[idx] + 32'd162;
      idx = (idx + acc + 32'd169) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd176);
      acc = acc + m_hist[idx] + 32'd183;
      idx = (idx + acc + 32'd190) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd197);
      acc = acc + m_hist[idx] + 32'd204;
      idx = (idx + acc + 32'd211) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd218);
      acc = acc + m_hist[idx] + 32'd225;
      idx = (idx + acc + 32'd232) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd239);
      acc = acc + m_hist[idx] + 32'd246;
      idx = (idx + acc + 32'd253) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd260);
      acc = acc + m_hist[idx] + 32'd267;
      idx = (idx + acc + 32'd274) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd281);
      acc = acc + m_hist[idx] + 32'd288;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd168);
      acc = acc + m_hist[idx] + 32'd175;
      idx = (idx + acc + 32'd182) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd189);
      acc = acc + m_hist[idx] + 32'd196;
      idx = (idx + acc + 32'd203) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd210);
      acc = acc + m_hist[idx] + 32'd217;
      idx = (idx + acc + 32'd224) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd231);
      acc = acc + m_hist[idx] + 32'd238;
      idx = (idx + acc + 32'd245) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd252);
      acc = acc + m_hist[idx] + 32'd259;
      idx = (idx + acc + 32'd266) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd273);
      acc = acc + m_hist[idx] + 32'd280;
      idx = (idx + acc + 32'd287) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd294);
      acc = acc + m_hist[idx] + 32'd301;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd181);
      acc = acc + m_hist[idx] + 32'd188;
      idx = (idx + acc + 32'd195) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd202);
      acc = acc + m_hist[idx] + 32'd209;
      idx = (idx + acc + 32'd216) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd223);
      acc = acc + m_hist[idx] + 32'd230;
      idx = (idx + acc + 32'd237) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd244);
      acc = acc + m_hist[idx] + 32'd251;
      idx = (idx + acc + 32'd258) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd265);
      acc = acc + m_hist[idx] + 32'd272;
      idx = (idx + acc + 32'd279) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd286);
      acc = acc + m_hist[idx] + 32'd293;
      idx = (idx + acc + 32'd300) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd307);
      acc = acc + m_hist[idx] + 32'd314;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_6 extends comp_base;
    function new(int unsigned id = 32'd6);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd186);
      acc = acc + m_hist[idx] + 32'd193;
      idx = (idx + acc + 32'd200) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd207);
      acc = acc + m_hist[idx] + 32'd214;
      idx = (idx + acc + 32'd221) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd228);
      acc = acc + m_hist[idx] + 32'd235;
      idx = (idx + acc + 32'd242) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd249);
      acc = acc + m_hist[idx] + 32'd256;
      idx = (idx + acc + 32'd263) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd270);
      acc = acc + m_hist[idx] + 32'd277;
      idx = (idx + acc + 32'd284) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd291);
      acc = acc + m_hist[idx] + 32'd298;
      idx = (idx + acc + 32'd305) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd312);
      acc = acc + m_hist[idx] + 32'd319;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd199);
      acc = acc + m_hist[idx] + 32'd206;
      idx = (idx + acc + 32'd213) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd220);
      acc = acc + m_hist[idx] + 32'd227;
      idx = (idx + acc + 32'd234) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd241);
      acc = acc + m_hist[idx] + 32'd248;
      idx = (idx + acc + 32'd255) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd262);
      acc = acc + m_hist[idx] + 32'd269;
      idx = (idx + acc + 32'd276) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd283);
      acc = acc + m_hist[idx] + 32'd290;
      idx = (idx + acc + 32'd297) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd304);
      acc = acc + m_hist[idx] + 32'd311;
      idx = (idx + acc + 32'd318) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd325);
      acc = acc + m_hist[idx] + 32'd332;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd212);
      acc = acc + m_hist[idx] + 32'd219;
      idx = (idx + acc + 32'd226) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd233);
      acc = acc + m_hist[idx] + 32'd240;
      idx = (idx + acc + 32'd247) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd254);
      acc = acc + m_hist[idx] + 32'd261;
      idx = (idx + acc + 32'd268) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd275);
      acc = acc + m_hist[idx] + 32'd282;
      idx = (idx + acc + 32'd289) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd296);
      acc = acc + m_hist[idx] + 32'd303;
      idx = (idx + acc + 32'd310) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd317);
      acc = acc + m_hist[idx] + 32'd324;
      idx = (idx + acc + 32'd331) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd338);
      acc = acc + m_hist[idx] + 32'd345;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_7 extends comp_base;
    function new(int unsigned id = 32'd7);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd217);
      acc = acc + m_hist[idx] + 32'd224;
      idx = (idx + acc + 32'd231) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd238);
      acc = acc + m_hist[idx] + 32'd245;
      idx = (idx + acc + 32'd252) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd259);
      acc = acc + m_hist[idx] + 32'd266;
      idx = (idx + acc + 32'd273) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd280);
      acc = acc + m_hist[idx] + 32'd287;
      idx = (idx + acc + 32'd294) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd301);
      acc = acc + m_hist[idx] + 32'd308;
      idx = (idx + acc + 32'd315) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd322);
      acc = acc + m_hist[idx] + 32'd329;
      idx = (idx + acc + 32'd336) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd343);
      acc = acc + m_hist[idx] + 32'd350;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd230);
      acc = acc + m_hist[idx] + 32'd237;
      idx = (idx + acc + 32'd244) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd251);
      acc = acc + m_hist[idx] + 32'd258;
      idx = (idx + acc + 32'd265) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd272);
      acc = acc + m_hist[idx] + 32'd279;
      idx = (idx + acc + 32'd286) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd293);
      acc = acc + m_hist[idx] + 32'd300;
      idx = (idx + acc + 32'd307) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd314);
      acc = acc + m_hist[idx] + 32'd321;
      idx = (idx + acc + 32'd328) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd335);
      acc = acc + m_hist[idx] + 32'd342;
      idx = (idx + acc + 32'd349) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd356);
      acc = acc + m_hist[idx] + 32'd363;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd243);
      acc = acc + m_hist[idx] + 32'd250;
      idx = (idx + acc + 32'd257) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd264);
      acc = acc + m_hist[idx] + 32'd271;
      idx = (idx + acc + 32'd278) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd285);
      acc = acc + m_hist[idx] + 32'd292;
      idx = (idx + acc + 32'd299) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd306);
      acc = acc + m_hist[idx] + 32'd313;
      idx = (idx + acc + 32'd320) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd327);
      acc = acc + m_hist[idx] + 32'd334;
      idx = (idx + acc + 32'd341) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd348);
      acc = acc + m_hist[idx] + 32'd355;
      idx = (idx + acc + 32'd362) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd369);
      acc = acc + m_hist[idx] + 32'd376;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_8 extends comp_base;
    function new(int unsigned id = 32'd8);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd248);
      acc = acc + m_hist[idx] + 32'd255;
      idx = (idx + acc + 32'd262) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd269);
      acc = acc + m_hist[idx] + 32'd276;
      idx = (idx + acc + 32'd283) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd290);
      acc = acc + m_hist[idx] + 32'd297;
      idx = (idx + acc + 32'd304) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd311);
      acc = acc + m_hist[idx] + 32'd318;
      idx = (idx + acc + 32'd325) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd332);
      acc = acc + m_hist[idx] + 32'd339;
      idx = (idx + acc + 32'd346) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd353);
      acc = acc + m_hist[idx] + 32'd360;
      idx = (idx + acc + 32'd367) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd374);
      acc = acc + m_hist[idx] + 32'd381;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd261);
      acc = acc + m_hist[idx] + 32'd268;
      idx = (idx + acc + 32'd275) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd282);
      acc = acc + m_hist[idx] + 32'd289;
      idx = (idx + acc + 32'd296) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd303);
      acc = acc + m_hist[idx] + 32'd310;
      idx = (idx + acc + 32'd317) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd324);
      acc = acc + m_hist[idx] + 32'd331;
      idx = (idx + acc + 32'd338) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd345);
      acc = acc + m_hist[idx] + 32'd352;
      idx = (idx + acc + 32'd359) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd366);
      acc = acc + m_hist[idx] + 32'd373;
      idx = (idx + acc + 32'd380) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd387);
      acc = acc + m_hist[idx] + 32'd394;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd274);
      acc = acc + m_hist[idx] + 32'd281;
      idx = (idx + acc + 32'd288) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd295);
      acc = acc + m_hist[idx] + 32'd302;
      idx = (idx + acc + 32'd309) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd316);
      acc = acc + m_hist[idx] + 32'd323;
      idx = (idx + acc + 32'd330) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd337);
      acc = acc + m_hist[idx] + 32'd344;
      idx = (idx + acc + 32'd351) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd358);
      acc = acc + m_hist[idx] + 32'd365;
      idx = (idx + acc + 32'd372) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd379);
      acc = acc + m_hist[idx] + 32'd386;
      idx = (idx + acc + 32'd393) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd400);
      acc = acc + m_hist[idx] + 32'd407;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_9 extends comp_base;
    function new(int unsigned id = 32'd9);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd279);
      acc = acc + m_hist[idx] + 32'd286;
      idx = (idx + acc + 32'd293) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd300);
      acc = acc + m_hist[idx] + 32'd307;
      idx = (idx + acc + 32'd314) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd321);
      acc = acc + m_hist[idx] + 32'd328;
      idx = (idx + acc + 32'd335) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd342);
      acc = acc + m_hist[idx] + 32'd349;
      idx = (idx + acc + 32'd356) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd363);
      acc = acc + m_hist[idx] + 32'd370;
      idx = (idx + acc + 32'd377) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd384);
      acc = acc + m_hist[idx] + 32'd391;
      idx = (idx + acc + 32'd398) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd405);
      acc = acc + m_hist[idx] + 32'd412;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd292);
      acc = acc + m_hist[idx] + 32'd299;
      idx = (idx + acc + 32'd306) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd313);
      acc = acc + m_hist[idx] + 32'd320;
      idx = (idx + acc + 32'd327) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd334);
      acc = acc + m_hist[idx] + 32'd341;
      idx = (idx + acc + 32'd348) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd355);
      acc = acc + m_hist[idx] + 32'd362;
      idx = (idx + acc + 32'd369) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd376);
      acc = acc + m_hist[idx] + 32'd383;
      idx = (idx + acc + 32'd390) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd397);
      acc = acc + m_hist[idx] + 32'd404;
      idx = (idx + acc + 32'd411) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd418);
      acc = acc + m_hist[idx] + 32'd425;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd305);
      acc = acc + m_hist[idx] + 32'd312;
      idx = (idx + acc + 32'd319) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd326);
      acc = acc + m_hist[idx] + 32'd333;
      idx = (idx + acc + 32'd340) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd347);
      acc = acc + m_hist[idx] + 32'd354;
      idx = (idx + acc + 32'd361) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd368);
      acc = acc + m_hist[idx] + 32'd375;
      idx = (idx + acc + 32'd382) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd389);
      acc = acc + m_hist[idx] + 32'd396;
      idx = (idx + acc + 32'd403) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd410);
      acc = acc + m_hist[idx] + 32'd417;
      idx = (idx + acc + 32'd424) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd431);
      acc = acc + m_hist[idx] + 32'd438;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_10 extends comp_base;
    function new(int unsigned id = 32'd10);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd310);
      acc = acc + m_hist[idx] + 32'd317;
      idx = (idx + acc + 32'd324) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd331);
      acc = acc + m_hist[idx] + 32'd338;
      idx = (idx + acc + 32'd345) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd352);
      acc = acc + m_hist[idx] + 32'd359;
      idx = (idx + acc + 32'd366) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd373);
      acc = acc + m_hist[idx] + 32'd380;
      idx = (idx + acc + 32'd387) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd394);
      acc = acc + m_hist[idx] + 32'd401;
      idx = (idx + acc + 32'd408) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd415);
      acc = acc + m_hist[idx] + 32'd422;
      idx = (idx + acc + 32'd429) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd436);
      acc = acc + m_hist[idx] + 32'd443;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd323);
      acc = acc + m_hist[idx] + 32'd330;
      idx = (idx + acc + 32'd337) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd344);
      acc = acc + m_hist[idx] + 32'd351;
      idx = (idx + acc + 32'd358) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd365);
      acc = acc + m_hist[idx] + 32'd372;
      idx = (idx + acc + 32'd379) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd386);
      acc = acc + m_hist[idx] + 32'd393;
      idx = (idx + acc + 32'd400) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd407);
      acc = acc + m_hist[idx] + 32'd414;
      idx = (idx + acc + 32'd421) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd428);
      acc = acc + m_hist[idx] + 32'd435;
      idx = (idx + acc + 32'd442) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd449);
      acc = acc + m_hist[idx] + 32'd456;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd336);
      acc = acc + m_hist[idx] + 32'd343;
      idx = (idx + acc + 32'd350) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd357);
      acc = acc + m_hist[idx] + 32'd364;
      idx = (idx + acc + 32'd371) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd378);
      acc = acc + m_hist[idx] + 32'd385;
      idx = (idx + acc + 32'd392) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd399);
      acc = acc + m_hist[idx] + 32'd406;
      idx = (idx + acc + 32'd413) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd420);
      acc = acc + m_hist[idx] + 32'd427;
      idx = (idx + acc + 32'd434) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd441);
      acc = acc + m_hist[idx] + 32'd448;
      idx = (idx + acc + 32'd455) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd462);
      acc = acc + m_hist[idx] + 32'd469;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_11 extends comp_base;
    function new(int unsigned id = 32'd11);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd341);
      acc = acc + m_hist[idx] + 32'd348;
      idx = (idx + acc + 32'd355) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd362);
      acc = acc + m_hist[idx] + 32'd369;
      idx = (idx + acc + 32'd376) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd383);
      acc = acc + m_hist[idx] + 32'd390;
      idx = (idx + acc + 32'd397) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd404);
      acc = acc + m_hist[idx] + 32'd411;
      idx = (idx + acc + 32'd418) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd425);
      acc = acc + m_hist[idx] + 32'd432;
      idx = (idx + acc + 32'd439) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd446);
      acc = acc + m_hist[idx] + 32'd453;
      idx = (idx + acc + 32'd460) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd467);
      acc = acc + m_hist[idx] + 32'd474;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd354);
      acc = acc + m_hist[idx] + 32'd361;
      idx = (idx + acc + 32'd368) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd375);
      acc = acc + m_hist[idx] + 32'd382;
      idx = (idx + acc + 32'd389) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd396);
      acc = acc + m_hist[idx] + 32'd403;
      idx = (idx + acc + 32'd410) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd417);
      acc = acc + m_hist[idx] + 32'd424;
      idx = (idx + acc + 32'd431) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd438);
      acc = acc + m_hist[idx] + 32'd445;
      idx = (idx + acc + 32'd452) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd459);
      acc = acc + m_hist[idx] + 32'd466;
      idx = (idx + acc + 32'd473) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd480);
      acc = acc + m_hist[idx] + 32'd487;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd367);
      acc = acc + m_hist[idx] + 32'd374;
      idx = (idx + acc + 32'd381) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd388);
      acc = acc + m_hist[idx] + 32'd395;
      idx = (idx + acc + 32'd402) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd409);
      acc = acc + m_hist[idx] + 32'd416;
      idx = (idx + acc + 32'd423) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd430);
      acc = acc + m_hist[idx] + 32'd437;
      idx = (idx + acc + 32'd444) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd451);
      acc = acc + m_hist[idx] + 32'd458;
      idx = (idx + acc + 32'd465) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd472);
      acc = acc + m_hist[idx] + 32'd479;
      idx = (idx + acc + 32'd486) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd493);
      acc = acc + m_hist[idx] + 32'd500;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_12 extends comp_base;
    function new(int unsigned id = 32'd12);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd372);
      acc = acc + m_hist[idx] + 32'd379;
      idx = (idx + acc + 32'd386) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd393);
      acc = acc + m_hist[idx] + 32'd400;
      idx = (idx + acc + 32'd407) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd414);
      acc = acc + m_hist[idx] + 32'd421;
      idx = (idx + acc + 32'd428) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd435);
      acc = acc + m_hist[idx] + 32'd442;
      idx = (idx + acc + 32'd449) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd456);
      acc = acc + m_hist[idx] + 32'd463;
      idx = (idx + acc + 32'd470) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd477);
      acc = acc + m_hist[idx] + 32'd484;
      idx = (idx + acc + 32'd491) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd498);
      acc = acc + m_hist[idx] + 32'd505;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd385);
      acc = acc + m_hist[idx] + 32'd392;
      idx = (idx + acc + 32'd399) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd406);
      acc = acc + m_hist[idx] + 32'd413;
      idx = (idx + acc + 32'd420) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd427);
      acc = acc + m_hist[idx] + 32'd434;
      idx = (idx + acc + 32'd441) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd448);
      acc = acc + m_hist[idx] + 32'd455;
      idx = (idx + acc + 32'd462) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd469);
      acc = acc + m_hist[idx] + 32'd476;
      idx = (idx + acc + 32'd483) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd490);
      acc = acc + m_hist[idx] + 32'd497;
      idx = (idx + acc + 32'd504) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd511);
      acc = acc + m_hist[idx] + 32'd518;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd398);
      acc = acc + m_hist[idx] + 32'd405;
      idx = (idx + acc + 32'd412) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd419);
      acc = acc + m_hist[idx] + 32'd426;
      idx = (idx + acc + 32'd433) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd440);
      acc = acc + m_hist[idx] + 32'd447;
      idx = (idx + acc + 32'd454) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd461);
      acc = acc + m_hist[idx] + 32'd468;
      idx = (idx + acc + 32'd475) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd482);
      acc = acc + m_hist[idx] + 32'd489;
      idx = (idx + acc + 32'd496) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd503);
      acc = acc + m_hist[idx] + 32'd510;
      idx = (idx + acc + 32'd517) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd524);
      acc = acc + m_hist[idx] + 32'd531;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_13 extends comp_base;
    function new(int unsigned id = 32'd13);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd403);
      acc = acc + m_hist[idx] + 32'd410;
      idx = (idx + acc + 32'd417) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd424);
      acc = acc + m_hist[idx] + 32'd431;
      idx = (idx + acc + 32'd438) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd445);
      acc = acc + m_hist[idx] + 32'd452;
      idx = (idx + acc + 32'd459) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd466);
      acc = acc + m_hist[idx] + 32'd473;
      idx = (idx + acc + 32'd480) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd487);
      acc = acc + m_hist[idx] + 32'd494;
      idx = (idx + acc + 32'd501) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd508);
      acc = acc + m_hist[idx] + 32'd515;
      idx = (idx + acc + 32'd522) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd529);
      acc = acc + m_hist[idx] + 32'd536;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd416);
      acc = acc + m_hist[idx] + 32'd423;
      idx = (idx + acc + 32'd430) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd437);
      acc = acc + m_hist[idx] + 32'd444;
      idx = (idx + acc + 32'd451) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd458);
      acc = acc + m_hist[idx] + 32'd465;
      idx = (idx + acc + 32'd472) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd479);
      acc = acc + m_hist[idx] + 32'd486;
      idx = (idx + acc + 32'd493) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd500);
      acc = acc + m_hist[idx] + 32'd507;
      idx = (idx + acc + 32'd514) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd521);
      acc = acc + m_hist[idx] + 32'd528;
      idx = (idx + acc + 32'd535) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd542);
      acc = acc + m_hist[idx] + 32'd549;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd429);
      acc = acc + m_hist[idx] + 32'd436;
      idx = (idx + acc + 32'd443) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd450);
      acc = acc + m_hist[idx] + 32'd457;
      idx = (idx + acc + 32'd464) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd471);
      acc = acc + m_hist[idx] + 32'd478;
      idx = (idx + acc + 32'd485) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd492);
      acc = acc + m_hist[idx] + 32'd499;
      idx = (idx + acc + 32'd506) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd513);
      acc = acc + m_hist[idx] + 32'd520;
      idx = (idx + acc + 32'd527) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd534);
      acc = acc + m_hist[idx] + 32'd541;
      idx = (idx + acc + 32'd548) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd555);
      acc = acc + m_hist[idx] + 32'd562;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_14 extends comp_base;
    function new(int unsigned id = 32'd14);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd434);
      acc = acc + m_hist[idx] + 32'd441;
      idx = (idx + acc + 32'd448) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd455);
      acc = acc + m_hist[idx] + 32'd462;
      idx = (idx + acc + 32'd469) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd476);
      acc = acc + m_hist[idx] + 32'd483;
      idx = (idx + acc + 32'd490) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd497);
      acc = acc + m_hist[idx] + 32'd504;
      idx = (idx + acc + 32'd511) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd518);
      acc = acc + m_hist[idx] + 32'd525;
      idx = (idx + acc + 32'd532) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd539);
      acc = acc + m_hist[idx] + 32'd546;
      idx = (idx + acc + 32'd553) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd560);
      acc = acc + m_hist[idx] + 32'd567;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd447);
      acc = acc + m_hist[idx] + 32'd454;
      idx = (idx + acc + 32'd461) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd468);
      acc = acc + m_hist[idx] + 32'd475;
      idx = (idx + acc + 32'd482) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd489);
      acc = acc + m_hist[idx] + 32'd496;
      idx = (idx + acc + 32'd503) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd510);
      acc = acc + m_hist[idx] + 32'd517;
      idx = (idx + acc + 32'd524) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd531);
      acc = acc + m_hist[idx] + 32'd538;
      idx = (idx + acc + 32'd545) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd552);
      acc = acc + m_hist[idx] + 32'd559;
      idx = (idx + acc + 32'd566) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd573);
      acc = acc + m_hist[idx] + 32'd580;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd460);
      acc = acc + m_hist[idx] + 32'd467;
      idx = (idx + acc + 32'd474) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd481);
      acc = acc + m_hist[idx] + 32'd488;
      idx = (idx + acc + 32'd495) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd502);
      acc = acc + m_hist[idx] + 32'd509;
      idx = (idx + acc + 32'd516) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd523);
      acc = acc + m_hist[idx] + 32'd530;
      idx = (idx + acc + 32'd537) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd544);
      acc = acc + m_hist[idx] + 32'd551;
      idx = (idx + acc + 32'd558) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd565);
      acc = acc + m_hist[idx] + 32'd572;
      idx = (idx + acc + 32'd579) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd586);
      acc = acc + m_hist[idx] + 32'd593;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_15 extends comp_base;
    function new(int unsigned id = 32'd15);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd465);
      acc = acc + m_hist[idx] + 32'd472;
      idx = (idx + acc + 32'd479) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd486);
      acc = acc + m_hist[idx] + 32'd493;
      idx = (idx + acc + 32'd500) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd507);
      acc = acc + m_hist[idx] + 32'd514;
      idx = (idx + acc + 32'd521) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd528);
      acc = acc + m_hist[idx] + 32'd535;
      idx = (idx + acc + 32'd542) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd549);
      acc = acc + m_hist[idx] + 32'd556;
      idx = (idx + acc + 32'd563) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd570);
      acc = acc + m_hist[idx] + 32'd577;
      idx = (idx + acc + 32'd584) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd591);
      acc = acc + m_hist[idx] + 32'd598;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd478);
      acc = acc + m_hist[idx] + 32'd485;
      idx = (idx + acc + 32'd492) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd499);
      acc = acc + m_hist[idx] + 32'd506;
      idx = (idx + acc + 32'd513) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd520);
      acc = acc + m_hist[idx] + 32'd527;
      idx = (idx + acc + 32'd534) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd541);
      acc = acc + m_hist[idx] + 32'd548;
      idx = (idx + acc + 32'd555) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd562);
      acc = acc + m_hist[idx] + 32'd569;
      idx = (idx + acc + 32'd576) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd583);
      acc = acc + m_hist[idx] + 32'd590;
      idx = (idx + acc + 32'd597) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd604);
      acc = acc + m_hist[idx] + 32'd611;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd491);
      acc = acc + m_hist[idx] + 32'd498;
      idx = (idx + acc + 32'd505) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd512);
      acc = acc + m_hist[idx] + 32'd519;
      idx = (idx + acc + 32'd526) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd533);
      acc = acc + m_hist[idx] + 32'd540;
      idx = (idx + acc + 32'd547) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd554);
      acc = acc + m_hist[idx] + 32'd561;
      idx = (idx + acc + 32'd568) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd575);
      acc = acc + m_hist[idx] + 32'd582;
      idx = (idx + acc + 32'd589) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd596);
      acc = acc + m_hist[idx] + 32'd603;
      idx = (idx + acc + 32'd610) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd617);
      acc = acc + m_hist[idx] + 32'd624;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_16 extends comp_base;
    function new(int unsigned id = 32'd16);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd496);
      acc = acc + m_hist[idx] + 32'd503;
      idx = (idx + acc + 32'd510) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd517);
      acc = acc + m_hist[idx] + 32'd524;
      idx = (idx + acc + 32'd531) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd538);
      acc = acc + m_hist[idx] + 32'd545;
      idx = (idx + acc + 32'd552) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd559);
      acc = acc + m_hist[idx] + 32'd566;
      idx = (idx + acc + 32'd573) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd580);
      acc = acc + m_hist[idx] + 32'd587;
      idx = (idx + acc + 32'd594) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd601);
      acc = acc + m_hist[idx] + 32'd608;
      idx = (idx + acc + 32'd615) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd622);
      acc = acc + m_hist[idx] + 32'd629;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd509);
      acc = acc + m_hist[idx] + 32'd516;
      idx = (idx + acc + 32'd523) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd530);
      acc = acc + m_hist[idx] + 32'd537;
      idx = (idx + acc + 32'd544) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd551);
      acc = acc + m_hist[idx] + 32'd558;
      idx = (idx + acc + 32'd565) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd572);
      acc = acc + m_hist[idx] + 32'd579;
      idx = (idx + acc + 32'd586) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd593);
      acc = acc + m_hist[idx] + 32'd600;
      idx = (idx + acc + 32'd607) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd614);
      acc = acc + m_hist[idx] + 32'd621;
      idx = (idx + acc + 32'd628) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd635);
      acc = acc + m_hist[idx] + 32'd642;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd522);
      acc = acc + m_hist[idx] + 32'd529;
      idx = (idx + acc + 32'd536) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd543);
      acc = acc + m_hist[idx] + 32'd550;
      idx = (idx + acc + 32'd557) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd564);
      acc = acc + m_hist[idx] + 32'd571;
      idx = (idx + acc + 32'd578) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd585);
      acc = acc + m_hist[idx] + 32'd592;
      idx = (idx + acc + 32'd599) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd606);
      acc = acc + m_hist[idx] + 32'd613;
      idx = (idx + acc + 32'd620) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd627);
      acc = acc + m_hist[idx] + 32'd634;
      idx = (idx + acc + 32'd641) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd648);
      acc = acc + m_hist[idx] + 32'd655;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_17 extends comp_base;
    function new(int unsigned id = 32'd17);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd527);
      acc = acc + m_hist[idx] + 32'd534;
      idx = (idx + acc + 32'd541) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd548);
      acc = acc + m_hist[idx] + 32'd555;
      idx = (idx + acc + 32'd562) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd569);
      acc = acc + m_hist[idx] + 32'd576;
      idx = (idx + acc + 32'd583) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd590);
      acc = acc + m_hist[idx] + 32'd597;
      idx = (idx + acc + 32'd604) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd611);
      acc = acc + m_hist[idx] + 32'd618;
      idx = (idx + acc + 32'd625) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd632);
      acc = acc + m_hist[idx] + 32'd639;
      idx = (idx + acc + 32'd646) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd653);
      acc = acc + m_hist[idx] + 32'd660;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd540);
      acc = acc + m_hist[idx] + 32'd547;
      idx = (idx + acc + 32'd554) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd561);
      acc = acc + m_hist[idx] + 32'd568;
      idx = (idx + acc + 32'd575) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd582);
      acc = acc + m_hist[idx] + 32'd589;
      idx = (idx + acc + 32'd596) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd603);
      acc = acc + m_hist[idx] + 32'd610;
      idx = (idx + acc + 32'd617) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd624);
      acc = acc + m_hist[idx] + 32'd631;
      idx = (idx + acc + 32'd638) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd645);
      acc = acc + m_hist[idx] + 32'd652;
      idx = (idx + acc + 32'd659) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd666);
      acc = acc + m_hist[idx] + 32'd673;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd553);
      acc = acc + m_hist[idx] + 32'd560;
      idx = (idx + acc + 32'd567) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd574);
      acc = acc + m_hist[idx] + 32'd581;
      idx = (idx + acc + 32'd588) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd595);
      acc = acc + m_hist[idx] + 32'd602;
      idx = (idx + acc + 32'd609) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd616);
      acc = acc + m_hist[idx] + 32'd623;
      idx = (idx + acc + 32'd630) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd637);
      acc = acc + m_hist[idx] + 32'd644;
      idx = (idx + acc + 32'd651) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd658);
      acc = acc + m_hist[idx] + 32'd665;
      idx = (idx + acc + 32'd672) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd679);
      acc = acc + m_hist[idx] + 32'd686;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_18 extends comp_base;
    function new(int unsigned id = 32'd18);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd558);
      acc = acc + m_hist[idx] + 32'd565;
      idx = (idx + acc + 32'd572) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd579);
      acc = acc + m_hist[idx] + 32'd586;
      idx = (idx + acc + 32'd593) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd600);
      acc = acc + m_hist[idx] + 32'd607;
      idx = (idx + acc + 32'd614) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd621);
      acc = acc + m_hist[idx] + 32'd628;
      idx = (idx + acc + 32'd635) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd642);
      acc = acc + m_hist[idx] + 32'd649;
      idx = (idx + acc + 32'd656) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd663);
      acc = acc + m_hist[idx] + 32'd670;
      idx = (idx + acc + 32'd677) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd684);
      acc = acc + m_hist[idx] + 32'd691;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd571);
      acc = acc + m_hist[idx] + 32'd578;
      idx = (idx + acc + 32'd585) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd592);
      acc = acc + m_hist[idx] + 32'd599;
      idx = (idx + acc + 32'd606) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd613);
      acc = acc + m_hist[idx] + 32'd620;
      idx = (idx + acc + 32'd627) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd634);
      acc = acc + m_hist[idx] + 32'd641;
      idx = (idx + acc + 32'd648) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd655);
      acc = acc + m_hist[idx] + 32'd662;
      idx = (idx + acc + 32'd669) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd676);
      acc = acc + m_hist[idx] + 32'd683;
      idx = (idx + acc + 32'd690) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd697);
      acc = acc + m_hist[idx] + 32'd704;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd584);
      acc = acc + m_hist[idx] + 32'd591;
      idx = (idx + acc + 32'd598) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd605);
      acc = acc + m_hist[idx] + 32'd612;
      idx = (idx + acc + 32'd619) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd626);
      acc = acc + m_hist[idx] + 32'd633;
      idx = (idx + acc + 32'd640) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd647);
      acc = acc + m_hist[idx] + 32'd654;
      idx = (idx + acc + 32'd661) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd668);
      acc = acc + m_hist[idx] + 32'd675;
      idx = (idx + acc + 32'd682) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd689);
      acc = acc + m_hist[idx] + 32'd696;
      idx = (idx + acc + 32'd703) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd710);
      acc = acc + m_hist[idx] + 32'd717;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_19 extends comp_base;
    function new(int unsigned id = 32'd19);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd589);
      acc = acc + m_hist[idx] + 32'd596;
      idx = (idx + acc + 32'd603) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd610);
      acc = acc + m_hist[idx] + 32'd617;
      idx = (idx + acc + 32'd624) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd631);
      acc = acc + m_hist[idx] + 32'd638;
      idx = (idx + acc + 32'd645) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd652);
      acc = acc + m_hist[idx] + 32'd659;
      idx = (idx + acc + 32'd666) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd673);
      acc = acc + m_hist[idx] + 32'd680;
      idx = (idx + acc + 32'd687) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd694);
      acc = acc + m_hist[idx] + 32'd701;
      idx = (idx + acc + 32'd708) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd715);
      acc = acc + m_hist[idx] + 32'd722;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd602);
      acc = acc + m_hist[idx] + 32'd609;
      idx = (idx + acc + 32'd616) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd623);
      acc = acc + m_hist[idx] + 32'd630;
      idx = (idx + acc + 32'd637) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd644);
      acc = acc + m_hist[idx] + 32'd651;
      idx = (idx + acc + 32'd658) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd665);
      acc = acc + m_hist[idx] + 32'd672;
      idx = (idx + acc + 32'd679) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd686);
      acc = acc + m_hist[idx] + 32'd693;
      idx = (idx + acc + 32'd700) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd707);
      acc = acc + m_hist[idx] + 32'd714;
      idx = (idx + acc + 32'd721) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd728);
      acc = acc + m_hist[idx] + 32'd735;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd615);
      acc = acc + m_hist[idx] + 32'd622;
      idx = (idx + acc + 32'd629) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd636);
      acc = acc + m_hist[idx] + 32'd643;
      idx = (idx + acc + 32'd650) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd657);
      acc = acc + m_hist[idx] + 32'd664;
      idx = (idx + acc + 32'd671) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd678);
      acc = acc + m_hist[idx] + 32'd685;
      idx = (idx + acc + 32'd692) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd699);
      acc = acc + m_hist[idx] + 32'd706;
      idx = (idx + acc + 32'd713) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd720);
      acc = acc + m_hist[idx] + 32'd727;
      idx = (idx + acc + 32'd734) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd741);
      acc = acc + m_hist[idx] + 32'd748;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_20 extends comp_base;
    function new(int unsigned id = 32'd20);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd620);
      acc = acc + m_hist[idx] + 32'd627;
      idx = (idx + acc + 32'd634) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd641);
      acc = acc + m_hist[idx] + 32'd648;
      idx = (idx + acc + 32'd655) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd662);
      acc = acc + m_hist[idx] + 32'd669;
      idx = (idx + acc + 32'd676) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd683);
      acc = acc + m_hist[idx] + 32'd690;
      idx = (idx + acc + 32'd697) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd704);
      acc = acc + m_hist[idx] + 32'd711;
      idx = (idx + acc + 32'd718) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd725);
      acc = acc + m_hist[idx] + 32'd732;
      idx = (idx + acc + 32'd739) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd746);
      acc = acc + m_hist[idx] + 32'd753;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd633);
      acc = acc + m_hist[idx] + 32'd640;
      idx = (idx + acc + 32'd647) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd654);
      acc = acc + m_hist[idx] + 32'd661;
      idx = (idx + acc + 32'd668) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd675);
      acc = acc + m_hist[idx] + 32'd682;
      idx = (idx + acc + 32'd689) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd696);
      acc = acc + m_hist[idx] + 32'd703;
      idx = (idx + acc + 32'd710) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd717);
      acc = acc + m_hist[idx] + 32'd724;
      idx = (idx + acc + 32'd731) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd738);
      acc = acc + m_hist[idx] + 32'd745;
      idx = (idx + acc + 32'd752) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd759);
      acc = acc + m_hist[idx] + 32'd766;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd646);
      acc = acc + m_hist[idx] + 32'd653;
      idx = (idx + acc + 32'd660) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd667);
      acc = acc + m_hist[idx] + 32'd674;
      idx = (idx + acc + 32'd681) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd688);
      acc = acc + m_hist[idx] + 32'd695;
      idx = (idx + acc + 32'd702) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd709);
      acc = acc + m_hist[idx] + 32'd716;
      idx = (idx + acc + 32'd723) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd730);
      acc = acc + m_hist[idx] + 32'd737;
      idx = (idx + acc + 32'd744) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd751);
      acc = acc + m_hist[idx] + 32'd758;
      idx = (idx + acc + 32'd765) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd772);
      acc = acc + m_hist[idx] + 32'd779;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_21 extends comp_base;
    function new(int unsigned id = 32'd21);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd651);
      acc = acc + m_hist[idx] + 32'd658;
      idx = (idx + acc + 32'd665) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd672);
      acc = acc + m_hist[idx] + 32'd679;
      idx = (idx + acc + 32'd686) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd693);
      acc = acc + m_hist[idx] + 32'd700;
      idx = (idx + acc + 32'd707) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd714);
      acc = acc + m_hist[idx] + 32'd721;
      idx = (idx + acc + 32'd728) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd735);
      acc = acc + m_hist[idx] + 32'd742;
      idx = (idx + acc + 32'd749) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd756);
      acc = acc + m_hist[idx] + 32'd763;
      idx = (idx + acc + 32'd770) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd777);
      acc = acc + m_hist[idx] + 32'd784;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd664);
      acc = acc + m_hist[idx] + 32'd671;
      idx = (idx + acc + 32'd678) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd685);
      acc = acc + m_hist[idx] + 32'd692;
      idx = (idx + acc + 32'd699) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd706);
      acc = acc + m_hist[idx] + 32'd713;
      idx = (idx + acc + 32'd720) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd727);
      acc = acc + m_hist[idx] + 32'd734;
      idx = (idx + acc + 32'd741) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd748);
      acc = acc + m_hist[idx] + 32'd755;
      idx = (idx + acc + 32'd762) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd769);
      acc = acc + m_hist[idx] + 32'd776;
      idx = (idx + acc + 32'd783) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd790);
      acc = acc + m_hist[idx] + 32'd797;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd677);
      acc = acc + m_hist[idx] + 32'd684;
      idx = (idx + acc + 32'd691) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd698);
      acc = acc + m_hist[idx] + 32'd705;
      idx = (idx + acc + 32'd712) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd719);
      acc = acc + m_hist[idx] + 32'd726;
      idx = (idx + acc + 32'd733) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd740);
      acc = acc + m_hist[idx] + 32'd747;
      idx = (idx + acc + 32'd754) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd761);
      acc = acc + m_hist[idx] + 32'd768;
      idx = (idx + acc + 32'd775) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd782);
      acc = acc + m_hist[idx] + 32'd789;
      idx = (idx + acc + 32'd796) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd803);
      acc = acc + m_hist[idx] + 32'd810;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_22 extends comp_base;
    function new(int unsigned id = 32'd22);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd682);
      acc = acc + m_hist[idx] + 32'd689;
      idx = (idx + acc + 32'd696) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd703);
      acc = acc + m_hist[idx] + 32'd710;
      idx = (idx + acc + 32'd717) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd724);
      acc = acc + m_hist[idx] + 32'd731;
      idx = (idx + acc + 32'd738) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd745);
      acc = acc + m_hist[idx] + 32'd752;
      idx = (idx + acc + 32'd759) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd766);
      acc = acc + m_hist[idx] + 32'd773;
      idx = (idx + acc + 32'd780) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd787);
      acc = acc + m_hist[idx] + 32'd794;
      idx = (idx + acc + 32'd801) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd808);
      acc = acc + m_hist[idx] + 32'd815;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd695);
      acc = acc + m_hist[idx] + 32'd702;
      idx = (idx + acc + 32'd709) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd716);
      acc = acc + m_hist[idx] + 32'd723;
      idx = (idx + acc + 32'd730) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd737);
      acc = acc + m_hist[idx] + 32'd744;
      idx = (idx + acc + 32'd751) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd758);
      acc = acc + m_hist[idx] + 32'd765;
      idx = (idx + acc + 32'd772) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd779);
      acc = acc + m_hist[idx] + 32'd786;
      idx = (idx + acc + 32'd793) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd800);
      acc = acc + m_hist[idx] + 32'd807;
      idx = (idx + acc + 32'd814) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd821);
      acc = acc + m_hist[idx] + 32'd828;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd708);
      acc = acc + m_hist[idx] + 32'd715;
      idx = (idx + acc + 32'd722) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd729);
      acc = acc + m_hist[idx] + 32'd736;
      idx = (idx + acc + 32'd743) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd750);
      acc = acc + m_hist[idx] + 32'd757;
      idx = (idx + acc + 32'd764) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd771);
      acc = acc + m_hist[idx] + 32'd778;
      idx = (idx + acc + 32'd785) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd792);
      acc = acc + m_hist[idx] + 32'd799;
      idx = (idx + acc + 32'd806) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd813);
      acc = acc + m_hist[idx] + 32'd820;
      idx = (idx + acc + 32'd827) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd834);
      acc = acc + m_hist[idx] + 32'd841;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_23 extends comp_base;
    function new(int unsigned id = 32'd23);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd713);
      acc = acc + m_hist[idx] + 32'd720;
      idx = (idx + acc + 32'd727) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd734);
      acc = acc + m_hist[idx] + 32'd741;
      idx = (idx + acc + 32'd748) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd755);
      acc = acc + m_hist[idx] + 32'd762;
      idx = (idx + acc + 32'd769) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd776);
      acc = acc + m_hist[idx] + 32'd783;
      idx = (idx + acc + 32'd790) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd797);
      acc = acc + m_hist[idx] + 32'd804;
      idx = (idx + acc + 32'd811) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd818);
      acc = acc + m_hist[idx] + 32'd825;
      idx = (idx + acc + 32'd832) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd839);
      acc = acc + m_hist[idx] + 32'd846;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd726);
      acc = acc + m_hist[idx] + 32'd733;
      idx = (idx + acc + 32'd740) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd747);
      acc = acc + m_hist[idx] + 32'd754;
      idx = (idx + acc + 32'd761) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd768);
      acc = acc + m_hist[idx] + 32'd775;
      idx = (idx + acc + 32'd782) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd789);
      acc = acc + m_hist[idx] + 32'd796;
      idx = (idx + acc + 32'd803) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd810);
      acc = acc + m_hist[idx] + 32'd817;
      idx = (idx + acc + 32'd824) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd831);
      acc = acc + m_hist[idx] + 32'd838;
      idx = (idx + acc + 32'd845) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd852);
      acc = acc + m_hist[idx] + 32'd859;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd739);
      acc = acc + m_hist[idx] + 32'd746;
      idx = (idx + acc + 32'd753) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd760);
      acc = acc + m_hist[idx] + 32'd767;
      idx = (idx + acc + 32'd774) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd781);
      acc = acc + m_hist[idx] + 32'd788;
      idx = (idx + acc + 32'd795) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd802);
      acc = acc + m_hist[idx] + 32'd809;
      idx = (idx + acc + 32'd816) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd823);
      acc = acc + m_hist[idx] + 32'd830;
      idx = (idx + acc + 32'd837) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd844);
      acc = acc + m_hist[idx] + 32'd851;
      idx = (idx + acc + 32'd858) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd865);
      acc = acc + m_hist[idx] + 32'd872;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_24 extends comp_base;
    function new(int unsigned id = 32'd24);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd744);
      acc = acc + m_hist[idx] + 32'd751;
      idx = (idx + acc + 32'd758) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd765);
      acc = acc + m_hist[idx] + 32'd772;
      idx = (idx + acc + 32'd779) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd786);
      acc = acc + m_hist[idx] + 32'd793;
      idx = (idx + acc + 32'd800) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd807);
      acc = acc + m_hist[idx] + 32'd814;
      idx = (idx + acc + 32'd821) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd828);
      acc = acc + m_hist[idx] + 32'd835;
      idx = (idx + acc + 32'd842) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd849);
      acc = acc + m_hist[idx] + 32'd856;
      idx = (idx + acc + 32'd863) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd870);
      acc = acc + m_hist[idx] + 32'd877;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd757);
      acc = acc + m_hist[idx] + 32'd764;
      idx = (idx + acc + 32'd771) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd778);
      acc = acc + m_hist[idx] + 32'd785;
      idx = (idx + acc + 32'd792) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd799);
      acc = acc + m_hist[idx] + 32'd806;
      idx = (idx + acc + 32'd813) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd820);
      acc = acc + m_hist[idx] + 32'd827;
      idx = (idx + acc + 32'd834) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd841);
      acc = acc + m_hist[idx] + 32'd848;
      idx = (idx + acc + 32'd855) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd862);
      acc = acc + m_hist[idx] + 32'd869;
      idx = (idx + acc + 32'd876) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd883);
      acc = acc + m_hist[idx] + 32'd890;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd770);
      acc = acc + m_hist[idx] + 32'd777;
      idx = (idx + acc + 32'd784) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd791);
      acc = acc + m_hist[idx] + 32'd798;
      idx = (idx + acc + 32'd805) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd812);
      acc = acc + m_hist[idx] + 32'd819;
      idx = (idx + acc + 32'd826) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd833);
      acc = acc + m_hist[idx] + 32'd840;
      idx = (idx + acc + 32'd847) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd854);
      acc = acc + m_hist[idx] + 32'd861;
      idx = (idx + acc + 32'd868) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd875);
      acc = acc + m_hist[idx] + 32'd882;
      idx = (idx + acc + 32'd889) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd896);
      acc = acc + m_hist[idx] + 32'd903;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_25 extends comp_base;
    function new(int unsigned id = 32'd25);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd775);
      acc = acc + m_hist[idx] + 32'd782;
      idx = (idx + acc + 32'd789) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd796);
      acc = acc + m_hist[idx] + 32'd803;
      idx = (idx + acc + 32'd810) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd817);
      acc = acc + m_hist[idx] + 32'd824;
      idx = (idx + acc + 32'd831) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd838);
      acc = acc + m_hist[idx] + 32'd845;
      idx = (idx + acc + 32'd852) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd859);
      acc = acc + m_hist[idx] + 32'd866;
      idx = (idx + acc + 32'd873) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd880);
      acc = acc + m_hist[idx] + 32'd887;
      idx = (idx + acc + 32'd894) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd901);
      acc = acc + m_hist[idx] + 32'd908;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd788);
      acc = acc + m_hist[idx] + 32'd795;
      idx = (idx + acc + 32'd802) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd809);
      acc = acc + m_hist[idx] + 32'd816;
      idx = (idx + acc + 32'd823) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd830);
      acc = acc + m_hist[idx] + 32'd837;
      idx = (idx + acc + 32'd844) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd851);
      acc = acc + m_hist[idx] + 32'd858;
      idx = (idx + acc + 32'd865) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd872);
      acc = acc + m_hist[idx] + 32'd879;
      idx = (idx + acc + 32'd886) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd893);
      acc = acc + m_hist[idx] + 32'd900;
      idx = (idx + acc + 32'd907) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd914);
      acc = acc + m_hist[idx] + 32'd921;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd801);
      acc = acc + m_hist[idx] + 32'd808;
      idx = (idx + acc + 32'd815) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd822);
      acc = acc + m_hist[idx] + 32'd829;
      idx = (idx + acc + 32'd836) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd843);
      acc = acc + m_hist[idx] + 32'd850;
      idx = (idx + acc + 32'd857) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd864);
      acc = acc + m_hist[idx] + 32'd871;
      idx = (idx + acc + 32'd878) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd885);
      acc = acc + m_hist[idx] + 32'd892;
      idx = (idx + acc + 32'd899) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd906);
      acc = acc + m_hist[idx] + 32'd913;
      idx = (idx + acc + 32'd920) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd927);
      acc = acc + m_hist[idx] + 32'd934;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_26 extends comp_base;
    function new(int unsigned id = 32'd26);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd806);
      acc = acc + m_hist[idx] + 32'd813;
      idx = (idx + acc + 32'd820) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd827);
      acc = acc + m_hist[idx] + 32'd834;
      idx = (idx + acc + 32'd841) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd848);
      acc = acc + m_hist[idx] + 32'd855;
      idx = (idx + acc + 32'd862) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd869);
      acc = acc + m_hist[idx] + 32'd876;
      idx = (idx + acc + 32'd883) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd890);
      acc = acc + m_hist[idx] + 32'd897;
      idx = (idx + acc + 32'd904) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd911);
      acc = acc + m_hist[idx] + 32'd918;
      idx = (idx + acc + 32'd925) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd932);
      acc = acc + m_hist[idx] + 32'd939;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd819);
      acc = acc + m_hist[idx] + 32'd826;
      idx = (idx + acc + 32'd833) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd840);
      acc = acc + m_hist[idx] + 32'd847;
      idx = (idx + acc + 32'd854) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd861);
      acc = acc + m_hist[idx] + 32'd868;
      idx = (idx + acc + 32'd875) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd882);
      acc = acc + m_hist[idx] + 32'd889;
      idx = (idx + acc + 32'd896) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd903);
      acc = acc + m_hist[idx] + 32'd910;
      idx = (idx + acc + 32'd917) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd924);
      acc = acc + m_hist[idx] + 32'd931;
      idx = (idx + acc + 32'd938) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd945);
      acc = acc + m_hist[idx] + 32'd952;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd832);
      acc = acc + m_hist[idx] + 32'd839;
      idx = (idx + acc + 32'd846) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd853);
      acc = acc + m_hist[idx] + 32'd860;
      idx = (idx + acc + 32'd867) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd874);
      acc = acc + m_hist[idx] + 32'd881;
      idx = (idx + acc + 32'd888) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd895);
      acc = acc + m_hist[idx] + 32'd902;
      idx = (idx + acc + 32'd909) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd916);
      acc = acc + m_hist[idx] + 32'd923;
      idx = (idx + acc + 32'd930) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd937);
      acc = acc + m_hist[idx] + 32'd944;
      idx = (idx + acc + 32'd951) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd958);
      acc = acc + m_hist[idx] + 32'd965;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_27 extends comp_base;
    function new(int unsigned id = 32'd27);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd837);
      acc = acc + m_hist[idx] + 32'd844;
      idx = (idx + acc + 32'd851) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd858);
      acc = acc + m_hist[idx] + 32'd865;
      idx = (idx + acc + 32'd872) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd879);
      acc = acc + m_hist[idx] + 32'd886;
      idx = (idx + acc + 32'd893) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd900);
      acc = acc + m_hist[idx] + 32'd907;
      idx = (idx + acc + 32'd914) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd921);
      acc = acc + m_hist[idx] + 32'd928;
      idx = (idx + acc + 32'd935) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd942);
      acc = acc + m_hist[idx] + 32'd949;
      idx = (idx + acc + 32'd956) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd963);
      acc = acc + m_hist[idx] + 32'd970;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd850);
      acc = acc + m_hist[idx] + 32'd857;
      idx = (idx + acc + 32'd864) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd871);
      acc = acc + m_hist[idx] + 32'd878;
      idx = (idx + acc + 32'd885) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd892);
      acc = acc + m_hist[idx] + 32'd899;
      idx = (idx + acc + 32'd906) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd913);
      acc = acc + m_hist[idx] + 32'd920;
      idx = (idx + acc + 32'd927) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd934);
      acc = acc + m_hist[idx] + 32'd941;
      idx = (idx + acc + 32'd948) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd955);
      acc = acc + m_hist[idx] + 32'd962;
      idx = (idx + acc + 32'd969) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd976);
      acc = acc + m_hist[idx] + 32'd983;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd863);
      acc = acc + m_hist[idx] + 32'd870;
      idx = (idx + acc + 32'd877) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd884);
      acc = acc + m_hist[idx] + 32'd891;
      idx = (idx + acc + 32'd898) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd905);
      acc = acc + m_hist[idx] + 32'd912;
      idx = (idx + acc + 32'd919) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd926);
      acc = acc + m_hist[idx] + 32'd933;
      idx = (idx + acc + 32'd940) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd947);
      acc = acc + m_hist[idx] + 32'd954;
      idx = (idx + acc + 32'd961) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd968);
      acc = acc + m_hist[idx] + 32'd975;
      idx = (idx + acc + 32'd982) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd989);
      acc = acc + m_hist[idx] + 32'd996;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_28 extends comp_base;
    function new(int unsigned id = 32'd28);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd868);
      acc = acc + m_hist[idx] + 32'd875;
      idx = (idx + acc + 32'd882) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd889);
      acc = acc + m_hist[idx] + 32'd896;
      idx = (idx + acc + 32'd903) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd910);
      acc = acc + m_hist[idx] + 32'd917;
      idx = (idx + acc + 32'd924) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd931);
      acc = acc + m_hist[idx] + 32'd938;
      idx = (idx + acc + 32'd945) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd952);
      acc = acc + m_hist[idx] + 32'd959;
      idx = (idx + acc + 32'd966) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd973);
      acc = acc + m_hist[idx] + 32'd980;
      idx = (idx + acc + 32'd987) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd994);
      acc = acc + m_hist[idx] + 32'd1001;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd881);
      acc = acc + m_hist[idx] + 32'd888;
      idx = (idx + acc + 32'd895) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd902);
      acc = acc + m_hist[idx] + 32'd909;
      idx = (idx + acc + 32'd916) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd923);
      acc = acc + m_hist[idx] + 32'd930;
      idx = (idx + acc + 32'd937) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd944);
      acc = acc + m_hist[idx] + 32'd951;
      idx = (idx + acc + 32'd958) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd965);
      acc = acc + m_hist[idx] + 32'd972;
      idx = (idx + acc + 32'd979) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd986);
      acc = acc + m_hist[idx] + 32'd993;
      idx = (idx + acc + 32'd1000) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1007);
      acc = acc + m_hist[idx] + 32'd1014;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd894);
      acc = acc + m_hist[idx] + 32'd901;
      idx = (idx + acc + 32'd908) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd915);
      acc = acc + m_hist[idx] + 32'd922;
      idx = (idx + acc + 32'd929) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd936);
      acc = acc + m_hist[idx] + 32'd943;
      idx = (idx + acc + 32'd950) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd957);
      acc = acc + m_hist[idx] + 32'd964;
      idx = (idx + acc + 32'd971) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd978);
      acc = acc + m_hist[idx] + 32'd985;
      idx = (idx + acc + 32'd992) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd999);
      acc = acc + m_hist[idx] + 32'd1006;
      idx = (idx + acc + 32'd1013) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1020);
      acc = acc + m_hist[idx] + 32'd1027;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_29 extends comp_base;
    function new(int unsigned id = 32'd29);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd899);
      acc = acc + m_hist[idx] + 32'd906;
      idx = (idx + acc + 32'd913) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd920);
      acc = acc + m_hist[idx] + 32'd927;
      idx = (idx + acc + 32'd934) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd941);
      acc = acc + m_hist[idx] + 32'd948;
      idx = (idx + acc + 32'd955) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd962);
      acc = acc + m_hist[idx] + 32'd969;
      idx = (idx + acc + 32'd976) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd983);
      acc = acc + m_hist[idx] + 32'd990;
      idx = (idx + acc + 32'd997) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1004);
      acc = acc + m_hist[idx] + 32'd1011;
      idx = (idx + acc + 32'd1018) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1025);
      acc = acc + m_hist[idx] + 32'd1032;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd912);
      acc = acc + m_hist[idx] + 32'd919;
      idx = (idx + acc + 32'd926) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd933);
      acc = acc + m_hist[idx] + 32'd940;
      idx = (idx + acc + 32'd947) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd954);
      acc = acc + m_hist[idx] + 32'd961;
      idx = (idx + acc + 32'd968) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd975);
      acc = acc + m_hist[idx] + 32'd982;
      idx = (idx + acc + 32'd989) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd996);
      acc = acc + m_hist[idx] + 32'd1003;
      idx = (idx + acc + 32'd1010) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1017);
      acc = acc + m_hist[idx] + 32'd1024;
      idx = (idx + acc + 32'd1031) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1038);
      acc = acc + m_hist[idx] + 32'd1045;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd925);
      acc = acc + m_hist[idx] + 32'd932;
      idx = (idx + acc + 32'd939) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd946);
      acc = acc + m_hist[idx] + 32'd953;
      idx = (idx + acc + 32'd960) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd967);
      acc = acc + m_hist[idx] + 32'd974;
      idx = (idx + acc + 32'd981) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd988);
      acc = acc + m_hist[idx] + 32'd995;
      idx = (idx + acc + 32'd1002) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1009);
      acc = acc + m_hist[idx] + 32'd1016;
      idx = (idx + acc + 32'd1023) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1030);
      acc = acc + m_hist[idx] + 32'd1037;
      idx = (idx + acc + 32'd1044) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1051);
      acc = acc + m_hist[idx] + 32'd1058;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_30 extends comp_base;
    function new(int unsigned id = 32'd30);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd930);
      acc = acc + m_hist[idx] + 32'd937;
      idx = (idx + acc + 32'd944) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd951);
      acc = acc + m_hist[idx] + 32'd958;
      idx = (idx + acc + 32'd965) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd972);
      acc = acc + m_hist[idx] + 32'd979;
      idx = (idx + acc + 32'd986) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd993);
      acc = acc + m_hist[idx] + 32'd1000;
      idx = (idx + acc + 32'd1007) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1014);
      acc = acc + m_hist[idx] + 32'd1021;
      idx = (idx + acc + 32'd1028) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1035);
      acc = acc + m_hist[idx] + 32'd1042;
      idx = (idx + acc + 32'd1049) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1056);
      acc = acc + m_hist[idx] + 32'd1063;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd943);
      acc = acc + m_hist[idx] + 32'd950;
      idx = (idx + acc + 32'd957) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd964);
      acc = acc + m_hist[idx] + 32'd971;
      idx = (idx + acc + 32'd978) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd985);
      acc = acc + m_hist[idx] + 32'd992;
      idx = (idx + acc + 32'd999) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1006);
      acc = acc + m_hist[idx] + 32'd1013;
      idx = (idx + acc + 32'd1020) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1027);
      acc = acc + m_hist[idx] + 32'd1034;
      idx = (idx + acc + 32'd1041) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1048);
      acc = acc + m_hist[idx] + 32'd1055;
      idx = (idx + acc + 32'd1062) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1069);
      acc = acc + m_hist[idx] + 32'd1076;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd956);
      acc = acc + m_hist[idx] + 32'd963;
      idx = (idx + acc + 32'd970) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd977);
      acc = acc + m_hist[idx] + 32'd984;
      idx = (idx + acc + 32'd991) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd998);
      acc = acc + m_hist[idx] + 32'd1005;
      idx = (idx + acc + 32'd1012) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1019);
      acc = acc + m_hist[idx] + 32'd1026;
      idx = (idx + acc + 32'd1033) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1040);
      acc = acc + m_hist[idx] + 32'd1047;
      idx = (idx + acc + 32'd1054) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1061);
      acc = acc + m_hist[idx] + 32'd1068;
      idx = (idx + acc + 32'd1075) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1082);
      acc = acc + m_hist[idx] + 32'd1089;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_31 extends comp_base;
    function new(int unsigned id = 32'd31);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd961);
      acc = acc + m_hist[idx] + 32'd968;
      idx = (idx + acc + 32'd975) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd982);
      acc = acc + m_hist[idx] + 32'd989;
      idx = (idx + acc + 32'd996) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1003);
      acc = acc + m_hist[idx] + 32'd1010;
      idx = (idx + acc + 32'd1017) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1024);
      acc = acc + m_hist[idx] + 32'd1031;
      idx = (idx + acc + 32'd1038) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1045);
      acc = acc + m_hist[idx] + 32'd1052;
      idx = (idx + acc + 32'd1059) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1066);
      acc = acc + m_hist[idx] + 32'd1073;
      idx = (idx + acc + 32'd1080) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1087);
      acc = acc + m_hist[idx] + 32'd1094;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd974);
      acc = acc + m_hist[idx] + 32'd981;
      idx = (idx + acc + 32'd988) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd995);
      acc = acc + m_hist[idx] + 32'd1002;
      idx = (idx + acc + 32'd1009) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1016);
      acc = acc + m_hist[idx] + 32'd1023;
      idx = (idx + acc + 32'd1030) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1037);
      acc = acc + m_hist[idx] + 32'd1044;
      idx = (idx + acc + 32'd1051) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1058);
      acc = acc + m_hist[idx] + 32'd1065;
      idx = (idx + acc + 32'd1072) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1079);
      acc = acc + m_hist[idx] + 32'd1086;
      idx = (idx + acc + 32'd1093) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1100);
      acc = acc + m_hist[idx] + 32'd1107;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd987);
      acc = acc + m_hist[idx] + 32'd994;
      idx = (idx + acc + 32'd1001) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1008);
      acc = acc + m_hist[idx] + 32'd1015;
      idx = (idx + acc + 32'd1022) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1029);
      acc = acc + m_hist[idx] + 32'd1036;
      idx = (idx + acc + 32'd1043) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1050);
      acc = acc + m_hist[idx] + 32'd1057;
      idx = (idx + acc + 32'd1064) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1071);
      acc = acc + m_hist[idx] + 32'd1078;
      idx = (idx + acc + 32'd1085) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1092);
      acc = acc + m_hist[idx] + 32'd1099;
      idx = (idx + acc + 32'd1106) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1113);
      acc = acc + m_hist[idx] + 32'd1120;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_32 extends comp_base;
    function new(int unsigned id = 32'd32);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd992);
      acc = acc + m_hist[idx] + 32'd999;
      idx = (idx + acc + 32'd1006) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1013);
      acc = acc + m_hist[idx] + 32'd1020;
      idx = (idx + acc + 32'd1027) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1034);
      acc = acc + m_hist[idx] + 32'd1041;
      idx = (idx + acc + 32'd1048) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1055);
      acc = acc + m_hist[idx] + 32'd1062;
      idx = (idx + acc + 32'd1069) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1076);
      acc = acc + m_hist[idx] + 32'd1083;
      idx = (idx + acc + 32'd1090) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1097);
      acc = acc + m_hist[idx] + 32'd1104;
      idx = (idx + acc + 32'd1111) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1118);
      acc = acc + m_hist[idx] + 32'd1125;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1005);
      acc = acc + m_hist[idx] + 32'd1012;
      idx = (idx + acc + 32'd1019) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1026);
      acc = acc + m_hist[idx] + 32'd1033;
      idx = (idx + acc + 32'd1040) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1047);
      acc = acc + m_hist[idx] + 32'd1054;
      idx = (idx + acc + 32'd1061) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1068);
      acc = acc + m_hist[idx] + 32'd1075;
      idx = (idx + acc + 32'd1082) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1089);
      acc = acc + m_hist[idx] + 32'd1096;
      idx = (idx + acc + 32'd1103) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1110);
      acc = acc + m_hist[idx] + 32'd1117;
      idx = (idx + acc + 32'd1124) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1131);
      acc = acc + m_hist[idx] + 32'd1138;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1018);
      acc = acc + m_hist[idx] + 32'd1025;
      idx = (idx + acc + 32'd1032) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1039);
      acc = acc + m_hist[idx] + 32'd1046;
      idx = (idx + acc + 32'd1053) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1060);
      acc = acc + m_hist[idx] + 32'd1067;
      idx = (idx + acc + 32'd1074) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1081);
      acc = acc + m_hist[idx] + 32'd1088;
      idx = (idx + acc + 32'd1095) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1102);
      acc = acc + m_hist[idx] + 32'd1109;
      idx = (idx + acc + 32'd1116) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1123);
      acc = acc + m_hist[idx] + 32'd1130;
      idx = (idx + acc + 32'd1137) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1144);
      acc = acc + m_hist[idx] + 32'd1151;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_33 extends comp_base;
    function new(int unsigned id = 32'd33);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1023);
      acc = acc + m_hist[idx] + 32'd1030;
      idx = (idx + acc + 32'd1037) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1044);
      acc = acc + m_hist[idx] + 32'd1051;
      idx = (idx + acc + 32'd1058) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1065);
      acc = acc + m_hist[idx] + 32'd1072;
      idx = (idx + acc + 32'd1079) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1086);
      acc = acc + m_hist[idx] + 32'd1093;
      idx = (idx + acc + 32'd1100) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1107);
      acc = acc + m_hist[idx] + 32'd1114;
      idx = (idx + acc + 32'd1121) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1128);
      acc = acc + m_hist[idx] + 32'd1135;
      idx = (idx + acc + 32'd1142) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1149);
      acc = acc + m_hist[idx] + 32'd1156;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1036);
      acc = acc + m_hist[idx] + 32'd1043;
      idx = (idx + acc + 32'd1050) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1057);
      acc = acc + m_hist[idx] + 32'd1064;
      idx = (idx + acc + 32'd1071) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1078);
      acc = acc + m_hist[idx] + 32'd1085;
      idx = (idx + acc + 32'd1092) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1099);
      acc = acc + m_hist[idx] + 32'd1106;
      idx = (idx + acc + 32'd1113) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1120);
      acc = acc + m_hist[idx] + 32'd1127;
      idx = (idx + acc + 32'd1134) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1141);
      acc = acc + m_hist[idx] + 32'd1148;
      idx = (idx + acc + 32'd1155) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1162);
      acc = acc + m_hist[idx] + 32'd1169;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1049);
      acc = acc + m_hist[idx] + 32'd1056;
      idx = (idx + acc + 32'd1063) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1070);
      acc = acc + m_hist[idx] + 32'd1077;
      idx = (idx + acc + 32'd1084) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1091);
      acc = acc + m_hist[idx] + 32'd1098;
      idx = (idx + acc + 32'd1105) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1112);
      acc = acc + m_hist[idx] + 32'd1119;
      idx = (idx + acc + 32'd1126) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1133);
      acc = acc + m_hist[idx] + 32'd1140;
      idx = (idx + acc + 32'd1147) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1154);
      acc = acc + m_hist[idx] + 32'd1161;
      idx = (idx + acc + 32'd1168) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1175);
      acc = acc + m_hist[idx] + 32'd1182;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_34 extends comp_base;
    function new(int unsigned id = 32'd34);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1054);
      acc = acc + m_hist[idx] + 32'd1061;
      idx = (idx + acc + 32'd1068) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1075);
      acc = acc + m_hist[idx] + 32'd1082;
      idx = (idx + acc + 32'd1089) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1096);
      acc = acc + m_hist[idx] + 32'd1103;
      idx = (idx + acc + 32'd1110) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1117);
      acc = acc + m_hist[idx] + 32'd1124;
      idx = (idx + acc + 32'd1131) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1138);
      acc = acc + m_hist[idx] + 32'd1145;
      idx = (idx + acc + 32'd1152) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1159);
      acc = acc + m_hist[idx] + 32'd1166;
      idx = (idx + acc + 32'd1173) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1180);
      acc = acc + m_hist[idx] + 32'd1187;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1067);
      acc = acc + m_hist[idx] + 32'd1074;
      idx = (idx + acc + 32'd1081) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1088);
      acc = acc + m_hist[idx] + 32'd1095;
      idx = (idx + acc + 32'd1102) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1109);
      acc = acc + m_hist[idx] + 32'd1116;
      idx = (idx + acc + 32'd1123) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1130);
      acc = acc + m_hist[idx] + 32'd1137;
      idx = (idx + acc + 32'd1144) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1151);
      acc = acc + m_hist[idx] + 32'd1158;
      idx = (idx + acc + 32'd1165) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1172);
      acc = acc + m_hist[idx] + 32'd1179;
      idx = (idx + acc + 32'd1186) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1193);
      acc = acc + m_hist[idx] + 32'd1200;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1080);
      acc = acc + m_hist[idx] + 32'd1087;
      idx = (idx + acc + 32'd1094) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1101);
      acc = acc + m_hist[idx] + 32'd1108;
      idx = (idx + acc + 32'd1115) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1122);
      acc = acc + m_hist[idx] + 32'd1129;
      idx = (idx + acc + 32'd1136) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1143);
      acc = acc + m_hist[idx] + 32'd1150;
      idx = (idx + acc + 32'd1157) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1164);
      acc = acc + m_hist[idx] + 32'd1171;
      idx = (idx + acc + 32'd1178) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1185);
      acc = acc + m_hist[idx] + 32'd1192;
      idx = (idx + acc + 32'd1199) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1206);
      acc = acc + m_hist[idx] + 32'd1213;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_35 extends comp_base;
    function new(int unsigned id = 32'd35);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1085);
      acc = acc + m_hist[idx] + 32'd1092;
      idx = (idx + acc + 32'd1099) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1106);
      acc = acc + m_hist[idx] + 32'd1113;
      idx = (idx + acc + 32'd1120) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1127);
      acc = acc + m_hist[idx] + 32'd1134;
      idx = (idx + acc + 32'd1141) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1148);
      acc = acc + m_hist[idx] + 32'd1155;
      idx = (idx + acc + 32'd1162) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1169);
      acc = acc + m_hist[idx] + 32'd1176;
      idx = (idx + acc + 32'd1183) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1190);
      acc = acc + m_hist[idx] + 32'd1197;
      idx = (idx + acc + 32'd1204) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1211);
      acc = acc + m_hist[idx] + 32'd1218;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1098);
      acc = acc + m_hist[idx] + 32'd1105;
      idx = (idx + acc + 32'd1112) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1119);
      acc = acc + m_hist[idx] + 32'd1126;
      idx = (idx + acc + 32'd1133) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1140);
      acc = acc + m_hist[idx] + 32'd1147;
      idx = (idx + acc + 32'd1154) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1161);
      acc = acc + m_hist[idx] + 32'd1168;
      idx = (idx + acc + 32'd1175) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1182);
      acc = acc + m_hist[idx] + 32'd1189;
      idx = (idx + acc + 32'd1196) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1203);
      acc = acc + m_hist[idx] + 32'd1210;
      idx = (idx + acc + 32'd1217) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1224);
      acc = acc + m_hist[idx] + 32'd1231;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1111);
      acc = acc + m_hist[idx] + 32'd1118;
      idx = (idx + acc + 32'd1125) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1132);
      acc = acc + m_hist[idx] + 32'd1139;
      idx = (idx + acc + 32'd1146) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1153);
      acc = acc + m_hist[idx] + 32'd1160;
      idx = (idx + acc + 32'd1167) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1174);
      acc = acc + m_hist[idx] + 32'd1181;
      idx = (idx + acc + 32'd1188) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1195);
      acc = acc + m_hist[idx] + 32'd1202;
      idx = (idx + acc + 32'd1209) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1216);
      acc = acc + m_hist[idx] + 32'd1223;
      idx = (idx + acc + 32'd1230) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1237);
      acc = acc + m_hist[idx] + 32'd1244;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_36 extends comp_base;
    function new(int unsigned id = 32'd36);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1116);
      acc = acc + m_hist[idx] + 32'd1123;
      idx = (idx + acc + 32'd1130) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1137);
      acc = acc + m_hist[idx] + 32'd1144;
      idx = (idx + acc + 32'd1151) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1158);
      acc = acc + m_hist[idx] + 32'd1165;
      idx = (idx + acc + 32'd1172) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1179);
      acc = acc + m_hist[idx] + 32'd1186;
      idx = (idx + acc + 32'd1193) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1200);
      acc = acc + m_hist[idx] + 32'd1207;
      idx = (idx + acc + 32'd1214) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1221);
      acc = acc + m_hist[idx] + 32'd1228;
      idx = (idx + acc + 32'd1235) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1242);
      acc = acc + m_hist[idx] + 32'd1249;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1129);
      acc = acc + m_hist[idx] + 32'd1136;
      idx = (idx + acc + 32'd1143) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1150);
      acc = acc + m_hist[idx] + 32'd1157;
      idx = (idx + acc + 32'd1164) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1171);
      acc = acc + m_hist[idx] + 32'd1178;
      idx = (idx + acc + 32'd1185) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1192);
      acc = acc + m_hist[idx] + 32'd1199;
      idx = (idx + acc + 32'd1206) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1213);
      acc = acc + m_hist[idx] + 32'd1220;
      idx = (idx + acc + 32'd1227) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1234);
      acc = acc + m_hist[idx] + 32'd1241;
      idx = (idx + acc + 32'd1248) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1255);
      acc = acc + m_hist[idx] + 32'd1262;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1142);
      acc = acc + m_hist[idx] + 32'd1149;
      idx = (idx + acc + 32'd1156) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1163);
      acc = acc + m_hist[idx] + 32'd1170;
      idx = (idx + acc + 32'd1177) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1184);
      acc = acc + m_hist[idx] + 32'd1191;
      idx = (idx + acc + 32'd1198) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1205);
      acc = acc + m_hist[idx] + 32'd1212;
      idx = (idx + acc + 32'd1219) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1226);
      acc = acc + m_hist[idx] + 32'd1233;
      idx = (idx + acc + 32'd1240) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1247);
      acc = acc + m_hist[idx] + 32'd1254;
      idx = (idx + acc + 32'd1261) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1268);
      acc = acc + m_hist[idx] + 32'd1275;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_37 extends comp_base;
    function new(int unsigned id = 32'd37);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1147);
      acc = acc + m_hist[idx] + 32'd1154;
      idx = (idx + acc + 32'd1161) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1168);
      acc = acc + m_hist[idx] + 32'd1175;
      idx = (idx + acc + 32'd1182) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1189);
      acc = acc + m_hist[idx] + 32'd1196;
      idx = (idx + acc + 32'd1203) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1210);
      acc = acc + m_hist[idx] + 32'd1217;
      idx = (idx + acc + 32'd1224) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1231);
      acc = acc + m_hist[idx] + 32'd1238;
      idx = (idx + acc + 32'd1245) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1252);
      acc = acc + m_hist[idx] + 32'd1259;
      idx = (idx + acc + 32'd1266) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1273);
      acc = acc + m_hist[idx] + 32'd1280;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1160);
      acc = acc + m_hist[idx] + 32'd1167;
      idx = (idx + acc + 32'd1174) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1181);
      acc = acc + m_hist[idx] + 32'd1188;
      idx = (idx + acc + 32'd1195) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1202);
      acc = acc + m_hist[idx] + 32'd1209;
      idx = (idx + acc + 32'd1216) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1223);
      acc = acc + m_hist[idx] + 32'd1230;
      idx = (idx + acc + 32'd1237) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1244);
      acc = acc + m_hist[idx] + 32'd1251;
      idx = (idx + acc + 32'd1258) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1265);
      acc = acc + m_hist[idx] + 32'd1272;
      idx = (idx + acc + 32'd1279) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1286);
      acc = acc + m_hist[idx] + 32'd1293;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1173);
      acc = acc + m_hist[idx] + 32'd1180;
      idx = (idx + acc + 32'd1187) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1194);
      acc = acc + m_hist[idx] + 32'd1201;
      idx = (idx + acc + 32'd1208) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1215);
      acc = acc + m_hist[idx] + 32'd1222;
      idx = (idx + acc + 32'd1229) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1236);
      acc = acc + m_hist[idx] + 32'd1243;
      idx = (idx + acc + 32'd1250) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1257);
      acc = acc + m_hist[idx] + 32'd1264;
      idx = (idx + acc + 32'd1271) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1278);
      acc = acc + m_hist[idx] + 32'd1285;
      idx = (idx + acc + 32'd1292) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1299);
      acc = acc + m_hist[idx] + 32'd1306;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_38 extends comp_base;
    function new(int unsigned id = 32'd38);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1178);
      acc = acc + m_hist[idx] + 32'd1185;
      idx = (idx + acc + 32'd1192) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1199);
      acc = acc + m_hist[idx] + 32'd1206;
      idx = (idx + acc + 32'd1213) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1220);
      acc = acc + m_hist[idx] + 32'd1227;
      idx = (idx + acc + 32'd1234) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1241);
      acc = acc + m_hist[idx] + 32'd1248;
      idx = (idx + acc + 32'd1255) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1262);
      acc = acc + m_hist[idx] + 32'd1269;
      idx = (idx + acc + 32'd1276) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1283);
      acc = acc + m_hist[idx] + 32'd1290;
      idx = (idx + acc + 32'd1297) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1304);
      acc = acc + m_hist[idx] + 32'd1311;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1191);
      acc = acc + m_hist[idx] + 32'd1198;
      idx = (idx + acc + 32'd1205) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1212);
      acc = acc + m_hist[idx] + 32'd1219;
      idx = (idx + acc + 32'd1226) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1233);
      acc = acc + m_hist[idx] + 32'd1240;
      idx = (idx + acc + 32'd1247) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1254);
      acc = acc + m_hist[idx] + 32'd1261;
      idx = (idx + acc + 32'd1268) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1275);
      acc = acc + m_hist[idx] + 32'd1282;
      idx = (idx + acc + 32'd1289) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1296);
      acc = acc + m_hist[idx] + 32'd1303;
      idx = (idx + acc + 32'd1310) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1317);
      acc = acc + m_hist[idx] + 32'd1324;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1204);
      acc = acc + m_hist[idx] + 32'd1211;
      idx = (idx + acc + 32'd1218) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1225);
      acc = acc + m_hist[idx] + 32'd1232;
      idx = (idx + acc + 32'd1239) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1246);
      acc = acc + m_hist[idx] + 32'd1253;
      idx = (idx + acc + 32'd1260) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1267);
      acc = acc + m_hist[idx] + 32'd1274;
      idx = (idx + acc + 32'd1281) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1288);
      acc = acc + m_hist[idx] + 32'd1295;
      idx = (idx + acc + 32'd1302) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1309);
      acc = acc + m_hist[idx] + 32'd1316;
      idx = (idx + acc + 32'd1323) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1330);
      acc = acc + m_hist[idx] + 32'd1337;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_39 extends comp_base;
    function new(int unsigned id = 32'd39);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1209);
      acc = acc + m_hist[idx] + 32'd1216;
      idx = (idx + acc + 32'd1223) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1230);
      acc = acc + m_hist[idx] + 32'd1237;
      idx = (idx + acc + 32'd1244) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1251);
      acc = acc + m_hist[idx] + 32'd1258;
      idx = (idx + acc + 32'd1265) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1272);
      acc = acc + m_hist[idx] + 32'd1279;
      idx = (idx + acc + 32'd1286) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1293);
      acc = acc + m_hist[idx] + 32'd1300;
      idx = (idx + acc + 32'd1307) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1314);
      acc = acc + m_hist[idx] + 32'd1321;
      idx = (idx + acc + 32'd1328) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1335);
      acc = acc + m_hist[idx] + 32'd1342;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1222);
      acc = acc + m_hist[idx] + 32'd1229;
      idx = (idx + acc + 32'd1236) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1243);
      acc = acc + m_hist[idx] + 32'd1250;
      idx = (idx + acc + 32'd1257) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1264);
      acc = acc + m_hist[idx] + 32'd1271;
      idx = (idx + acc + 32'd1278) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1285);
      acc = acc + m_hist[idx] + 32'd1292;
      idx = (idx + acc + 32'd1299) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1306);
      acc = acc + m_hist[idx] + 32'd1313;
      idx = (idx + acc + 32'd1320) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1327);
      acc = acc + m_hist[idx] + 32'd1334;
      idx = (idx + acc + 32'd1341) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1348);
      acc = acc + m_hist[idx] + 32'd1355;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1235);
      acc = acc + m_hist[idx] + 32'd1242;
      idx = (idx + acc + 32'd1249) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1256);
      acc = acc + m_hist[idx] + 32'd1263;
      idx = (idx + acc + 32'd1270) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1277);
      acc = acc + m_hist[idx] + 32'd1284;
      idx = (idx + acc + 32'd1291) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1298);
      acc = acc + m_hist[idx] + 32'd1305;
      idx = (idx + acc + 32'd1312) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1319);
      acc = acc + m_hist[idx] + 32'd1326;
      idx = (idx + acc + 32'd1333) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1340);
      acc = acc + m_hist[idx] + 32'd1347;
      idx = (idx + acc + 32'd1354) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1361);
      acc = acc + m_hist[idx] + 32'd1368;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_40 extends comp_base;
    function new(int unsigned id = 32'd40);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1240);
      acc = acc + m_hist[idx] + 32'd1247;
      idx = (idx + acc + 32'd1254) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1261);
      acc = acc + m_hist[idx] + 32'd1268;
      idx = (idx + acc + 32'd1275) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1282);
      acc = acc + m_hist[idx] + 32'd1289;
      idx = (idx + acc + 32'd1296) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1303);
      acc = acc + m_hist[idx] + 32'd1310;
      idx = (idx + acc + 32'd1317) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1324);
      acc = acc + m_hist[idx] + 32'd1331;
      idx = (idx + acc + 32'd1338) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1345);
      acc = acc + m_hist[idx] + 32'd1352;
      idx = (idx + acc + 32'd1359) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1366);
      acc = acc + m_hist[idx] + 32'd1373;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1253);
      acc = acc + m_hist[idx] + 32'd1260;
      idx = (idx + acc + 32'd1267) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1274);
      acc = acc + m_hist[idx] + 32'd1281;
      idx = (idx + acc + 32'd1288) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1295);
      acc = acc + m_hist[idx] + 32'd1302;
      idx = (idx + acc + 32'd1309) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1316);
      acc = acc + m_hist[idx] + 32'd1323;
      idx = (idx + acc + 32'd1330) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1337);
      acc = acc + m_hist[idx] + 32'd1344;
      idx = (idx + acc + 32'd1351) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1358);
      acc = acc + m_hist[idx] + 32'd1365;
      idx = (idx + acc + 32'd1372) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1379);
      acc = acc + m_hist[idx] + 32'd1386;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1266);
      acc = acc + m_hist[idx] + 32'd1273;
      idx = (idx + acc + 32'd1280) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1287);
      acc = acc + m_hist[idx] + 32'd1294;
      idx = (idx + acc + 32'd1301) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1308);
      acc = acc + m_hist[idx] + 32'd1315;
      idx = (idx + acc + 32'd1322) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1329);
      acc = acc + m_hist[idx] + 32'd1336;
      idx = (idx + acc + 32'd1343) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1350);
      acc = acc + m_hist[idx] + 32'd1357;
      idx = (idx + acc + 32'd1364) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1371);
      acc = acc + m_hist[idx] + 32'd1378;
      idx = (idx + acc + 32'd1385) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1392);
      acc = acc + m_hist[idx] + 32'd1399;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_41 extends comp_base;
    function new(int unsigned id = 32'd41);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1271);
      acc = acc + m_hist[idx] + 32'd1278;
      idx = (idx + acc + 32'd1285) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1292);
      acc = acc + m_hist[idx] + 32'd1299;
      idx = (idx + acc + 32'd1306) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1313);
      acc = acc + m_hist[idx] + 32'd1320;
      idx = (idx + acc + 32'd1327) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1334);
      acc = acc + m_hist[idx] + 32'd1341;
      idx = (idx + acc + 32'd1348) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1355);
      acc = acc + m_hist[idx] + 32'd1362;
      idx = (idx + acc + 32'd1369) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1376);
      acc = acc + m_hist[idx] + 32'd1383;
      idx = (idx + acc + 32'd1390) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1397);
      acc = acc + m_hist[idx] + 32'd1404;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1284);
      acc = acc + m_hist[idx] + 32'd1291;
      idx = (idx + acc + 32'd1298) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1305);
      acc = acc + m_hist[idx] + 32'd1312;
      idx = (idx + acc + 32'd1319) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1326);
      acc = acc + m_hist[idx] + 32'd1333;
      idx = (idx + acc + 32'd1340) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1347);
      acc = acc + m_hist[idx] + 32'd1354;
      idx = (idx + acc + 32'd1361) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1368);
      acc = acc + m_hist[idx] + 32'd1375;
      idx = (idx + acc + 32'd1382) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1389);
      acc = acc + m_hist[idx] + 32'd1396;
      idx = (idx + acc + 32'd1403) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1410);
      acc = acc + m_hist[idx] + 32'd1417;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1297);
      acc = acc + m_hist[idx] + 32'd1304;
      idx = (idx + acc + 32'd1311) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1318);
      acc = acc + m_hist[idx] + 32'd1325;
      idx = (idx + acc + 32'd1332) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1339);
      acc = acc + m_hist[idx] + 32'd1346;
      idx = (idx + acc + 32'd1353) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1360);
      acc = acc + m_hist[idx] + 32'd1367;
      idx = (idx + acc + 32'd1374) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1381);
      acc = acc + m_hist[idx] + 32'd1388;
      idx = (idx + acc + 32'd1395) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1402);
      acc = acc + m_hist[idx] + 32'd1409;
      idx = (idx + acc + 32'd1416) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1423);
      acc = acc + m_hist[idx] + 32'd1430;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_42 extends comp_base;
    function new(int unsigned id = 32'd42);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1302);
      acc = acc + m_hist[idx] + 32'd1309;
      idx = (idx + acc + 32'd1316) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1323);
      acc = acc + m_hist[idx] + 32'd1330;
      idx = (idx + acc + 32'd1337) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1344);
      acc = acc + m_hist[idx] + 32'd1351;
      idx = (idx + acc + 32'd1358) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1365);
      acc = acc + m_hist[idx] + 32'd1372;
      idx = (idx + acc + 32'd1379) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1386);
      acc = acc + m_hist[idx] + 32'd1393;
      idx = (idx + acc + 32'd1400) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1407);
      acc = acc + m_hist[idx] + 32'd1414;
      idx = (idx + acc + 32'd1421) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1428);
      acc = acc + m_hist[idx] + 32'd1435;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1315);
      acc = acc + m_hist[idx] + 32'd1322;
      idx = (idx + acc + 32'd1329) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1336);
      acc = acc + m_hist[idx] + 32'd1343;
      idx = (idx + acc + 32'd1350) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1357);
      acc = acc + m_hist[idx] + 32'd1364;
      idx = (idx + acc + 32'd1371) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1378);
      acc = acc + m_hist[idx] + 32'd1385;
      idx = (idx + acc + 32'd1392) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1399);
      acc = acc + m_hist[idx] + 32'd1406;
      idx = (idx + acc + 32'd1413) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1420);
      acc = acc + m_hist[idx] + 32'd1427;
      idx = (idx + acc + 32'd1434) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1441);
      acc = acc + m_hist[idx] + 32'd1448;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1328);
      acc = acc + m_hist[idx] + 32'd1335;
      idx = (idx + acc + 32'd1342) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1349);
      acc = acc + m_hist[idx] + 32'd1356;
      idx = (idx + acc + 32'd1363) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1370);
      acc = acc + m_hist[idx] + 32'd1377;
      idx = (idx + acc + 32'd1384) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1391);
      acc = acc + m_hist[idx] + 32'd1398;
      idx = (idx + acc + 32'd1405) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1412);
      acc = acc + m_hist[idx] + 32'd1419;
      idx = (idx + acc + 32'd1426) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1433);
      acc = acc + m_hist[idx] + 32'd1440;
      idx = (idx + acc + 32'd1447) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1454);
      acc = acc + m_hist[idx] + 32'd1461;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_43 extends comp_base;
    function new(int unsigned id = 32'd43);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1333);
      acc = acc + m_hist[idx] + 32'd1340;
      idx = (idx + acc + 32'd1347) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1354);
      acc = acc + m_hist[idx] + 32'd1361;
      idx = (idx + acc + 32'd1368) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1375);
      acc = acc + m_hist[idx] + 32'd1382;
      idx = (idx + acc + 32'd1389) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1396);
      acc = acc + m_hist[idx] + 32'd1403;
      idx = (idx + acc + 32'd1410) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1417);
      acc = acc + m_hist[idx] + 32'd1424;
      idx = (idx + acc + 32'd1431) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1438);
      acc = acc + m_hist[idx] + 32'd1445;
      idx = (idx + acc + 32'd1452) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1459);
      acc = acc + m_hist[idx] + 32'd1466;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1346);
      acc = acc + m_hist[idx] + 32'd1353;
      idx = (idx + acc + 32'd1360) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1367);
      acc = acc + m_hist[idx] + 32'd1374;
      idx = (idx + acc + 32'd1381) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1388);
      acc = acc + m_hist[idx] + 32'd1395;
      idx = (idx + acc + 32'd1402) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1409);
      acc = acc + m_hist[idx] + 32'd1416;
      idx = (idx + acc + 32'd1423) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1430);
      acc = acc + m_hist[idx] + 32'd1437;
      idx = (idx + acc + 32'd1444) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1451);
      acc = acc + m_hist[idx] + 32'd1458;
      idx = (idx + acc + 32'd1465) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1472);
      acc = acc + m_hist[idx] + 32'd1479;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1359);
      acc = acc + m_hist[idx] + 32'd1366;
      idx = (idx + acc + 32'd1373) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1380);
      acc = acc + m_hist[idx] + 32'd1387;
      idx = (idx + acc + 32'd1394) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1401);
      acc = acc + m_hist[idx] + 32'd1408;
      idx = (idx + acc + 32'd1415) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1422);
      acc = acc + m_hist[idx] + 32'd1429;
      idx = (idx + acc + 32'd1436) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1443);
      acc = acc + m_hist[idx] + 32'd1450;
      idx = (idx + acc + 32'd1457) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1464);
      acc = acc + m_hist[idx] + 32'd1471;
      idx = (idx + acc + 32'd1478) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1485);
      acc = acc + m_hist[idx] + 32'd1492;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_44 extends comp_base;
    function new(int unsigned id = 32'd44);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1364);
      acc = acc + m_hist[idx] + 32'd1371;
      idx = (idx + acc + 32'd1378) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1385);
      acc = acc + m_hist[idx] + 32'd1392;
      idx = (idx + acc + 32'd1399) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1406);
      acc = acc + m_hist[idx] + 32'd1413;
      idx = (idx + acc + 32'd1420) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1427);
      acc = acc + m_hist[idx] + 32'd1434;
      idx = (idx + acc + 32'd1441) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1448);
      acc = acc + m_hist[idx] + 32'd1455;
      idx = (idx + acc + 32'd1462) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1469);
      acc = acc + m_hist[idx] + 32'd1476;
      idx = (idx + acc + 32'd1483) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1490);
      acc = acc + m_hist[idx] + 32'd1497;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1377);
      acc = acc + m_hist[idx] + 32'd1384;
      idx = (idx + acc + 32'd1391) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1398);
      acc = acc + m_hist[idx] + 32'd1405;
      idx = (idx + acc + 32'd1412) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1419);
      acc = acc + m_hist[idx] + 32'd1426;
      idx = (idx + acc + 32'd1433) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1440);
      acc = acc + m_hist[idx] + 32'd1447;
      idx = (idx + acc + 32'd1454) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1461);
      acc = acc + m_hist[idx] + 32'd1468;
      idx = (idx + acc + 32'd1475) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1482);
      acc = acc + m_hist[idx] + 32'd1489;
      idx = (idx + acc + 32'd1496) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1503);
      acc = acc + m_hist[idx] + 32'd1510;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1390);
      acc = acc + m_hist[idx] + 32'd1397;
      idx = (idx + acc + 32'd1404) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1411);
      acc = acc + m_hist[idx] + 32'd1418;
      idx = (idx + acc + 32'd1425) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1432);
      acc = acc + m_hist[idx] + 32'd1439;
      idx = (idx + acc + 32'd1446) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1453);
      acc = acc + m_hist[idx] + 32'd1460;
      idx = (idx + acc + 32'd1467) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1474);
      acc = acc + m_hist[idx] + 32'd1481;
      idx = (idx + acc + 32'd1488) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1495);
      acc = acc + m_hist[idx] + 32'd1502;
      idx = (idx + acc + 32'd1509) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1516);
      acc = acc + m_hist[idx] + 32'd1523;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_45 extends comp_base;
    function new(int unsigned id = 32'd45);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1395);
      acc = acc + m_hist[idx] + 32'd1402;
      idx = (idx + acc + 32'd1409) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1416);
      acc = acc + m_hist[idx] + 32'd1423;
      idx = (idx + acc + 32'd1430) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1437);
      acc = acc + m_hist[idx] + 32'd1444;
      idx = (idx + acc + 32'd1451) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1458);
      acc = acc + m_hist[idx] + 32'd1465;
      idx = (idx + acc + 32'd1472) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1479);
      acc = acc + m_hist[idx] + 32'd1486;
      idx = (idx + acc + 32'd1493) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1500);
      acc = acc + m_hist[idx] + 32'd1507;
      idx = (idx + acc + 32'd1514) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1521);
      acc = acc + m_hist[idx] + 32'd1528;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1408);
      acc = acc + m_hist[idx] + 32'd1415;
      idx = (idx + acc + 32'd1422) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1429);
      acc = acc + m_hist[idx] + 32'd1436;
      idx = (idx + acc + 32'd1443) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1450);
      acc = acc + m_hist[idx] + 32'd1457;
      idx = (idx + acc + 32'd1464) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1471);
      acc = acc + m_hist[idx] + 32'd1478;
      idx = (idx + acc + 32'd1485) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1492);
      acc = acc + m_hist[idx] + 32'd1499;
      idx = (idx + acc + 32'd1506) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1513);
      acc = acc + m_hist[idx] + 32'd1520;
      idx = (idx + acc + 32'd1527) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1534);
      acc = acc + m_hist[idx] + 32'd1541;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1421);
      acc = acc + m_hist[idx] + 32'd1428;
      idx = (idx + acc + 32'd1435) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1442);
      acc = acc + m_hist[idx] + 32'd1449;
      idx = (idx + acc + 32'd1456) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1463);
      acc = acc + m_hist[idx] + 32'd1470;
      idx = (idx + acc + 32'd1477) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1484);
      acc = acc + m_hist[idx] + 32'd1491;
      idx = (idx + acc + 32'd1498) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1505);
      acc = acc + m_hist[idx] + 32'd1512;
      idx = (idx + acc + 32'd1519) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1526);
      acc = acc + m_hist[idx] + 32'd1533;
      idx = (idx + acc + 32'd1540) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1547);
      acc = acc + m_hist[idx] + 32'd1554;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_46 extends comp_base;
    function new(int unsigned id = 32'd46);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1426);
      acc = acc + m_hist[idx] + 32'd1433;
      idx = (idx + acc + 32'd1440) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1447);
      acc = acc + m_hist[idx] + 32'd1454;
      idx = (idx + acc + 32'd1461) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1468);
      acc = acc + m_hist[idx] + 32'd1475;
      idx = (idx + acc + 32'd1482) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1489);
      acc = acc + m_hist[idx] + 32'd1496;
      idx = (idx + acc + 32'd1503) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1510);
      acc = acc + m_hist[idx] + 32'd1517;
      idx = (idx + acc + 32'd1524) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1531);
      acc = acc + m_hist[idx] + 32'd1538;
      idx = (idx + acc + 32'd1545) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1552);
      acc = acc + m_hist[idx] + 32'd1559;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1439);
      acc = acc + m_hist[idx] + 32'd1446;
      idx = (idx + acc + 32'd1453) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1460);
      acc = acc + m_hist[idx] + 32'd1467;
      idx = (idx + acc + 32'd1474) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1481);
      acc = acc + m_hist[idx] + 32'd1488;
      idx = (idx + acc + 32'd1495) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1502);
      acc = acc + m_hist[idx] + 32'd1509;
      idx = (idx + acc + 32'd1516) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1523);
      acc = acc + m_hist[idx] + 32'd1530;
      idx = (idx + acc + 32'd1537) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1544);
      acc = acc + m_hist[idx] + 32'd1551;
      idx = (idx + acc + 32'd1558) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1565);
      acc = acc + m_hist[idx] + 32'd1572;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1452);
      acc = acc + m_hist[idx] + 32'd1459;
      idx = (idx + acc + 32'd1466) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1473);
      acc = acc + m_hist[idx] + 32'd1480;
      idx = (idx + acc + 32'd1487) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1494);
      acc = acc + m_hist[idx] + 32'd1501;
      idx = (idx + acc + 32'd1508) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1515);
      acc = acc + m_hist[idx] + 32'd1522;
      idx = (idx + acc + 32'd1529) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1536);
      acc = acc + m_hist[idx] + 32'd1543;
      idx = (idx + acc + 32'd1550) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1557);
      acc = acc + m_hist[idx] + 32'd1564;
      idx = (idx + acc + 32'd1571) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1578);
      acc = acc + m_hist[idx] + 32'd1585;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_47 extends comp_base;
    function new(int unsigned id = 32'd47);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1457);
      acc = acc + m_hist[idx] + 32'd1464;
      idx = (idx + acc + 32'd1471) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1478);
      acc = acc + m_hist[idx] + 32'd1485;
      idx = (idx + acc + 32'd1492) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1499);
      acc = acc + m_hist[idx] + 32'd1506;
      idx = (idx + acc + 32'd1513) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1520);
      acc = acc + m_hist[idx] + 32'd1527;
      idx = (idx + acc + 32'd1534) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1541);
      acc = acc + m_hist[idx] + 32'd1548;
      idx = (idx + acc + 32'd1555) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1562);
      acc = acc + m_hist[idx] + 32'd1569;
      idx = (idx + acc + 32'd1576) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1583);
      acc = acc + m_hist[idx] + 32'd1590;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1470);
      acc = acc + m_hist[idx] + 32'd1477;
      idx = (idx + acc + 32'd1484) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1491);
      acc = acc + m_hist[idx] + 32'd1498;
      idx = (idx + acc + 32'd1505) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1512);
      acc = acc + m_hist[idx] + 32'd1519;
      idx = (idx + acc + 32'd1526) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1533);
      acc = acc + m_hist[idx] + 32'd1540;
      idx = (idx + acc + 32'd1547) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1554);
      acc = acc + m_hist[idx] + 32'd1561;
      idx = (idx + acc + 32'd1568) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1575);
      acc = acc + m_hist[idx] + 32'd1582;
      idx = (idx + acc + 32'd1589) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1596);
      acc = acc + m_hist[idx] + 32'd1603;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1483);
      acc = acc + m_hist[idx] + 32'd1490;
      idx = (idx + acc + 32'd1497) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1504);
      acc = acc + m_hist[idx] + 32'd1511;
      idx = (idx + acc + 32'd1518) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1525);
      acc = acc + m_hist[idx] + 32'd1532;
      idx = (idx + acc + 32'd1539) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1546);
      acc = acc + m_hist[idx] + 32'd1553;
      idx = (idx + acc + 32'd1560) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1567);
      acc = acc + m_hist[idx] + 32'd1574;
      idx = (idx + acc + 32'd1581) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1588);
      acc = acc + m_hist[idx] + 32'd1595;
      idx = (idx + acc + 32'd1602) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1609);
      acc = acc + m_hist[idx] + 32'd1616;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_48 extends comp_base;
    function new(int unsigned id = 32'd48);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1488);
      acc = acc + m_hist[idx] + 32'd1495;
      idx = (idx + acc + 32'd1502) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1509);
      acc = acc + m_hist[idx] + 32'd1516;
      idx = (idx + acc + 32'd1523) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1530);
      acc = acc + m_hist[idx] + 32'd1537;
      idx = (idx + acc + 32'd1544) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1551);
      acc = acc + m_hist[idx] + 32'd1558;
      idx = (idx + acc + 32'd1565) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1572);
      acc = acc + m_hist[idx] + 32'd1579;
      idx = (idx + acc + 32'd1586) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1593);
      acc = acc + m_hist[idx] + 32'd1600;
      idx = (idx + acc + 32'd1607) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1614);
      acc = acc + m_hist[idx] + 32'd1621;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1501);
      acc = acc + m_hist[idx] + 32'd1508;
      idx = (idx + acc + 32'd1515) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1522);
      acc = acc + m_hist[idx] + 32'd1529;
      idx = (idx + acc + 32'd1536) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1543);
      acc = acc + m_hist[idx] + 32'd1550;
      idx = (idx + acc + 32'd1557) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1564);
      acc = acc + m_hist[idx] + 32'd1571;
      idx = (idx + acc + 32'd1578) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1585);
      acc = acc + m_hist[idx] + 32'd1592;
      idx = (idx + acc + 32'd1599) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1606);
      acc = acc + m_hist[idx] + 32'd1613;
      idx = (idx + acc + 32'd1620) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1627);
      acc = acc + m_hist[idx] + 32'd1634;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1514);
      acc = acc + m_hist[idx] + 32'd1521;
      idx = (idx + acc + 32'd1528) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1535);
      acc = acc + m_hist[idx] + 32'd1542;
      idx = (idx + acc + 32'd1549) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1556);
      acc = acc + m_hist[idx] + 32'd1563;
      idx = (idx + acc + 32'd1570) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1577);
      acc = acc + m_hist[idx] + 32'd1584;
      idx = (idx + acc + 32'd1591) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1598);
      acc = acc + m_hist[idx] + 32'd1605;
      idx = (idx + acc + 32'd1612) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1619);
      acc = acc + m_hist[idx] + 32'd1626;
      idx = (idx + acc + 32'd1633) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1640);
      acc = acc + m_hist[idx] + 32'd1647;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_49 extends comp_base;
    function new(int unsigned id = 32'd49);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1519);
      acc = acc + m_hist[idx] + 32'd1526;
      idx = (idx + acc + 32'd1533) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1540);
      acc = acc + m_hist[idx] + 32'd1547;
      idx = (idx + acc + 32'd1554) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1561);
      acc = acc + m_hist[idx] + 32'd1568;
      idx = (idx + acc + 32'd1575) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1582);
      acc = acc + m_hist[idx] + 32'd1589;
      idx = (idx + acc + 32'd1596) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1603);
      acc = acc + m_hist[idx] + 32'd1610;
      idx = (idx + acc + 32'd1617) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1624);
      acc = acc + m_hist[idx] + 32'd1631;
      idx = (idx + acc + 32'd1638) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1645);
      acc = acc + m_hist[idx] + 32'd1652;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1532);
      acc = acc + m_hist[idx] + 32'd1539;
      idx = (idx + acc + 32'd1546) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1553);
      acc = acc + m_hist[idx] + 32'd1560;
      idx = (idx + acc + 32'd1567) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1574);
      acc = acc + m_hist[idx] + 32'd1581;
      idx = (idx + acc + 32'd1588) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1595);
      acc = acc + m_hist[idx] + 32'd1602;
      idx = (idx + acc + 32'd1609) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1616);
      acc = acc + m_hist[idx] + 32'd1623;
      idx = (idx + acc + 32'd1630) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1637);
      acc = acc + m_hist[idx] + 32'd1644;
      idx = (idx + acc + 32'd1651) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1658);
      acc = acc + m_hist[idx] + 32'd1665;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1545);
      acc = acc + m_hist[idx] + 32'd1552;
      idx = (idx + acc + 32'd1559) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1566);
      acc = acc + m_hist[idx] + 32'd1573;
      idx = (idx + acc + 32'd1580) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1587);
      acc = acc + m_hist[idx] + 32'd1594;
      idx = (idx + acc + 32'd1601) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1608);
      acc = acc + m_hist[idx] + 32'd1615;
      idx = (idx + acc + 32'd1622) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1629);
      acc = acc + m_hist[idx] + 32'd1636;
      idx = (idx + acc + 32'd1643) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1650);
      acc = acc + m_hist[idx] + 32'd1657;
      idx = (idx + acc + 32'd1664) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1671);
      acc = acc + m_hist[idx] + 32'd1678;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_50 extends comp_base;
    function new(int unsigned id = 32'd50);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1550);
      acc = acc + m_hist[idx] + 32'd1557;
      idx = (idx + acc + 32'd1564) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1571);
      acc = acc + m_hist[idx] + 32'd1578;
      idx = (idx + acc + 32'd1585) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1592);
      acc = acc + m_hist[idx] + 32'd1599;
      idx = (idx + acc + 32'd1606) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1613);
      acc = acc + m_hist[idx] + 32'd1620;
      idx = (idx + acc + 32'd1627) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1634);
      acc = acc + m_hist[idx] + 32'd1641;
      idx = (idx + acc + 32'd1648) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1655);
      acc = acc + m_hist[idx] + 32'd1662;
      idx = (idx + acc + 32'd1669) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1676);
      acc = acc + m_hist[idx] + 32'd1683;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1563);
      acc = acc + m_hist[idx] + 32'd1570;
      idx = (idx + acc + 32'd1577) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1584);
      acc = acc + m_hist[idx] + 32'd1591;
      idx = (idx + acc + 32'd1598) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1605);
      acc = acc + m_hist[idx] + 32'd1612;
      idx = (idx + acc + 32'd1619) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1626);
      acc = acc + m_hist[idx] + 32'd1633;
      idx = (idx + acc + 32'd1640) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1647);
      acc = acc + m_hist[idx] + 32'd1654;
      idx = (idx + acc + 32'd1661) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1668);
      acc = acc + m_hist[idx] + 32'd1675;
      idx = (idx + acc + 32'd1682) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1689);
      acc = acc + m_hist[idx] + 32'd1696;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1576);
      acc = acc + m_hist[idx] + 32'd1583;
      idx = (idx + acc + 32'd1590) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1597);
      acc = acc + m_hist[idx] + 32'd1604;
      idx = (idx + acc + 32'd1611) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1618);
      acc = acc + m_hist[idx] + 32'd1625;
      idx = (idx + acc + 32'd1632) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1639);
      acc = acc + m_hist[idx] + 32'd1646;
      idx = (idx + acc + 32'd1653) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1660);
      acc = acc + m_hist[idx] + 32'd1667;
      idx = (idx + acc + 32'd1674) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1681);
      acc = acc + m_hist[idx] + 32'd1688;
      idx = (idx + acc + 32'd1695) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1702);
      acc = acc + m_hist[idx] + 32'd1709;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_51 extends comp_base;
    function new(int unsigned id = 32'd51);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1581);
      acc = acc + m_hist[idx] + 32'd1588;
      idx = (idx + acc + 32'd1595) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1602);
      acc = acc + m_hist[idx] + 32'd1609;
      idx = (idx + acc + 32'd1616) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1623);
      acc = acc + m_hist[idx] + 32'd1630;
      idx = (idx + acc + 32'd1637) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1644);
      acc = acc + m_hist[idx] + 32'd1651;
      idx = (idx + acc + 32'd1658) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1665);
      acc = acc + m_hist[idx] + 32'd1672;
      idx = (idx + acc + 32'd1679) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1686);
      acc = acc + m_hist[idx] + 32'd1693;
      idx = (idx + acc + 32'd1700) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1707);
      acc = acc + m_hist[idx] + 32'd1714;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1594);
      acc = acc + m_hist[idx] + 32'd1601;
      idx = (idx + acc + 32'd1608) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1615);
      acc = acc + m_hist[idx] + 32'd1622;
      idx = (idx + acc + 32'd1629) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1636);
      acc = acc + m_hist[idx] + 32'd1643;
      idx = (idx + acc + 32'd1650) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1657);
      acc = acc + m_hist[idx] + 32'd1664;
      idx = (idx + acc + 32'd1671) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1678);
      acc = acc + m_hist[idx] + 32'd1685;
      idx = (idx + acc + 32'd1692) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1699);
      acc = acc + m_hist[idx] + 32'd1706;
      idx = (idx + acc + 32'd1713) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1720);
      acc = acc + m_hist[idx] + 32'd1727;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1607);
      acc = acc + m_hist[idx] + 32'd1614;
      idx = (idx + acc + 32'd1621) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1628);
      acc = acc + m_hist[idx] + 32'd1635;
      idx = (idx + acc + 32'd1642) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1649);
      acc = acc + m_hist[idx] + 32'd1656;
      idx = (idx + acc + 32'd1663) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1670);
      acc = acc + m_hist[idx] + 32'd1677;
      idx = (idx + acc + 32'd1684) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1691);
      acc = acc + m_hist[idx] + 32'd1698;
      idx = (idx + acc + 32'd1705) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1712);
      acc = acc + m_hist[idx] + 32'd1719;
      idx = (idx + acc + 32'd1726) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1733);
      acc = acc + m_hist[idx] + 32'd1740;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_52 extends comp_base;
    function new(int unsigned id = 32'd52);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1612);
      acc = acc + m_hist[idx] + 32'd1619;
      idx = (idx + acc + 32'd1626) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1633);
      acc = acc + m_hist[idx] + 32'd1640;
      idx = (idx + acc + 32'd1647) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1654);
      acc = acc + m_hist[idx] + 32'd1661;
      idx = (idx + acc + 32'd1668) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1675);
      acc = acc + m_hist[idx] + 32'd1682;
      idx = (idx + acc + 32'd1689) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1696);
      acc = acc + m_hist[idx] + 32'd1703;
      idx = (idx + acc + 32'd1710) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1717);
      acc = acc + m_hist[idx] + 32'd1724;
      idx = (idx + acc + 32'd1731) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1738);
      acc = acc + m_hist[idx] + 32'd1745;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1625);
      acc = acc + m_hist[idx] + 32'd1632;
      idx = (idx + acc + 32'd1639) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1646);
      acc = acc + m_hist[idx] + 32'd1653;
      idx = (idx + acc + 32'd1660) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1667);
      acc = acc + m_hist[idx] + 32'd1674;
      idx = (idx + acc + 32'd1681) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1688);
      acc = acc + m_hist[idx] + 32'd1695;
      idx = (idx + acc + 32'd1702) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1709);
      acc = acc + m_hist[idx] + 32'd1716;
      idx = (idx + acc + 32'd1723) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1730);
      acc = acc + m_hist[idx] + 32'd1737;
      idx = (idx + acc + 32'd1744) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1751);
      acc = acc + m_hist[idx] + 32'd1758;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1638);
      acc = acc + m_hist[idx] + 32'd1645;
      idx = (idx + acc + 32'd1652) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1659);
      acc = acc + m_hist[idx] + 32'd1666;
      idx = (idx + acc + 32'd1673) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1680);
      acc = acc + m_hist[idx] + 32'd1687;
      idx = (idx + acc + 32'd1694) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1701);
      acc = acc + m_hist[idx] + 32'd1708;
      idx = (idx + acc + 32'd1715) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1722);
      acc = acc + m_hist[idx] + 32'd1729;
      idx = (idx + acc + 32'd1736) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1743);
      acc = acc + m_hist[idx] + 32'd1750;
      idx = (idx + acc + 32'd1757) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1764);
      acc = acc + m_hist[idx] + 32'd1771;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_53 extends comp_base;
    function new(int unsigned id = 32'd53);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1643);
      acc = acc + m_hist[idx] + 32'd1650;
      idx = (idx + acc + 32'd1657) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1664);
      acc = acc + m_hist[idx] + 32'd1671;
      idx = (idx + acc + 32'd1678) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1685);
      acc = acc + m_hist[idx] + 32'd1692;
      idx = (idx + acc + 32'd1699) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1706);
      acc = acc + m_hist[idx] + 32'd1713;
      idx = (idx + acc + 32'd1720) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1727);
      acc = acc + m_hist[idx] + 32'd1734;
      idx = (idx + acc + 32'd1741) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1748);
      acc = acc + m_hist[idx] + 32'd1755;
      idx = (idx + acc + 32'd1762) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1769);
      acc = acc + m_hist[idx] + 32'd1776;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1656);
      acc = acc + m_hist[idx] + 32'd1663;
      idx = (idx + acc + 32'd1670) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1677);
      acc = acc + m_hist[idx] + 32'd1684;
      idx = (idx + acc + 32'd1691) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1698);
      acc = acc + m_hist[idx] + 32'd1705;
      idx = (idx + acc + 32'd1712) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1719);
      acc = acc + m_hist[idx] + 32'd1726;
      idx = (idx + acc + 32'd1733) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1740);
      acc = acc + m_hist[idx] + 32'd1747;
      idx = (idx + acc + 32'd1754) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1761);
      acc = acc + m_hist[idx] + 32'd1768;
      idx = (idx + acc + 32'd1775) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1782);
      acc = acc + m_hist[idx] + 32'd1789;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1669);
      acc = acc + m_hist[idx] + 32'd1676;
      idx = (idx + acc + 32'd1683) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1690);
      acc = acc + m_hist[idx] + 32'd1697;
      idx = (idx + acc + 32'd1704) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1711);
      acc = acc + m_hist[idx] + 32'd1718;
      idx = (idx + acc + 32'd1725) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1732);
      acc = acc + m_hist[idx] + 32'd1739;
      idx = (idx + acc + 32'd1746) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1753);
      acc = acc + m_hist[idx] + 32'd1760;
      idx = (idx + acc + 32'd1767) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1774);
      acc = acc + m_hist[idx] + 32'd1781;
      idx = (idx + acc + 32'd1788) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1795);
      acc = acc + m_hist[idx] + 32'd1802;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_54 extends comp_base;
    function new(int unsigned id = 32'd54);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1674);
      acc = acc + m_hist[idx] + 32'd1681;
      idx = (idx + acc + 32'd1688) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1695);
      acc = acc + m_hist[idx] + 32'd1702;
      idx = (idx + acc + 32'd1709) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1716);
      acc = acc + m_hist[idx] + 32'd1723;
      idx = (idx + acc + 32'd1730) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1737);
      acc = acc + m_hist[idx] + 32'd1744;
      idx = (idx + acc + 32'd1751) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1758);
      acc = acc + m_hist[idx] + 32'd1765;
      idx = (idx + acc + 32'd1772) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1779);
      acc = acc + m_hist[idx] + 32'd1786;
      idx = (idx + acc + 32'd1793) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1800);
      acc = acc + m_hist[idx] + 32'd1807;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1687);
      acc = acc + m_hist[idx] + 32'd1694;
      idx = (idx + acc + 32'd1701) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1708);
      acc = acc + m_hist[idx] + 32'd1715;
      idx = (idx + acc + 32'd1722) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1729);
      acc = acc + m_hist[idx] + 32'd1736;
      idx = (idx + acc + 32'd1743) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1750);
      acc = acc + m_hist[idx] + 32'd1757;
      idx = (idx + acc + 32'd1764) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1771);
      acc = acc + m_hist[idx] + 32'd1778;
      idx = (idx + acc + 32'd1785) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1792);
      acc = acc + m_hist[idx] + 32'd1799;
      idx = (idx + acc + 32'd1806) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1813);
      acc = acc + m_hist[idx] + 32'd1820;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1700);
      acc = acc + m_hist[idx] + 32'd1707;
      idx = (idx + acc + 32'd1714) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1721);
      acc = acc + m_hist[idx] + 32'd1728;
      idx = (idx + acc + 32'd1735) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1742);
      acc = acc + m_hist[idx] + 32'd1749;
      idx = (idx + acc + 32'd1756) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1763);
      acc = acc + m_hist[idx] + 32'd1770;
      idx = (idx + acc + 32'd1777) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1784);
      acc = acc + m_hist[idx] + 32'd1791;
      idx = (idx + acc + 32'd1798) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1805);
      acc = acc + m_hist[idx] + 32'd1812;
      idx = (idx + acc + 32'd1819) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1826);
      acc = acc + m_hist[idx] + 32'd1833;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_55 extends comp_base;
    function new(int unsigned id = 32'd55);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1705);
      acc = acc + m_hist[idx] + 32'd1712;
      idx = (idx + acc + 32'd1719) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1726);
      acc = acc + m_hist[idx] + 32'd1733;
      idx = (idx + acc + 32'd1740) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1747);
      acc = acc + m_hist[idx] + 32'd1754;
      idx = (idx + acc + 32'd1761) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1768);
      acc = acc + m_hist[idx] + 32'd1775;
      idx = (idx + acc + 32'd1782) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1789);
      acc = acc + m_hist[idx] + 32'd1796;
      idx = (idx + acc + 32'd1803) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1810);
      acc = acc + m_hist[idx] + 32'd1817;
      idx = (idx + acc + 32'd1824) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1831);
      acc = acc + m_hist[idx] + 32'd1838;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1718);
      acc = acc + m_hist[idx] + 32'd1725;
      idx = (idx + acc + 32'd1732) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1739);
      acc = acc + m_hist[idx] + 32'd1746;
      idx = (idx + acc + 32'd1753) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1760);
      acc = acc + m_hist[idx] + 32'd1767;
      idx = (idx + acc + 32'd1774) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1781);
      acc = acc + m_hist[idx] + 32'd1788;
      idx = (idx + acc + 32'd1795) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1802);
      acc = acc + m_hist[idx] + 32'd1809;
      idx = (idx + acc + 32'd1816) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1823);
      acc = acc + m_hist[idx] + 32'd1830;
      idx = (idx + acc + 32'd1837) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1844);
      acc = acc + m_hist[idx] + 32'd1851;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1731);
      acc = acc + m_hist[idx] + 32'd1738;
      idx = (idx + acc + 32'd1745) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1752);
      acc = acc + m_hist[idx] + 32'd1759;
      idx = (idx + acc + 32'd1766) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1773);
      acc = acc + m_hist[idx] + 32'd1780;
      idx = (idx + acc + 32'd1787) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1794);
      acc = acc + m_hist[idx] + 32'd1801;
      idx = (idx + acc + 32'd1808) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1815);
      acc = acc + m_hist[idx] + 32'd1822;
      idx = (idx + acc + 32'd1829) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1836);
      acc = acc + m_hist[idx] + 32'd1843;
      idx = (idx + acc + 32'd1850) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1857);
      acc = acc + m_hist[idx] + 32'd1864;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_56 extends comp_base;
    function new(int unsigned id = 32'd56);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1736);
      acc = acc + m_hist[idx] + 32'd1743;
      idx = (idx + acc + 32'd1750) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1757);
      acc = acc + m_hist[idx] + 32'd1764;
      idx = (idx + acc + 32'd1771) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1778);
      acc = acc + m_hist[idx] + 32'd1785;
      idx = (idx + acc + 32'd1792) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1799);
      acc = acc + m_hist[idx] + 32'd1806;
      idx = (idx + acc + 32'd1813) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1820);
      acc = acc + m_hist[idx] + 32'd1827;
      idx = (idx + acc + 32'd1834) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1841);
      acc = acc + m_hist[idx] + 32'd1848;
      idx = (idx + acc + 32'd1855) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1862);
      acc = acc + m_hist[idx] + 32'd1869;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1749);
      acc = acc + m_hist[idx] + 32'd1756;
      idx = (idx + acc + 32'd1763) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1770);
      acc = acc + m_hist[idx] + 32'd1777;
      idx = (idx + acc + 32'd1784) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1791);
      acc = acc + m_hist[idx] + 32'd1798;
      idx = (idx + acc + 32'd1805) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1812);
      acc = acc + m_hist[idx] + 32'd1819;
      idx = (idx + acc + 32'd1826) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1833);
      acc = acc + m_hist[idx] + 32'd1840;
      idx = (idx + acc + 32'd1847) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1854);
      acc = acc + m_hist[idx] + 32'd1861;
      idx = (idx + acc + 32'd1868) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1875);
      acc = acc + m_hist[idx] + 32'd1882;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1762);
      acc = acc + m_hist[idx] + 32'd1769;
      idx = (idx + acc + 32'd1776) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1783);
      acc = acc + m_hist[idx] + 32'd1790;
      idx = (idx + acc + 32'd1797) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1804);
      acc = acc + m_hist[idx] + 32'd1811;
      idx = (idx + acc + 32'd1818) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1825);
      acc = acc + m_hist[idx] + 32'd1832;
      idx = (idx + acc + 32'd1839) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1846);
      acc = acc + m_hist[idx] + 32'd1853;
      idx = (idx + acc + 32'd1860) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1867);
      acc = acc + m_hist[idx] + 32'd1874;
      idx = (idx + acc + 32'd1881) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1888);
      acc = acc + m_hist[idx] + 32'd1895;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_57 extends comp_base;
    function new(int unsigned id = 32'd57);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1767);
      acc = acc + m_hist[idx] + 32'd1774;
      idx = (idx + acc + 32'd1781) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1788);
      acc = acc + m_hist[idx] + 32'd1795;
      idx = (idx + acc + 32'd1802) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1809);
      acc = acc + m_hist[idx] + 32'd1816;
      idx = (idx + acc + 32'd1823) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1830);
      acc = acc + m_hist[idx] + 32'd1837;
      idx = (idx + acc + 32'd1844) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1851);
      acc = acc + m_hist[idx] + 32'd1858;
      idx = (idx + acc + 32'd1865) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1872);
      acc = acc + m_hist[idx] + 32'd1879;
      idx = (idx + acc + 32'd1886) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1893);
      acc = acc + m_hist[idx] + 32'd1900;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1780);
      acc = acc + m_hist[idx] + 32'd1787;
      idx = (idx + acc + 32'd1794) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1801);
      acc = acc + m_hist[idx] + 32'd1808;
      idx = (idx + acc + 32'd1815) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1822);
      acc = acc + m_hist[idx] + 32'd1829;
      idx = (idx + acc + 32'd1836) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1843);
      acc = acc + m_hist[idx] + 32'd1850;
      idx = (idx + acc + 32'd1857) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1864);
      acc = acc + m_hist[idx] + 32'd1871;
      idx = (idx + acc + 32'd1878) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1885);
      acc = acc + m_hist[idx] + 32'd1892;
      idx = (idx + acc + 32'd1899) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1906);
      acc = acc + m_hist[idx] + 32'd1913;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1793);
      acc = acc + m_hist[idx] + 32'd1800;
      idx = (idx + acc + 32'd1807) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1814);
      acc = acc + m_hist[idx] + 32'd1821;
      idx = (idx + acc + 32'd1828) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1835);
      acc = acc + m_hist[idx] + 32'd1842;
      idx = (idx + acc + 32'd1849) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1856);
      acc = acc + m_hist[idx] + 32'd1863;
      idx = (idx + acc + 32'd1870) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1877);
      acc = acc + m_hist[idx] + 32'd1884;
      idx = (idx + acc + 32'd1891) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1898);
      acc = acc + m_hist[idx] + 32'd1905;
      idx = (idx + acc + 32'd1912) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1919);
      acc = acc + m_hist[idx] + 32'd1926;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_58 extends comp_base;
    function new(int unsigned id = 32'd58);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1798);
      acc = acc + m_hist[idx] + 32'd1805;
      idx = (idx + acc + 32'd1812) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1819);
      acc = acc + m_hist[idx] + 32'd1826;
      idx = (idx + acc + 32'd1833) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1840);
      acc = acc + m_hist[idx] + 32'd1847;
      idx = (idx + acc + 32'd1854) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1861);
      acc = acc + m_hist[idx] + 32'd1868;
      idx = (idx + acc + 32'd1875) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1882);
      acc = acc + m_hist[idx] + 32'd1889;
      idx = (idx + acc + 32'd1896) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1903);
      acc = acc + m_hist[idx] + 32'd1910;
      idx = (idx + acc + 32'd1917) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1924);
      acc = acc + m_hist[idx] + 32'd1931;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1811);
      acc = acc + m_hist[idx] + 32'd1818;
      idx = (idx + acc + 32'd1825) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1832);
      acc = acc + m_hist[idx] + 32'd1839;
      idx = (idx + acc + 32'd1846) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1853);
      acc = acc + m_hist[idx] + 32'd1860;
      idx = (idx + acc + 32'd1867) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1874);
      acc = acc + m_hist[idx] + 32'd1881;
      idx = (idx + acc + 32'd1888) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1895);
      acc = acc + m_hist[idx] + 32'd1902;
      idx = (idx + acc + 32'd1909) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1916);
      acc = acc + m_hist[idx] + 32'd1923;
      idx = (idx + acc + 32'd1930) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1937);
      acc = acc + m_hist[idx] + 32'd1944;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1824);
      acc = acc + m_hist[idx] + 32'd1831;
      idx = (idx + acc + 32'd1838) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1845);
      acc = acc + m_hist[idx] + 32'd1852;
      idx = (idx + acc + 32'd1859) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1866);
      acc = acc + m_hist[idx] + 32'd1873;
      idx = (idx + acc + 32'd1880) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1887);
      acc = acc + m_hist[idx] + 32'd1894;
      idx = (idx + acc + 32'd1901) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1908);
      acc = acc + m_hist[idx] + 32'd1915;
      idx = (idx + acc + 32'd1922) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1929);
      acc = acc + m_hist[idx] + 32'd1936;
      idx = (idx + acc + 32'd1943) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1950);
      acc = acc + m_hist[idx] + 32'd1957;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_59 extends comp_base;
    function new(int unsigned id = 32'd59);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1829);
      acc = acc + m_hist[idx] + 32'd1836;
      idx = (idx + acc + 32'd1843) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1850);
      acc = acc + m_hist[idx] + 32'd1857;
      idx = (idx + acc + 32'd1864) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1871);
      acc = acc + m_hist[idx] + 32'd1878;
      idx = (idx + acc + 32'd1885) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1892);
      acc = acc + m_hist[idx] + 32'd1899;
      idx = (idx + acc + 32'd1906) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1913);
      acc = acc + m_hist[idx] + 32'd1920;
      idx = (idx + acc + 32'd1927) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1934);
      acc = acc + m_hist[idx] + 32'd1941;
      idx = (idx + acc + 32'd1948) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1955);
      acc = acc + m_hist[idx] + 32'd1962;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1842);
      acc = acc + m_hist[idx] + 32'd1849;
      idx = (idx + acc + 32'd1856) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1863);
      acc = acc + m_hist[idx] + 32'd1870;
      idx = (idx + acc + 32'd1877) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1884);
      acc = acc + m_hist[idx] + 32'd1891;
      idx = (idx + acc + 32'd1898) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1905);
      acc = acc + m_hist[idx] + 32'd1912;
      idx = (idx + acc + 32'd1919) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1926);
      acc = acc + m_hist[idx] + 32'd1933;
      idx = (idx + acc + 32'd1940) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1947);
      acc = acc + m_hist[idx] + 32'd1954;
      idx = (idx + acc + 32'd1961) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1968);
      acc = acc + m_hist[idx] + 32'd1975;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1855);
      acc = acc + m_hist[idx] + 32'd1862;
      idx = (idx + acc + 32'd1869) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1876);
      acc = acc + m_hist[idx] + 32'd1883;
      idx = (idx + acc + 32'd1890) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1897);
      acc = acc + m_hist[idx] + 32'd1904;
      idx = (idx + acc + 32'd1911) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1918);
      acc = acc + m_hist[idx] + 32'd1925;
      idx = (idx + acc + 32'd1932) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1939);
      acc = acc + m_hist[idx] + 32'd1946;
      idx = (idx + acc + 32'd1953) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1960);
      acc = acc + m_hist[idx] + 32'd1967;
      idx = (idx + acc + 32'd1974) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1981);
      acc = acc + m_hist[idx] + 32'd1988;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_60 extends comp_base;
    function new(int unsigned id = 32'd60);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1860);
      acc = acc + m_hist[idx] + 32'd1867;
      idx = (idx + acc + 32'd1874) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1881);
      acc = acc + m_hist[idx] + 32'd1888;
      idx = (idx + acc + 32'd1895) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1902);
      acc = acc + m_hist[idx] + 32'd1909;
      idx = (idx + acc + 32'd1916) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1923);
      acc = acc + m_hist[idx] + 32'd1930;
      idx = (idx + acc + 32'd1937) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1944);
      acc = acc + m_hist[idx] + 32'd1951;
      idx = (idx + acc + 32'd1958) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1965);
      acc = acc + m_hist[idx] + 32'd1972;
      idx = (idx + acc + 32'd1979) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1986);
      acc = acc + m_hist[idx] + 32'd1993;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1873);
      acc = acc + m_hist[idx] + 32'd1880;
      idx = (idx + acc + 32'd1887) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1894);
      acc = acc + m_hist[idx] + 32'd1901;
      idx = (idx + acc + 32'd1908) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1915);
      acc = acc + m_hist[idx] + 32'd1922;
      idx = (idx + acc + 32'd1929) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1936);
      acc = acc + m_hist[idx] + 32'd1943;
      idx = (idx + acc + 32'd1950) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1957);
      acc = acc + m_hist[idx] + 32'd1964;
      idx = (idx + acc + 32'd1971) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1978);
      acc = acc + m_hist[idx] + 32'd1985;
      idx = (idx + acc + 32'd1992) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1999);
      acc = acc + m_hist[idx] + 32'd2006;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1886);
      acc = acc + m_hist[idx] + 32'd1893;
      idx = (idx + acc + 32'd1900) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1907);
      acc = acc + m_hist[idx] + 32'd1914;
      idx = (idx + acc + 32'd1921) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1928);
      acc = acc + m_hist[idx] + 32'd1935;
      idx = (idx + acc + 32'd1942) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1949);
      acc = acc + m_hist[idx] + 32'd1956;
      idx = (idx + acc + 32'd1963) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1970);
      acc = acc + m_hist[idx] + 32'd1977;
      idx = (idx + acc + 32'd1984) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1991);
      acc = acc + m_hist[idx] + 32'd1998;
      idx = (idx + acc + 32'd2005) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2012);
      acc = acc + m_hist[idx] + 32'd2019;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_61 extends comp_base;
    function new(int unsigned id = 32'd61);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1891);
      acc = acc + m_hist[idx] + 32'd1898;
      idx = (idx + acc + 32'd1905) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1912);
      acc = acc + m_hist[idx] + 32'd1919;
      idx = (idx + acc + 32'd1926) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1933);
      acc = acc + m_hist[idx] + 32'd1940;
      idx = (idx + acc + 32'd1947) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1954);
      acc = acc + m_hist[idx] + 32'd1961;
      idx = (idx + acc + 32'd1968) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1975);
      acc = acc + m_hist[idx] + 32'd1982;
      idx = (idx + acc + 32'd1989) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1996);
      acc = acc + m_hist[idx] + 32'd2003;
      idx = (idx + acc + 32'd2010) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2017);
      acc = acc + m_hist[idx] + 32'd2024;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1904);
      acc = acc + m_hist[idx] + 32'd1911;
      idx = (idx + acc + 32'd1918) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1925);
      acc = acc + m_hist[idx] + 32'd1932;
      idx = (idx + acc + 32'd1939) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1946);
      acc = acc + m_hist[idx] + 32'd1953;
      idx = (idx + acc + 32'd1960) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1967);
      acc = acc + m_hist[idx] + 32'd1974;
      idx = (idx + acc + 32'd1981) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1988);
      acc = acc + m_hist[idx] + 32'd1995;
      idx = (idx + acc + 32'd2002) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2009);
      acc = acc + m_hist[idx] + 32'd2016;
      idx = (idx + acc + 32'd2023) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2030);
      acc = acc + m_hist[idx] + 32'd2037;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1917);
      acc = acc + m_hist[idx] + 32'd1924;
      idx = (idx + acc + 32'd1931) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1938);
      acc = acc + m_hist[idx] + 32'd1945;
      idx = (idx + acc + 32'd1952) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1959);
      acc = acc + m_hist[idx] + 32'd1966;
      idx = (idx + acc + 32'd1973) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1980);
      acc = acc + m_hist[idx] + 32'd1987;
      idx = (idx + acc + 32'd1994) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2001);
      acc = acc + m_hist[idx] + 32'd2008;
      idx = (idx + acc + 32'd2015) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2022);
      acc = acc + m_hist[idx] + 32'd2029;
      idx = (idx + acc + 32'd2036) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2043);
      acc = acc + m_hist[idx] + 32'd2050;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_62 extends comp_base;
    function new(int unsigned id = 32'd62);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1922);
      acc = acc + m_hist[idx] + 32'd1929;
      idx = (idx + acc + 32'd1936) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1943);
      acc = acc + m_hist[idx] + 32'd1950;
      idx = (idx + acc + 32'd1957) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1964);
      acc = acc + m_hist[idx] + 32'd1971;
      idx = (idx + acc + 32'd1978) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1985);
      acc = acc + m_hist[idx] + 32'd1992;
      idx = (idx + acc + 32'd1999) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2006);
      acc = acc + m_hist[idx] + 32'd2013;
      idx = (idx + acc + 32'd2020) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2027);
      acc = acc + m_hist[idx] + 32'd2034;
      idx = (idx + acc + 32'd2041) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2048);
      acc = acc + m_hist[idx] + 32'd2055;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1935);
      acc = acc + m_hist[idx] + 32'd1942;
      idx = (idx + acc + 32'd1949) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1956);
      acc = acc + m_hist[idx] + 32'd1963;
      idx = (idx + acc + 32'd1970) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1977);
      acc = acc + m_hist[idx] + 32'd1984;
      idx = (idx + acc + 32'd1991) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1998);
      acc = acc + m_hist[idx] + 32'd2005;
      idx = (idx + acc + 32'd2012) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2019);
      acc = acc + m_hist[idx] + 32'd2026;
      idx = (idx + acc + 32'd2033) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2040);
      acc = acc + m_hist[idx] + 32'd2047;
      idx = (idx + acc + 32'd2054) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2061);
      acc = acc + m_hist[idx] + 32'd2068;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1948);
      acc = acc + m_hist[idx] + 32'd1955;
      idx = (idx + acc + 32'd1962) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1969);
      acc = acc + m_hist[idx] + 32'd1976;
      idx = (idx + acc + 32'd1983) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1990);
      acc = acc + m_hist[idx] + 32'd1997;
      idx = (idx + acc + 32'd2004) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2011);
      acc = acc + m_hist[idx] + 32'd2018;
      idx = (idx + acc + 32'd2025) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2032);
      acc = acc + m_hist[idx] + 32'd2039;
      idx = (idx + acc + 32'd2046) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2053);
      acc = acc + m_hist[idx] + 32'd2060;
      idx = (idx + acc + 32'd2067) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2074);
      acc = acc + m_hist[idx] + 32'd2081;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_63 extends comp_base;
    function new(int unsigned id = 32'd63);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1953);
      acc = acc + m_hist[idx] + 32'd1960;
      idx = (idx + acc + 32'd1967) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1974);
      acc = acc + m_hist[idx] + 32'd1981;
      idx = (idx + acc + 32'd1988) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1995);
      acc = acc + m_hist[idx] + 32'd2002;
      idx = (idx + acc + 32'd2009) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2016);
      acc = acc + m_hist[idx] + 32'd2023;
      idx = (idx + acc + 32'd2030) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2037);
      acc = acc + m_hist[idx] + 32'd2044;
      idx = (idx + acc + 32'd2051) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2058);
      acc = acc + m_hist[idx] + 32'd2065;
      idx = (idx + acc + 32'd2072) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2079);
      acc = acc + m_hist[idx] + 32'd2086;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1966);
      acc = acc + m_hist[idx] + 32'd1973;
      idx = (idx + acc + 32'd1980) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1987);
      acc = acc + m_hist[idx] + 32'd1994;
      idx = (idx + acc + 32'd2001) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2008);
      acc = acc + m_hist[idx] + 32'd2015;
      idx = (idx + acc + 32'd2022) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2029);
      acc = acc + m_hist[idx] + 32'd2036;
      idx = (idx + acc + 32'd2043) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2050);
      acc = acc + m_hist[idx] + 32'd2057;
      idx = (idx + acc + 32'd2064) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2071);
      acc = acc + m_hist[idx] + 32'd2078;
      idx = (idx + acc + 32'd2085) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2092);
      acc = acc + m_hist[idx] + 32'd2099;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1979);
      acc = acc + m_hist[idx] + 32'd1986;
      idx = (idx + acc + 32'd1993) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2000);
      acc = acc + m_hist[idx] + 32'd2007;
      idx = (idx + acc + 32'd2014) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2021);
      acc = acc + m_hist[idx] + 32'd2028;
      idx = (idx + acc + 32'd2035) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2042);
      acc = acc + m_hist[idx] + 32'd2049;
      idx = (idx + acc + 32'd2056) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2063);
      acc = acc + m_hist[idx] + 32'd2070;
      idx = (idx + acc + 32'd2077) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2084);
      acc = acc + m_hist[idx] + 32'd2091;
      idx = (idx + acc + 32'd2098) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2105);
      acc = acc + m_hist[idx] + 32'd2112;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_64 extends comp_base;
    function new(int unsigned id = 32'd64);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1984);
      acc = acc + m_hist[idx] + 32'd1991;
      idx = (idx + acc + 32'd1998) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2005);
      acc = acc + m_hist[idx] + 32'd2012;
      idx = (idx + acc + 32'd2019) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2026);
      acc = acc + m_hist[idx] + 32'd2033;
      idx = (idx + acc + 32'd2040) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2047);
      acc = acc + m_hist[idx] + 32'd2054;
      idx = (idx + acc + 32'd2061) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2068);
      acc = acc + m_hist[idx] + 32'd2075;
      idx = (idx + acc + 32'd2082) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2089);
      acc = acc + m_hist[idx] + 32'd2096;
      idx = (idx + acc + 32'd2103) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2110);
      acc = acc + m_hist[idx] + 32'd2117;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd1997);
      acc = acc + m_hist[idx] + 32'd2004;
      idx = (idx + acc + 32'd2011) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2018);
      acc = acc + m_hist[idx] + 32'd2025;
      idx = (idx + acc + 32'd2032) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2039);
      acc = acc + m_hist[idx] + 32'd2046;
      idx = (idx + acc + 32'd2053) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2060);
      acc = acc + m_hist[idx] + 32'd2067;
      idx = (idx + acc + 32'd2074) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2081);
      acc = acc + m_hist[idx] + 32'd2088;
      idx = (idx + acc + 32'd2095) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2102);
      acc = acc + m_hist[idx] + 32'd2109;
      idx = (idx + acc + 32'd2116) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2123);
      acc = acc + m_hist[idx] + 32'd2130;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2010);
      acc = acc + m_hist[idx] + 32'd2017;
      idx = (idx + acc + 32'd2024) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2031);
      acc = acc + m_hist[idx] + 32'd2038;
      idx = (idx + acc + 32'd2045) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2052);
      acc = acc + m_hist[idx] + 32'd2059;
      idx = (idx + acc + 32'd2066) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2073);
      acc = acc + m_hist[idx] + 32'd2080;
      idx = (idx + acc + 32'd2087) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2094);
      acc = acc + m_hist[idx] + 32'd2101;
      idx = (idx + acc + 32'd2108) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2115);
      acc = acc + m_hist[idx] + 32'd2122;
      idx = (idx + acc + 32'd2129) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2136);
      acc = acc + m_hist[idx] + 32'd2143;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_65 extends comp_base;
    function new(int unsigned id = 32'd65);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2015);
      acc = acc + m_hist[idx] + 32'd2022;
      idx = (idx + acc + 32'd2029) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2036);
      acc = acc + m_hist[idx] + 32'd2043;
      idx = (idx + acc + 32'd2050) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2057);
      acc = acc + m_hist[idx] + 32'd2064;
      idx = (idx + acc + 32'd2071) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2078);
      acc = acc + m_hist[idx] + 32'd2085;
      idx = (idx + acc + 32'd2092) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2099);
      acc = acc + m_hist[idx] + 32'd2106;
      idx = (idx + acc + 32'd2113) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2120);
      acc = acc + m_hist[idx] + 32'd2127;
      idx = (idx + acc + 32'd2134) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2141);
      acc = acc + m_hist[idx] + 32'd2148;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2028);
      acc = acc + m_hist[idx] + 32'd2035;
      idx = (idx + acc + 32'd2042) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2049);
      acc = acc + m_hist[idx] + 32'd2056;
      idx = (idx + acc + 32'd2063) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2070);
      acc = acc + m_hist[idx] + 32'd2077;
      idx = (idx + acc + 32'd2084) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2091);
      acc = acc + m_hist[idx] + 32'd2098;
      idx = (idx + acc + 32'd2105) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2112);
      acc = acc + m_hist[idx] + 32'd2119;
      idx = (idx + acc + 32'd2126) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2133);
      acc = acc + m_hist[idx] + 32'd2140;
      idx = (idx + acc + 32'd2147) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2154);
      acc = acc + m_hist[idx] + 32'd2161;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2041);
      acc = acc + m_hist[idx] + 32'd2048;
      idx = (idx + acc + 32'd2055) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2062);
      acc = acc + m_hist[idx] + 32'd2069;
      idx = (idx + acc + 32'd2076) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2083);
      acc = acc + m_hist[idx] + 32'd2090;
      idx = (idx + acc + 32'd2097) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2104);
      acc = acc + m_hist[idx] + 32'd2111;
      idx = (idx + acc + 32'd2118) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2125);
      acc = acc + m_hist[idx] + 32'd2132;
      idx = (idx + acc + 32'd2139) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2146);
      acc = acc + m_hist[idx] + 32'd2153;
      idx = (idx + acc + 32'd2160) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2167);
      acc = acc + m_hist[idx] + 32'd2174;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_66 extends comp_base;
    function new(int unsigned id = 32'd66);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2046);
      acc = acc + m_hist[idx] + 32'd2053;
      idx = (idx + acc + 32'd2060) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2067);
      acc = acc + m_hist[idx] + 32'd2074;
      idx = (idx + acc + 32'd2081) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2088);
      acc = acc + m_hist[idx] + 32'd2095;
      idx = (idx + acc + 32'd2102) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2109);
      acc = acc + m_hist[idx] + 32'd2116;
      idx = (idx + acc + 32'd2123) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2130);
      acc = acc + m_hist[idx] + 32'd2137;
      idx = (idx + acc + 32'd2144) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2151);
      acc = acc + m_hist[idx] + 32'd2158;
      idx = (idx + acc + 32'd2165) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2172);
      acc = acc + m_hist[idx] + 32'd2179;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2059);
      acc = acc + m_hist[idx] + 32'd2066;
      idx = (idx + acc + 32'd2073) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2080);
      acc = acc + m_hist[idx] + 32'd2087;
      idx = (idx + acc + 32'd2094) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2101);
      acc = acc + m_hist[idx] + 32'd2108;
      idx = (idx + acc + 32'd2115) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2122);
      acc = acc + m_hist[idx] + 32'd2129;
      idx = (idx + acc + 32'd2136) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2143);
      acc = acc + m_hist[idx] + 32'd2150;
      idx = (idx + acc + 32'd2157) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2164);
      acc = acc + m_hist[idx] + 32'd2171;
      idx = (idx + acc + 32'd2178) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2185);
      acc = acc + m_hist[idx] + 32'd2192;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2072);
      acc = acc + m_hist[idx] + 32'd2079;
      idx = (idx + acc + 32'd2086) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2093);
      acc = acc + m_hist[idx] + 32'd2100;
      idx = (idx + acc + 32'd2107) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2114);
      acc = acc + m_hist[idx] + 32'd2121;
      idx = (idx + acc + 32'd2128) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2135);
      acc = acc + m_hist[idx] + 32'd2142;
      idx = (idx + acc + 32'd2149) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2156);
      acc = acc + m_hist[idx] + 32'd2163;
      idx = (idx + acc + 32'd2170) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2177);
      acc = acc + m_hist[idx] + 32'd2184;
      idx = (idx + acc + 32'd2191) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2198);
      acc = acc + m_hist[idx] + 32'd2205;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_67 extends comp_base;
    function new(int unsigned id = 32'd67);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2077);
      acc = acc + m_hist[idx] + 32'd2084;
      idx = (idx + acc + 32'd2091) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2098);
      acc = acc + m_hist[idx] + 32'd2105;
      idx = (idx + acc + 32'd2112) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2119);
      acc = acc + m_hist[idx] + 32'd2126;
      idx = (idx + acc + 32'd2133) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2140);
      acc = acc + m_hist[idx] + 32'd2147;
      idx = (idx + acc + 32'd2154) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2161);
      acc = acc + m_hist[idx] + 32'd2168;
      idx = (idx + acc + 32'd2175) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2182);
      acc = acc + m_hist[idx] + 32'd2189;
      idx = (idx + acc + 32'd2196) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2203);
      acc = acc + m_hist[idx] + 32'd2210;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2090);
      acc = acc + m_hist[idx] + 32'd2097;
      idx = (idx + acc + 32'd2104) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2111);
      acc = acc + m_hist[idx] + 32'd2118;
      idx = (idx + acc + 32'd2125) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2132);
      acc = acc + m_hist[idx] + 32'd2139;
      idx = (idx + acc + 32'd2146) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2153);
      acc = acc + m_hist[idx] + 32'd2160;
      idx = (idx + acc + 32'd2167) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2174);
      acc = acc + m_hist[idx] + 32'd2181;
      idx = (idx + acc + 32'd2188) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2195);
      acc = acc + m_hist[idx] + 32'd2202;
      idx = (idx + acc + 32'd2209) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2216);
      acc = acc + m_hist[idx] + 32'd2223;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2103);
      acc = acc + m_hist[idx] + 32'd2110;
      idx = (idx + acc + 32'd2117) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2124);
      acc = acc + m_hist[idx] + 32'd2131;
      idx = (idx + acc + 32'd2138) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2145);
      acc = acc + m_hist[idx] + 32'd2152;
      idx = (idx + acc + 32'd2159) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2166);
      acc = acc + m_hist[idx] + 32'd2173;
      idx = (idx + acc + 32'd2180) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2187);
      acc = acc + m_hist[idx] + 32'd2194;
      idx = (idx + acc + 32'd2201) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2208);
      acc = acc + m_hist[idx] + 32'd2215;
      idx = (idx + acc + 32'd2222) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2229);
      acc = acc + m_hist[idx] + 32'd2236;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_68 extends comp_base;
    function new(int unsigned id = 32'd68);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2108);
      acc = acc + m_hist[idx] + 32'd2115;
      idx = (idx + acc + 32'd2122) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2129);
      acc = acc + m_hist[idx] + 32'd2136;
      idx = (idx + acc + 32'd2143) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2150);
      acc = acc + m_hist[idx] + 32'd2157;
      idx = (idx + acc + 32'd2164) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2171);
      acc = acc + m_hist[idx] + 32'd2178;
      idx = (idx + acc + 32'd2185) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2192);
      acc = acc + m_hist[idx] + 32'd2199;
      idx = (idx + acc + 32'd2206) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2213);
      acc = acc + m_hist[idx] + 32'd2220;
      idx = (idx + acc + 32'd2227) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2234);
      acc = acc + m_hist[idx] + 32'd2241;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2121);
      acc = acc + m_hist[idx] + 32'd2128;
      idx = (idx + acc + 32'd2135) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2142);
      acc = acc + m_hist[idx] + 32'd2149;
      idx = (idx + acc + 32'd2156) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2163);
      acc = acc + m_hist[idx] + 32'd2170;
      idx = (idx + acc + 32'd2177) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2184);
      acc = acc + m_hist[idx] + 32'd2191;
      idx = (idx + acc + 32'd2198) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2205);
      acc = acc + m_hist[idx] + 32'd2212;
      idx = (idx + acc + 32'd2219) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2226);
      acc = acc + m_hist[idx] + 32'd2233;
      idx = (idx + acc + 32'd2240) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2247);
      acc = acc + m_hist[idx] + 32'd2254;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2134);
      acc = acc + m_hist[idx] + 32'd2141;
      idx = (idx + acc + 32'd2148) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2155);
      acc = acc + m_hist[idx] + 32'd2162;
      idx = (idx + acc + 32'd2169) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2176);
      acc = acc + m_hist[idx] + 32'd2183;
      idx = (idx + acc + 32'd2190) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2197);
      acc = acc + m_hist[idx] + 32'd2204;
      idx = (idx + acc + 32'd2211) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2218);
      acc = acc + m_hist[idx] + 32'd2225;
      idx = (idx + acc + 32'd2232) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2239);
      acc = acc + m_hist[idx] + 32'd2246;
      idx = (idx + acc + 32'd2253) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2260);
      acc = acc + m_hist[idx] + 32'd2267;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_69 extends comp_base;
    function new(int unsigned id = 32'd69);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2139);
      acc = acc + m_hist[idx] + 32'd2146;
      idx = (idx + acc + 32'd2153) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2160);
      acc = acc + m_hist[idx] + 32'd2167;
      idx = (idx + acc + 32'd2174) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2181);
      acc = acc + m_hist[idx] + 32'd2188;
      idx = (idx + acc + 32'd2195) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2202);
      acc = acc + m_hist[idx] + 32'd2209;
      idx = (idx + acc + 32'd2216) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2223);
      acc = acc + m_hist[idx] + 32'd2230;
      idx = (idx + acc + 32'd2237) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2244);
      acc = acc + m_hist[idx] + 32'd2251;
      idx = (idx + acc + 32'd2258) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2265);
      acc = acc + m_hist[idx] + 32'd2272;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2152);
      acc = acc + m_hist[idx] + 32'd2159;
      idx = (idx + acc + 32'd2166) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2173);
      acc = acc + m_hist[idx] + 32'd2180;
      idx = (idx + acc + 32'd2187) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2194);
      acc = acc + m_hist[idx] + 32'd2201;
      idx = (idx + acc + 32'd2208) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2215);
      acc = acc + m_hist[idx] + 32'd2222;
      idx = (idx + acc + 32'd2229) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2236);
      acc = acc + m_hist[idx] + 32'd2243;
      idx = (idx + acc + 32'd2250) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2257);
      acc = acc + m_hist[idx] + 32'd2264;
      idx = (idx + acc + 32'd2271) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2278);
      acc = acc + m_hist[idx] + 32'd2285;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2165);
      acc = acc + m_hist[idx] + 32'd2172;
      idx = (idx + acc + 32'd2179) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2186);
      acc = acc + m_hist[idx] + 32'd2193;
      idx = (idx + acc + 32'd2200) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2207);
      acc = acc + m_hist[idx] + 32'd2214;
      idx = (idx + acc + 32'd2221) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2228);
      acc = acc + m_hist[idx] + 32'd2235;
      idx = (idx + acc + 32'd2242) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2249);
      acc = acc + m_hist[idx] + 32'd2256;
      idx = (idx + acc + 32'd2263) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2270);
      acc = acc + m_hist[idx] + 32'd2277;
      idx = (idx + acc + 32'd2284) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2291);
      acc = acc + m_hist[idx] + 32'd2298;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_70 extends comp_base;
    function new(int unsigned id = 32'd70);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2170);
      acc = acc + m_hist[idx] + 32'd2177;
      idx = (idx + acc + 32'd2184) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2191);
      acc = acc + m_hist[idx] + 32'd2198;
      idx = (idx + acc + 32'd2205) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2212);
      acc = acc + m_hist[idx] + 32'd2219;
      idx = (idx + acc + 32'd2226) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2233);
      acc = acc + m_hist[idx] + 32'd2240;
      idx = (idx + acc + 32'd2247) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2254);
      acc = acc + m_hist[idx] + 32'd2261;
      idx = (idx + acc + 32'd2268) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2275);
      acc = acc + m_hist[idx] + 32'd2282;
      idx = (idx + acc + 32'd2289) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2296);
      acc = acc + m_hist[idx] + 32'd2303;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2183);
      acc = acc + m_hist[idx] + 32'd2190;
      idx = (idx + acc + 32'd2197) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2204);
      acc = acc + m_hist[idx] + 32'd2211;
      idx = (idx + acc + 32'd2218) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2225);
      acc = acc + m_hist[idx] + 32'd2232;
      idx = (idx + acc + 32'd2239) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2246);
      acc = acc + m_hist[idx] + 32'd2253;
      idx = (idx + acc + 32'd2260) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2267);
      acc = acc + m_hist[idx] + 32'd2274;
      idx = (idx + acc + 32'd2281) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2288);
      acc = acc + m_hist[idx] + 32'd2295;
      idx = (idx + acc + 32'd2302) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2309);
      acc = acc + m_hist[idx] + 32'd2316;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2196);
      acc = acc + m_hist[idx] + 32'd2203;
      idx = (idx + acc + 32'd2210) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2217);
      acc = acc + m_hist[idx] + 32'd2224;
      idx = (idx + acc + 32'd2231) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2238);
      acc = acc + m_hist[idx] + 32'd2245;
      idx = (idx + acc + 32'd2252) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2259);
      acc = acc + m_hist[idx] + 32'd2266;
      idx = (idx + acc + 32'd2273) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2280);
      acc = acc + m_hist[idx] + 32'd2287;
      idx = (idx + acc + 32'd2294) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2301);
      acc = acc + m_hist[idx] + 32'd2308;
      idx = (idx + acc + 32'd2315) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2322);
      acc = acc + m_hist[idx] + 32'd2329;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_71 extends comp_base;
    function new(int unsigned id = 32'd71);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2201);
      acc = acc + m_hist[idx] + 32'd2208;
      idx = (idx + acc + 32'd2215) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2222);
      acc = acc + m_hist[idx] + 32'd2229;
      idx = (idx + acc + 32'd2236) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2243);
      acc = acc + m_hist[idx] + 32'd2250;
      idx = (idx + acc + 32'd2257) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2264);
      acc = acc + m_hist[idx] + 32'd2271;
      idx = (idx + acc + 32'd2278) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2285);
      acc = acc + m_hist[idx] + 32'd2292;
      idx = (idx + acc + 32'd2299) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2306);
      acc = acc + m_hist[idx] + 32'd2313;
      idx = (idx + acc + 32'd2320) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2327);
      acc = acc + m_hist[idx] + 32'd2334;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2214);
      acc = acc + m_hist[idx] + 32'd2221;
      idx = (idx + acc + 32'd2228) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2235);
      acc = acc + m_hist[idx] + 32'd2242;
      idx = (idx + acc + 32'd2249) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2256);
      acc = acc + m_hist[idx] + 32'd2263;
      idx = (idx + acc + 32'd2270) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2277);
      acc = acc + m_hist[idx] + 32'd2284;
      idx = (idx + acc + 32'd2291) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2298);
      acc = acc + m_hist[idx] + 32'd2305;
      idx = (idx + acc + 32'd2312) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2319);
      acc = acc + m_hist[idx] + 32'd2326;
      idx = (idx + acc + 32'd2333) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2340);
      acc = acc + m_hist[idx] + 32'd2347;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2227);
      acc = acc + m_hist[idx] + 32'd2234;
      idx = (idx + acc + 32'd2241) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2248);
      acc = acc + m_hist[idx] + 32'd2255;
      idx = (idx + acc + 32'd2262) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2269);
      acc = acc + m_hist[idx] + 32'd2276;
      idx = (idx + acc + 32'd2283) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2290);
      acc = acc + m_hist[idx] + 32'd2297;
      idx = (idx + acc + 32'd2304) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2311);
      acc = acc + m_hist[idx] + 32'd2318;
      idx = (idx + acc + 32'd2325) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2332);
      acc = acc + m_hist[idx] + 32'd2339;
      idx = (idx + acc + 32'd2346) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2353);
      acc = acc + m_hist[idx] + 32'd2360;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_72 extends comp_base;
    function new(int unsigned id = 32'd72);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2232);
      acc = acc + m_hist[idx] + 32'd2239;
      idx = (idx + acc + 32'd2246) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2253);
      acc = acc + m_hist[idx] + 32'd2260;
      idx = (idx + acc + 32'd2267) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2274);
      acc = acc + m_hist[idx] + 32'd2281;
      idx = (idx + acc + 32'd2288) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2295);
      acc = acc + m_hist[idx] + 32'd2302;
      idx = (idx + acc + 32'd2309) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2316);
      acc = acc + m_hist[idx] + 32'd2323;
      idx = (idx + acc + 32'd2330) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2337);
      acc = acc + m_hist[idx] + 32'd2344;
      idx = (idx + acc + 32'd2351) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2358);
      acc = acc + m_hist[idx] + 32'd2365;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2245);
      acc = acc + m_hist[idx] + 32'd2252;
      idx = (idx + acc + 32'd2259) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2266);
      acc = acc + m_hist[idx] + 32'd2273;
      idx = (idx + acc + 32'd2280) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2287);
      acc = acc + m_hist[idx] + 32'd2294;
      idx = (idx + acc + 32'd2301) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2308);
      acc = acc + m_hist[idx] + 32'd2315;
      idx = (idx + acc + 32'd2322) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2329);
      acc = acc + m_hist[idx] + 32'd2336;
      idx = (idx + acc + 32'd2343) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2350);
      acc = acc + m_hist[idx] + 32'd2357;
      idx = (idx + acc + 32'd2364) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2371);
      acc = acc + m_hist[idx] + 32'd2378;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2258);
      acc = acc + m_hist[idx] + 32'd2265;
      idx = (idx + acc + 32'd2272) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2279);
      acc = acc + m_hist[idx] + 32'd2286;
      idx = (idx + acc + 32'd2293) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2300);
      acc = acc + m_hist[idx] + 32'd2307;
      idx = (idx + acc + 32'd2314) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2321);
      acc = acc + m_hist[idx] + 32'd2328;
      idx = (idx + acc + 32'd2335) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2342);
      acc = acc + m_hist[idx] + 32'd2349;
      idx = (idx + acc + 32'd2356) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2363);
      acc = acc + m_hist[idx] + 32'd2370;
      idx = (idx + acc + 32'd2377) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2384);
      acc = acc + m_hist[idx] + 32'd2391;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_73 extends comp_base;
    function new(int unsigned id = 32'd73);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2263);
      acc = acc + m_hist[idx] + 32'd2270;
      idx = (idx + acc + 32'd2277) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2284);
      acc = acc + m_hist[idx] + 32'd2291;
      idx = (idx + acc + 32'd2298) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2305);
      acc = acc + m_hist[idx] + 32'd2312;
      idx = (idx + acc + 32'd2319) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2326);
      acc = acc + m_hist[idx] + 32'd2333;
      idx = (idx + acc + 32'd2340) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2347);
      acc = acc + m_hist[idx] + 32'd2354;
      idx = (idx + acc + 32'd2361) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2368);
      acc = acc + m_hist[idx] + 32'd2375;
      idx = (idx + acc + 32'd2382) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2389);
      acc = acc + m_hist[idx] + 32'd2396;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2276);
      acc = acc + m_hist[idx] + 32'd2283;
      idx = (idx + acc + 32'd2290) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2297);
      acc = acc + m_hist[idx] + 32'd2304;
      idx = (idx + acc + 32'd2311) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2318);
      acc = acc + m_hist[idx] + 32'd2325;
      idx = (idx + acc + 32'd2332) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2339);
      acc = acc + m_hist[idx] + 32'd2346;
      idx = (idx + acc + 32'd2353) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2360);
      acc = acc + m_hist[idx] + 32'd2367;
      idx = (idx + acc + 32'd2374) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2381);
      acc = acc + m_hist[idx] + 32'd2388;
      idx = (idx + acc + 32'd2395) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2402);
      acc = acc + m_hist[idx] + 32'd2409;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2289);
      acc = acc + m_hist[idx] + 32'd2296;
      idx = (idx + acc + 32'd2303) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2310);
      acc = acc + m_hist[idx] + 32'd2317;
      idx = (idx + acc + 32'd2324) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2331);
      acc = acc + m_hist[idx] + 32'd2338;
      idx = (idx + acc + 32'd2345) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2352);
      acc = acc + m_hist[idx] + 32'd2359;
      idx = (idx + acc + 32'd2366) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2373);
      acc = acc + m_hist[idx] + 32'd2380;
      idx = (idx + acc + 32'd2387) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2394);
      acc = acc + m_hist[idx] + 32'd2401;
      idx = (idx + acc + 32'd2408) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2415);
      acc = acc + m_hist[idx] + 32'd2422;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_74 extends comp_base;
    function new(int unsigned id = 32'd74);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2294);
      acc = acc + m_hist[idx] + 32'd2301;
      idx = (idx + acc + 32'd2308) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2315);
      acc = acc + m_hist[idx] + 32'd2322;
      idx = (idx + acc + 32'd2329) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2336);
      acc = acc + m_hist[idx] + 32'd2343;
      idx = (idx + acc + 32'd2350) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2357);
      acc = acc + m_hist[idx] + 32'd2364;
      idx = (idx + acc + 32'd2371) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2378);
      acc = acc + m_hist[idx] + 32'd2385;
      idx = (idx + acc + 32'd2392) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2399);
      acc = acc + m_hist[idx] + 32'd2406;
      idx = (idx + acc + 32'd2413) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2420);
      acc = acc + m_hist[idx] + 32'd2427;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2307);
      acc = acc + m_hist[idx] + 32'd2314;
      idx = (idx + acc + 32'd2321) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2328);
      acc = acc + m_hist[idx] + 32'd2335;
      idx = (idx + acc + 32'd2342) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2349);
      acc = acc + m_hist[idx] + 32'd2356;
      idx = (idx + acc + 32'd2363) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2370);
      acc = acc + m_hist[idx] + 32'd2377;
      idx = (idx + acc + 32'd2384) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2391);
      acc = acc + m_hist[idx] + 32'd2398;
      idx = (idx + acc + 32'd2405) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2412);
      acc = acc + m_hist[idx] + 32'd2419;
      idx = (idx + acc + 32'd2426) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2433);
      acc = acc + m_hist[idx] + 32'd2440;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2320);
      acc = acc + m_hist[idx] + 32'd2327;
      idx = (idx + acc + 32'd2334) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2341);
      acc = acc + m_hist[idx] + 32'd2348;
      idx = (idx + acc + 32'd2355) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2362);
      acc = acc + m_hist[idx] + 32'd2369;
      idx = (idx + acc + 32'd2376) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2383);
      acc = acc + m_hist[idx] + 32'd2390;
      idx = (idx + acc + 32'd2397) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2404);
      acc = acc + m_hist[idx] + 32'd2411;
      idx = (idx + acc + 32'd2418) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2425);
      acc = acc + m_hist[idx] + 32'd2432;
      idx = (idx + acc + 32'd2439) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2446);
      acc = acc + m_hist[idx] + 32'd2453;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_75 extends comp_base;
    function new(int unsigned id = 32'd75);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2325);
      acc = acc + m_hist[idx] + 32'd2332;
      idx = (idx + acc + 32'd2339) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2346);
      acc = acc + m_hist[idx] + 32'd2353;
      idx = (idx + acc + 32'd2360) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2367);
      acc = acc + m_hist[idx] + 32'd2374;
      idx = (idx + acc + 32'd2381) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2388);
      acc = acc + m_hist[idx] + 32'd2395;
      idx = (idx + acc + 32'd2402) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2409);
      acc = acc + m_hist[idx] + 32'd2416;
      idx = (idx + acc + 32'd2423) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2430);
      acc = acc + m_hist[idx] + 32'd2437;
      idx = (idx + acc + 32'd2444) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2451);
      acc = acc + m_hist[idx] + 32'd2458;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2338);
      acc = acc + m_hist[idx] + 32'd2345;
      idx = (idx + acc + 32'd2352) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2359);
      acc = acc + m_hist[idx] + 32'd2366;
      idx = (idx + acc + 32'd2373) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2380);
      acc = acc + m_hist[idx] + 32'd2387;
      idx = (idx + acc + 32'd2394) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2401);
      acc = acc + m_hist[idx] + 32'd2408;
      idx = (idx + acc + 32'd2415) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2422);
      acc = acc + m_hist[idx] + 32'd2429;
      idx = (idx + acc + 32'd2436) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2443);
      acc = acc + m_hist[idx] + 32'd2450;
      idx = (idx + acc + 32'd2457) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2464);
      acc = acc + m_hist[idx] + 32'd2471;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2351);
      acc = acc + m_hist[idx] + 32'd2358;
      idx = (idx + acc + 32'd2365) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2372);
      acc = acc + m_hist[idx] + 32'd2379;
      idx = (idx + acc + 32'd2386) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2393);
      acc = acc + m_hist[idx] + 32'd2400;
      idx = (idx + acc + 32'd2407) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2414);
      acc = acc + m_hist[idx] + 32'd2421;
      idx = (idx + acc + 32'd2428) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2435);
      acc = acc + m_hist[idx] + 32'd2442;
      idx = (idx + acc + 32'd2449) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2456);
      acc = acc + m_hist[idx] + 32'd2463;
      idx = (idx + acc + 32'd2470) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2477);
      acc = acc + m_hist[idx] + 32'd2484;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_76 extends comp_base;
    function new(int unsigned id = 32'd76);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2356);
      acc = acc + m_hist[idx] + 32'd2363;
      idx = (idx + acc + 32'd2370) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2377);
      acc = acc + m_hist[idx] + 32'd2384;
      idx = (idx + acc + 32'd2391) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2398);
      acc = acc + m_hist[idx] + 32'd2405;
      idx = (idx + acc + 32'd2412) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2419);
      acc = acc + m_hist[idx] + 32'd2426;
      idx = (idx + acc + 32'd2433) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2440);
      acc = acc + m_hist[idx] + 32'd2447;
      idx = (idx + acc + 32'd2454) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2461);
      acc = acc + m_hist[idx] + 32'd2468;
      idx = (idx + acc + 32'd2475) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2482);
      acc = acc + m_hist[idx] + 32'd2489;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2369);
      acc = acc + m_hist[idx] + 32'd2376;
      idx = (idx + acc + 32'd2383) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2390);
      acc = acc + m_hist[idx] + 32'd2397;
      idx = (idx + acc + 32'd2404) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2411);
      acc = acc + m_hist[idx] + 32'd2418;
      idx = (idx + acc + 32'd2425) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2432);
      acc = acc + m_hist[idx] + 32'd2439;
      idx = (idx + acc + 32'd2446) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2453);
      acc = acc + m_hist[idx] + 32'd2460;
      idx = (idx + acc + 32'd2467) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2474);
      acc = acc + m_hist[idx] + 32'd2481;
      idx = (idx + acc + 32'd2488) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2495);
      acc = acc + m_hist[idx] + 32'd2502;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2382);
      acc = acc + m_hist[idx] + 32'd2389;
      idx = (idx + acc + 32'd2396) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2403);
      acc = acc + m_hist[idx] + 32'd2410;
      idx = (idx + acc + 32'd2417) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2424);
      acc = acc + m_hist[idx] + 32'd2431;
      idx = (idx + acc + 32'd2438) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2445);
      acc = acc + m_hist[idx] + 32'd2452;
      idx = (idx + acc + 32'd2459) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2466);
      acc = acc + m_hist[idx] + 32'd2473;
      idx = (idx + acc + 32'd2480) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2487);
      acc = acc + m_hist[idx] + 32'd2494;
      idx = (idx + acc + 32'd2501) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2508);
      acc = acc + m_hist[idx] + 32'd2515;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_77 extends comp_base;
    function new(int unsigned id = 32'd77);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2387);
      acc = acc + m_hist[idx] + 32'd2394;
      idx = (idx + acc + 32'd2401) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2408);
      acc = acc + m_hist[idx] + 32'd2415;
      idx = (idx + acc + 32'd2422) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2429);
      acc = acc + m_hist[idx] + 32'd2436;
      idx = (idx + acc + 32'd2443) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2450);
      acc = acc + m_hist[idx] + 32'd2457;
      idx = (idx + acc + 32'd2464) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2471);
      acc = acc + m_hist[idx] + 32'd2478;
      idx = (idx + acc + 32'd2485) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2492);
      acc = acc + m_hist[idx] + 32'd2499;
      idx = (idx + acc + 32'd2506) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2513);
      acc = acc + m_hist[idx] + 32'd2520;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2400);
      acc = acc + m_hist[idx] + 32'd2407;
      idx = (idx + acc + 32'd2414) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2421);
      acc = acc + m_hist[idx] + 32'd2428;
      idx = (idx + acc + 32'd2435) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2442);
      acc = acc + m_hist[idx] + 32'd2449;
      idx = (idx + acc + 32'd2456) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2463);
      acc = acc + m_hist[idx] + 32'd2470;
      idx = (idx + acc + 32'd2477) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2484);
      acc = acc + m_hist[idx] + 32'd2491;
      idx = (idx + acc + 32'd2498) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2505);
      acc = acc + m_hist[idx] + 32'd2512;
      idx = (idx + acc + 32'd2519) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2526);
      acc = acc + m_hist[idx] + 32'd2533;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2413);
      acc = acc + m_hist[idx] + 32'd2420;
      idx = (idx + acc + 32'd2427) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2434);
      acc = acc + m_hist[idx] + 32'd2441;
      idx = (idx + acc + 32'd2448) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2455);
      acc = acc + m_hist[idx] + 32'd2462;
      idx = (idx + acc + 32'd2469) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2476);
      acc = acc + m_hist[idx] + 32'd2483;
      idx = (idx + acc + 32'd2490) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2497);
      acc = acc + m_hist[idx] + 32'd2504;
      idx = (idx + acc + 32'd2511) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2518);
      acc = acc + m_hist[idx] + 32'd2525;
      idx = (idx + acc + 32'd2532) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2539);
      acc = acc + m_hist[idx] + 32'd2546;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_78 extends comp_base;
    function new(int unsigned id = 32'd78);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2418);
      acc = acc + m_hist[idx] + 32'd2425;
      idx = (idx + acc + 32'd2432) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2439);
      acc = acc + m_hist[idx] + 32'd2446;
      idx = (idx + acc + 32'd2453) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2460);
      acc = acc + m_hist[idx] + 32'd2467;
      idx = (idx + acc + 32'd2474) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2481);
      acc = acc + m_hist[idx] + 32'd2488;
      idx = (idx + acc + 32'd2495) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2502);
      acc = acc + m_hist[idx] + 32'd2509;
      idx = (idx + acc + 32'd2516) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2523);
      acc = acc + m_hist[idx] + 32'd2530;
      idx = (idx + acc + 32'd2537) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2544);
      acc = acc + m_hist[idx] + 32'd2551;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2431);
      acc = acc + m_hist[idx] + 32'd2438;
      idx = (idx + acc + 32'd2445) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2452);
      acc = acc + m_hist[idx] + 32'd2459;
      idx = (idx + acc + 32'd2466) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2473);
      acc = acc + m_hist[idx] + 32'd2480;
      idx = (idx + acc + 32'd2487) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2494);
      acc = acc + m_hist[idx] + 32'd2501;
      idx = (idx + acc + 32'd2508) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2515);
      acc = acc + m_hist[idx] + 32'd2522;
      idx = (idx + acc + 32'd2529) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2536);
      acc = acc + m_hist[idx] + 32'd2543;
      idx = (idx + acc + 32'd2550) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2557);
      acc = acc + m_hist[idx] + 32'd2564;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2444);
      acc = acc + m_hist[idx] + 32'd2451;
      idx = (idx + acc + 32'd2458) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2465);
      acc = acc + m_hist[idx] + 32'd2472;
      idx = (idx + acc + 32'd2479) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2486);
      acc = acc + m_hist[idx] + 32'd2493;
      idx = (idx + acc + 32'd2500) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2507);
      acc = acc + m_hist[idx] + 32'd2514;
      idx = (idx + acc + 32'd2521) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2528);
      acc = acc + m_hist[idx] + 32'd2535;
      idx = (idx + acc + 32'd2542) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2549);
      acc = acc + m_hist[idx] + 32'd2556;
      idx = (idx + acc + 32'd2563) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2570);
      acc = acc + m_hist[idx] + 32'd2577;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_79 extends comp_base;
    function new(int unsigned id = 32'd79);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2449);
      acc = acc + m_hist[idx] + 32'd2456;
      idx = (idx + acc + 32'd2463) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2470);
      acc = acc + m_hist[idx] + 32'd2477;
      idx = (idx + acc + 32'd2484) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2491);
      acc = acc + m_hist[idx] + 32'd2498;
      idx = (idx + acc + 32'd2505) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2512);
      acc = acc + m_hist[idx] + 32'd2519;
      idx = (idx + acc + 32'd2526) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2533);
      acc = acc + m_hist[idx] + 32'd2540;
      idx = (idx + acc + 32'd2547) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2554);
      acc = acc + m_hist[idx] + 32'd2561;
      idx = (idx + acc + 32'd2568) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2575);
      acc = acc + m_hist[idx] + 32'd2582;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2462);
      acc = acc + m_hist[idx] + 32'd2469;
      idx = (idx + acc + 32'd2476) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2483);
      acc = acc + m_hist[idx] + 32'd2490;
      idx = (idx + acc + 32'd2497) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2504);
      acc = acc + m_hist[idx] + 32'd2511;
      idx = (idx + acc + 32'd2518) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2525);
      acc = acc + m_hist[idx] + 32'd2532;
      idx = (idx + acc + 32'd2539) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2546);
      acc = acc + m_hist[idx] + 32'd2553;
      idx = (idx + acc + 32'd2560) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2567);
      acc = acc + m_hist[idx] + 32'd2574;
      idx = (idx + acc + 32'd2581) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2588);
      acc = acc + m_hist[idx] + 32'd2595;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2475);
      acc = acc + m_hist[idx] + 32'd2482;
      idx = (idx + acc + 32'd2489) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2496);
      acc = acc + m_hist[idx] + 32'd2503;
      idx = (idx + acc + 32'd2510) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2517);
      acc = acc + m_hist[idx] + 32'd2524;
      idx = (idx + acc + 32'd2531) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2538);
      acc = acc + m_hist[idx] + 32'd2545;
      idx = (idx + acc + 32'd2552) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2559);
      acc = acc + m_hist[idx] + 32'd2566;
      idx = (idx + acc + 32'd2573) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2580);
      acc = acc + m_hist[idx] + 32'd2587;
      idx = (idx + acc + 32'd2594) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2601);
      acc = acc + m_hist[idx] + 32'd2608;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_80 extends comp_base;
    function new(int unsigned id = 32'd80);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2480);
      acc = acc + m_hist[idx] + 32'd2487;
      idx = (idx + acc + 32'd2494) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2501);
      acc = acc + m_hist[idx] + 32'd2508;
      idx = (idx + acc + 32'd2515) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2522);
      acc = acc + m_hist[idx] + 32'd2529;
      idx = (idx + acc + 32'd2536) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2543);
      acc = acc + m_hist[idx] + 32'd2550;
      idx = (idx + acc + 32'd2557) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2564);
      acc = acc + m_hist[idx] + 32'd2571;
      idx = (idx + acc + 32'd2578) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2585);
      acc = acc + m_hist[idx] + 32'd2592;
      idx = (idx + acc + 32'd2599) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2606);
      acc = acc + m_hist[idx] + 32'd2613;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2493);
      acc = acc + m_hist[idx] + 32'd2500;
      idx = (idx + acc + 32'd2507) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2514);
      acc = acc + m_hist[idx] + 32'd2521;
      idx = (idx + acc + 32'd2528) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2535);
      acc = acc + m_hist[idx] + 32'd2542;
      idx = (idx + acc + 32'd2549) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2556);
      acc = acc + m_hist[idx] + 32'd2563;
      idx = (idx + acc + 32'd2570) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2577);
      acc = acc + m_hist[idx] + 32'd2584;
      idx = (idx + acc + 32'd2591) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2598);
      acc = acc + m_hist[idx] + 32'd2605;
      idx = (idx + acc + 32'd2612) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2619);
      acc = acc + m_hist[idx] + 32'd2626;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2506);
      acc = acc + m_hist[idx] + 32'd2513;
      idx = (idx + acc + 32'd2520) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2527);
      acc = acc + m_hist[idx] + 32'd2534;
      idx = (idx + acc + 32'd2541) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2548);
      acc = acc + m_hist[idx] + 32'd2555;
      idx = (idx + acc + 32'd2562) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2569);
      acc = acc + m_hist[idx] + 32'd2576;
      idx = (idx + acc + 32'd2583) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2590);
      acc = acc + m_hist[idx] + 32'd2597;
      idx = (idx + acc + 32'd2604) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2611);
      acc = acc + m_hist[idx] + 32'd2618;
      idx = (idx + acc + 32'd2625) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2632);
      acc = acc + m_hist[idx] + 32'd2639;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_81 extends comp_base;
    function new(int unsigned id = 32'd81);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2511);
      acc = acc + m_hist[idx] + 32'd2518;
      idx = (idx + acc + 32'd2525) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2532);
      acc = acc + m_hist[idx] + 32'd2539;
      idx = (idx + acc + 32'd2546) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2553);
      acc = acc + m_hist[idx] + 32'd2560;
      idx = (idx + acc + 32'd2567) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2574);
      acc = acc + m_hist[idx] + 32'd2581;
      idx = (idx + acc + 32'd2588) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2595);
      acc = acc + m_hist[idx] + 32'd2602;
      idx = (idx + acc + 32'd2609) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2616);
      acc = acc + m_hist[idx] + 32'd2623;
      idx = (idx + acc + 32'd2630) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2637);
      acc = acc + m_hist[idx] + 32'd2644;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2524);
      acc = acc + m_hist[idx] + 32'd2531;
      idx = (idx + acc + 32'd2538) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2545);
      acc = acc + m_hist[idx] + 32'd2552;
      idx = (idx + acc + 32'd2559) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2566);
      acc = acc + m_hist[idx] + 32'd2573;
      idx = (idx + acc + 32'd2580) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2587);
      acc = acc + m_hist[idx] + 32'd2594;
      idx = (idx + acc + 32'd2601) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2608);
      acc = acc + m_hist[idx] + 32'd2615;
      idx = (idx + acc + 32'd2622) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2629);
      acc = acc + m_hist[idx] + 32'd2636;
      idx = (idx + acc + 32'd2643) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2650);
      acc = acc + m_hist[idx] + 32'd2657;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2537);
      acc = acc + m_hist[idx] + 32'd2544;
      idx = (idx + acc + 32'd2551) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2558);
      acc = acc + m_hist[idx] + 32'd2565;
      idx = (idx + acc + 32'd2572) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2579);
      acc = acc + m_hist[idx] + 32'd2586;
      idx = (idx + acc + 32'd2593) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2600);
      acc = acc + m_hist[idx] + 32'd2607;
      idx = (idx + acc + 32'd2614) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2621);
      acc = acc + m_hist[idx] + 32'd2628;
      idx = (idx + acc + 32'd2635) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2642);
      acc = acc + m_hist[idx] + 32'd2649;
      idx = (idx + acc + 32'd2656) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2663);
      acc = acc + m_hist[idx] + 32'd2670;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_82 extends comp_base;
    function new(int unsigned id = 32'd82);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2542);
      acc = acc + m_hist[idx] + 32'd2549;
      idx = (idx + acc + 32'd2556) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2563);
      acc = acc + m_hist[idx] + 32'd2570;
      idx = (idx + acc + 32'd2577) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2584);
      acc = acc + m_hist[idx] + 32'd2591;
      idx = (idx + acc + 32'd2598) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2605);
      acc = acc + m_hist[idx] + 32'd2612;
      idx = (idx + acc + 32'd2619) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2626);
      acc = acc + m_hist[idx] + 32'd2633;
      idx = (idx + acc + 32'd2640) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2647);
      acc = acc + m_hist[idx] + 32'd2654;
      idx = (idx + acc + 32'd2661) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2668);
      acc = acc + m_hist[idx] + 32'd2675;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2555);
      acc = acc + m_hist[idx] + 32'd2562;
      idx = (idx + acc + 32'd2569) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2576);
      acc = acc + m_hist[idx] + 32'd2583;
      idx = (idx + acc + 32'd2590) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2597);
      acc = acc + m_hist[idx] + 32'd2604;
      idx = (idx + acc + 32'd2611) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2618);
      acc = acc + m_hist[idx] + 32'd2625;
      idx = (idx + acc + 32'd2632) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2639);
      acc = acc + m_hist[idx] + 32'd2646;
      idx = (idx + acc + 32'd2653) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2660);
      acc = acc + m_hist[idx] + 32'd2667;
      idx = (idx + acc + 32'd2674) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2681);
      acc = acc + m_hist[idx] + 32'd2688;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2568);
      acc = acc + m_hist[idx] + 32'd2575;
      idx = (idx + acc + 32'd2582) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2589);
      acc = acc + m_hist[idx] + 32'd2596;
      idx = (idx + acc + 32'd2603) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2610);
      acc = acc + m_hist[idx] + 32'd2617;
      idx = (idx + acc + 32'd2624) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2631);
      acc = acc + m_hist[idx] + 32'd2638;
      idx = (idx + acc + 32'd2645) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2652);
      acc = acc + m_hist[idx] + 32'd2659;
      idx = (idx + acc + 32'd2666) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2673);
      acc = acc + m_hist[idx] + 32'd2680;
      idx = (idx + acc + 32'd2687) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2694);
      acc = acc + m_hist[idx] + 32'd2701;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_83 extends comp_base;
    function new(int unsigned id = 32'd83);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2573);
      acc = acc + m_hist[idx] + 32'd2580;
      idx = (idx + acc + 32'd2587) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2594);
      acc = acc + m_hist[idx] + 32'd2601;
      idx = (idx + acc + 32'd2608) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2615);
      acc = acc + m_hist[idx] + 32'd2622;
      idx = (idx + acc + 32'd2629) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2636);
      acc = acc + m_hist[idx] + 32'd2643;
      idx = (idx + acc + 32'd2650) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2657);
      acc = acc + m_hist[idx] + 32'd2664;
      idx = (idx + acc + 32'd2671) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2678);
      acc = acc + m_hist[idx] + 32'd2685;
      idx = (idx + acc + 32'd2692) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2699);
      acc = acc + m_hist[idx] + 32'd2706;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2586);
      acc = acc + m_hist[idx] + 32'd2593;
      idx = (idx + acc + 32'd2600) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2607);
      acc = acc + m_hist[idx] + 32'd2614;
      idx = (idx + acc + 32'd2621) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2628);
      acc = acc + m_hist[idx] + 32'd2635;
      idx = (idx + acc + 32'd2642) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2649);
      acc = acc + m_hist[idx] + 32'd2656;
      idx = (idx + acc + 32'd2663) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2670);
      acc = acc + m_hist[idx] + 32'd2677;
      idx = (idx + acc + 32'd2684) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2691);
      acc = acc + m_hist[idx] + 32'd2698;
      idx = (idx + acc + 32'd2705) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2712);
      acc = acc + m_hist[idx] + 32'd2719;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2599);
      acc = acc + m_hist[idx] + 32'd2606;
      idx = (idx + acc + 32'd2613) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2620);
      acc = acc + m_hist[idx] + 32'd2627;
      idx = (idx + acc + 32'd2634) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2641);
      acc = acc + m_hist[idx] + 32'd2648;
      idx = (idx + acc + 32'd2655) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2662);
      acc = acc + m_hist[idx] + 32'd2669;
      idx = (idx + acc + 32'd2676) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2683);
      acc = acc + m_hist[idx] + 32'd2690;
      idx = (idx + acc + 32'd2697) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2704);
      acc = acc + m_hist[idx] + 32'd2711;
      idx = (idx + acc + 32'd2718) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2725);
      acc = acc + m_hist[idx] + 32'd2732;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_84 extends comp_base;
    function new(int unsigned id = 32'd84);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2604);
      acc = acc + m_hist[idx] + 32'd2611;
      idx = (idx + acc + 32'd2618) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2625);
      acc = acc + m_hist[idx] + 32'd2632;
      idx = (idx + acc + 32'd2639) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2646);
      acc = acc + m_hist[idx] + 32'd2653;
      idx = (idx + acc + 32'd2660) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2667);
      acc = acc + m_hist[idx] + 32'd2674;
      idx = (idx + acc + 32'd2681) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2688);
      acc = acc + m_hist[idx] + 32'd2695;
      idx = (idx + acc + 32'd2702) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2709);
      acc = acc + m_hist[idx] + 32'd2716;
      idx = (idx + acc + 32'd2723) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2730);
      acc = acc + m_hist[idx] + 32'd2737;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2617);
      acc = acc + m_hist[idx] + 32'd2624;
      idx = (idx + acc + 32'd2631) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2638);
      acc = acc + m_hist[idx] + 32'd2645;
      idx = (idx + acc + 32'd2652) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2659);
      acc = acc + m_hist[idx] + 32'd2666;
      idx = (idx + acc + 32'd2673) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2680);
      acc = acc + m_hist[idx] + 32'd2687;
      idx = (idx + acc + 32'd2694) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2701);
      acc = acc + m_hist[idx] + 32'd2708;
      idx = (idx + acc + 32'd2715) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2722);
      acc = acc + m_hist[idx] + 32'd2729;
      idx = (idx + acc + 32'd2736) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2743);
      acc = acc + m_hist[idx] + 32'd2750;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2630);
      acc = acc + m_hist[idx] + 32'd2637;
      idx = (idx + acc + 32'd2644) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2651);
      acc = acc + m_hist[idx] + 32'd2658;
      idx = (idx + acc + 32'd2665) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2672);
      acc = acc + m_hist[idx] + 32'd2679;
      idx = (idx + acc + 32'd2686) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2693);
      acc = acc + m_hist[idx] + 32'd2700;
      idx = (idx + acc + 32'd2707) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2714);
      acc = acc + m_hist[idx] + 32'd2721;
      idx = (idx + acc + 32'd2728) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2735);
      acc = acc + m_hist[idx] + 32'd2742;
      idx = (idx + acc + 32'd2749) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2756);
      acc = acc + m_hist[idx] + 32'd2763;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_85 extends comp_base;
    function new(int unsigned id = 32'd85);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2635);
      acc = acc + m_hist[idx] + 32'd2642;
      idx = (idx + acc + 32'd2649) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2656);
      acc = acc + m_hist[idx] + 32'd2663;
      idx = (idx + acc + 32'd2670) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2677);
      acc = acc + m_hist[idx] + 32'd2684;
      idx = (idx + acc + 32'd2691) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2698);
      acc = acc + m_hist[idx] + 32'd2705;
      idx = (idx + acc + 32'd2712) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2719);
      acc = acc + m_hist[idx] + 32'd2726;
      idx = (idx + acc + 32'd2733) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2740);
      acc = acc + m_hist[idx] + 32'd2747;
      idx = (idx + acc + 32'd2754) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2761);
      acc = acc + m_hist[idx] + 32'd2768;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2648);
      acc = acc + m_hist[idx] + 32'd2655;
      idx = (idx + acc + 32'd2662) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2669);
      acc = acc + m_hist[idx] + 32'd2676;
      idx = (idx + acc + 32'd2683) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2690);
      acc = acc + m_hist[idx] + 32'd2697;
      idx = (idx + acc + 32'd2704) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2711);
      acc = acc + m_hist[idx] + 32'd2718;
      idx = (idx + acc + 32'd2725) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2732);
      acc = acc + m_hist[idx] + 32'd2739;
      idx = (idx + acc + 32'd2746) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2753);
      acc = acc + m_hist[idx] + 32'd2760;
      idx = (idx + acc + 32'd2767) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2774);
      acc = acc + m_hist[idx] + 32'd2781;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2661);
      acc = acc + m_hist[idx] + 32'd2668;
      idx = (idx + acc + 32'd2675) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2682);
      acc = acc + m_hist[idx] + 32'd2689;
      idx = (idx + acc + 32'd2696) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2703);
      acc = acc + m_hist[idx] + 32'd2710;
      idx = (idx + acc + 32'd2717) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2724);
      acc = acc + m_hist[idx] + 32'd2731;
      idx = (idx + acc + 32'd2738) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2745);
      acc = acc + m_hist[idx] + 32'd2752;
      idx = (idx + acc + 32'd2759) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2766);
      acc = acc + m_hist[idx] + 32'd2773;
      idx = (idx + acc + 32'd2780) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2787);
      acc = acc + m_hist[idx] + 32'd2794;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_86 extends comp_base;
    function new(int unsigned id = 32'd86);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2666);
      acc = acc + m_hist[idx] + 32'd2673;
      idx = (idx + acc + 32'd2680) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2687);
      acc = acc + m_hist[idx] + 32'd2694;
      idx = (idx + acc + 32'd2701) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2708);
      acc = acc + m_hist[idx] + 32'd2715;
      idx = (idx + acc + 32'd2722) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2729);
      acc = acc + m_hist[idx] + 32'd2736;
      idx = (idx + acc + 32'd2743) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2750);
      acc = acc + m_hist[idx] + 32'd2757;
      idx = (idx + acc + 32'd2764) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2771);
      acc = acc + m_hist[idx] + 32'd2778;
      idx = (idx + acc + 32'd2785) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2792);
      acc = acc + m_hist[idx] + 32'd2799;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2679);
      acc = acc + m_hist[idx] + 32'd2686;
      idx = (idx + acc + 32'd2693) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2700);
      acc = acc + m_hist[idx] + 32'd2707;
      idx = (idx + acc + 32'd2714) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2721);
      acc = acc + m_hist[idx] + 32'd2728;
      idx = (idx + acc + 32'd2735) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2742);
      acc = acc + m_hist[idx] + 32'd2749;
      idx = (idx + acc + 32'd2756) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2763);
      acc = acc + m_hist[idx] + 32'd2770;
      idx = (idx + acc + 32'd2777) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2784);
      acc = acc + m_hist[idx] + 32'd2791;
      idx = (idx + acc + 32'd2798) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2805);
      acc = acc + m_hist[idx] + 32'd2812;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2692);
      acc = acc + m_hist[idx] + 32'd2699;
      idx = (idx + acc + 32'd2706) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2713);
      acc = acc + m_hist[idx] + 32'd2720;
      idx = (idx + acc + 32'd2727) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2734);
      acc = acc + m_hist[idx] + 32'd2741;
      idx = (idx + acc + 32'd2748) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2755);
      acc = acc + m_hist[idx] + 32'd2762;
      idx = (idx + acc + 32'd2769) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2776);
      acc = acc + m_hist[idx] + 32'd2783;
      idx = (idx + acc + 32'd2790) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2797);
      acc = acc + m_hist[idx] + 32'd2804;
      idx = (idx + acc + 32'd2811) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2818);
      acc = acc + m_hist[idx] + 32'd2825;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_87 extends comp_base;
    function new(int unsigned id = 32'd87);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2697);
      acc = acc + m_hist[idx] + 32'd2704;
      idx = (idx + acc + 32'd2711) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2718);
      acc = acc + m_hist[idx] + 32'd2725;
      idx = (idx + acc + 32'd2732) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2739);
      acc = acc + m_hist[idx] + 32'd2746;
      idx = (idx + acc + 32'd2753) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2760);
      acc = acc + m_hist[idx] + 32'd2767;
      idx = (idx + acc + 32'd2774) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2781);
      acc = acc + m_hist[idx] + 32'd2788;
      idx = (idx + acc + 32'd2795) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2802);
      acc = acc + m_hist[idx] + 32'd2809;
      idx = (idx + acc + 32'd2816) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2823);
      acc = acc + m_hist[idx] + 32'd2830;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2710);
      acc = acc + m_hist[idx] + 32'd2717;
      idx = (idx + acc + 32'd2724) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2731);
      acc = acc + m_hist[idx] + 32'd2738;
      idx = (idx + acc + 32'd2745) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2752);
      acc = acc + m_hist[idx] + 32'd2759;
      idx = (idx + acc + 32'd2766) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2773);
      acc = acc + m_hist[idx] + 32'd2780;
      idx = (idx + acc + 32'd2787) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2794);
      acc = acc + m_hist[idx] + 32'd2801;
      idx = (idx + acc + 32'd2808) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2815);
      acc = acc + m_hist[idx] + 32'd2822;
      idx = (idx + acc + 32'd2829) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2836);
      acc = acc + m_hist[idx] + 32'd2843;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2723);
      acc = acc + m_hist[idx] + 32'd2730;
      idx = (idx + acc + 32'd2737) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2744);
      acc = acc + m_hist[idx] + 32'd2751;
      idx = (idx + acc + 32'd2758) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2765);
      acc = acc + m_hist[idx] + 32'd2772;
      idx = (idx + acc + 32'd2779) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2786);
      acc = acc + m_hist[idx] + 32'd2793;
      idx = (idx + acc + 32'd2800) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2807);
      acc = acc + m_hist[idx] + 32'd2814;
      idx = (idx + acc + 32'd2821) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2828);
      acc = acc + m_hist[idx] + 32'd2835;
      idx = (idx + acc + 32'd2842) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2849);
      acc = acc + m_hist[idx] + 32'd2856;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_88 extends comp_base;
    function new(int unsigned id = 32'd88);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2728);
      acc = acc + m_hist[idx] + 32'd2735;
      idx = (idx + acc + 32'd2742) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2749);
      acc = acc + m_hist[idx] + 32'd2756;
      idx = (idx + acc + 32'd2763) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2770);
      acc = acc + m_hist[idx] + 32'd2777;
      idx = (idx + acc + 32'd2784) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2791);
      acc = acc + m_hist[idx] + 32'd2798;
      idx = (idx + acc + 32'd2805) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2812);
      acc = acc + m_hist[idx] + 32'd2819;
      idx = (idx + acc + 32'd2826) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2833);
      acc = acc + m_hist[idx] + 32'd2840;
      idx = (idx + acc + 32'd2847) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2854);
      acc = acc + m_hist[idx] + 32'd2861;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2741);
      acc = acc + m_hist[idx] + 32'd2748;
      idx = (idx + acc + 32'd2755) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2762);
      acc = acc + m_hist[idx] + 32'd2769;
      idx = (idx + acc + 32'd2776) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2783);
      acc = acc + m_hist[idx] + 32'd2790;
      idx = (idx + acc + 32'd2797) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2804);
      acc = acc + m_hist[idx] + 32'd2811;
      idx = (idx + acc + 32'd2818) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2825);
      acc = acc + m_hist[idx] + 32'd2832;
      idx = (idx + acc + 32'd2839) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2846);
      acc = acc + m_hist[idx] + 32'd2853;
      idx = (idx + acc + 32'd2860) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2867);
      acc = acc + m_hist[idx] + 32'd2874;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2754);
      acc = acc + m_hist[idx] + 32'd2761;
      idx = (idx + acc + 32'd2768) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2775);
      acc = acc + m_hist[idx] + 32'd2782;
      idx = (idx + acc + 32'd2789) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2796);
      acc = acc + m_hist[idx] + 32'd2803;
      idx = (idx + acc + 32'd2810) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2817);
      acc = acc + m_hist[idx] + 32'd2824;
      idx = (idx + acc + 32'd2831) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2838);
      acc = acc + m_hist[idx] + 32'd2845;
      idx = (idx + acc + 32'd2852) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2859);
      acc = acc + m_hist[idx] + 32'd2866;
      idx = (idx + acc + 32'd2873) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2880);
      acc = acc + m_hist[idx] + 32'd2887;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_89 extends comp_base;
    function new(int unsigned id = 32'd89);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2759);
      acc = acc + m_hist[idx] + 32'd2766;
      idx = (idx + acc + 32'd2773) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2780);
      acc = acc + m_hist[idx] + 32'd2787;
      idx = (idx + acc + 32'd2794) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2801);
      acc = acc + m_hist[idx] + 32'd2808;
      idx = (idx + acc + 32'd2815) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2822);
      acc = acc + m_hist[idx] + 32'd2829;
      idx = (idx + acc + 32'd2836) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2843);
      acc = acc + m_hist[idx] + 32'd2850;
      idx = (idx + acc + 32'd2857) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2864);
      acc = acc + m_hist[idx] + 32'd2871;
      idx = (idx + acc + 32'd2878) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2885);
      acc = acc + m_hist[idx] + 32'd2892;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2772);
      acc = acc + m_hist[idx] + 32'd2779;
      idx = (idx + acc + 32'd2786) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2793);
      acc = acc + m_hist[idx] + 32'd2800;
      idx = (idx + acc + 32'd2807) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2814);
      acc = acc + m_hist[idx] + 32'd2821;
      idx = (idx + acc + 32'd2828) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2835);
      acc = acc + m_hist[idx] + 32'd2842;
      idx = (idx + acc + 32'd2849) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2856);
      acc = acc + m_hist[idx] + 32'd2863;
      idx = (idx + acc + 32'd2870) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2877);
      acc = acc + m_hist[idx] + 32'd2884;
      idx = (idx + acc + 32'd2891) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2898);
      acc = acc + m_hist[idx] + 32'd2905;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2785);
      acc = acc + m_hist[idx] + 32'd2792;
      idx = (idx + acc + 32'd2799) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2806);
      acc = acc + m_hist[idx] + 32'd2813;
      idx = (idx + acc + 32'd2820) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2827);
      acc = acc + m_hist[idx] + 32'd2834;
      idx = (idx + acc + 32'd2841) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2848);
      acc = acc + m_hist[idx] + 32'd2855;
      idx = (idx + acc + 32'd2862) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2869);
      acc = acc + m_hist[idx] + 32'd2876;
      idx = (idx + acc + 32'd2883) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2890);
      acc = acc + m_hist[idx] + 32'd2897;
      idx = (idx + acc + 32'd2904) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2911);
      acc = acc + m_hist[idx] + 32'd2918;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_90 extends comp_base;
    function new(int unsigned id = 32'd90);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2790);
      acc = acc + m_hist[idx] + 32'd2797;
      idx = (idx + acc + 32'd2804) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2811);
      acc = acc + m_hist[idx] + 32'd2818;
      idx = (idx + acc + 32'd2825) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2832);
      acc = acc + m_hist[idx] + 32'd2839;
      idx = (idx + acc + 32'd2846) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2853);
      acc = acc + m_hist[idx] + 32'd2860;
      idx = (idx + acc + 32'd2867) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2874);
      acc = acc + m_hist[idx] + 32'd2881;
      idx = (idx + acc + 32'd2888) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2895);
      acc = acc + m_hist[idx] + 32'd2902;
      idx = (idx + acc + 32'd2909) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2916);
      acc = acc + m_hist[idx] + 32'd2923;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2803);
      acc = acc + m_hist[idx] + 32'd2810;
      idx = (idx + acc + 32'd2817) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2824);
      acc = acc + m_hist[idx] + 32'd2831;
      idx = (idx + acc + 32'd2838) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2845);
      acc = acc + m_hist[idx] + 32'd2852;
      idx = (idx + acc + 32'd2859) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2866);
      acc = acc + m_hist[idx] + 32'd2873;
      idx = (idx + acc + 32'd2880) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2887);
      acc = acc + m_hist[idx] + 32'd2894;
      idx = (idx + acc + 32'd2901) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2908);
      acc = acc + m_hist[idx] + 32'd2915;
      idx = (idx + acc + 32'd2922) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2929);
      acc = acc + m_hist[idx] + 32'd2936;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2816);
      acc = acc + m_hist[idx] + 32'd2823;
      idx = (idx + acc + 32'd2830) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2837);
      acc = acc + m_hist[idx] + 32'd2844;
      idx = (idx + acc + 32'd2851) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2858);
      acc = acc + m_hist[idx] + 32'd2865;
      idx = (idx + acc + 32'd2872) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2879);
      acc = acc + m_hist[idx] + 32'd2886;
      idx = (idx + acc + 32'd2893) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2900);
      acc = acc + m_hist[idx] + 32'd2907;
      idx = (idx + acc + 32'd2914) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2921);
      acc = acc + m_hist[idx] + 32'd2928;
      idx = (idx + acc + 32'd2935) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2942);
      acc = acc + m_hist[idx] + 32'd2949;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_91 extends comp_base;
    function new(int unsigned id = 32'd91);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2821);
      acc = acc + m_hist[idx] + 32'd2828;
      idx = (idx + acc + 32'd2835) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2842);
      acc = acc + m_hist[idx] + 32'd2849;
      idx = (idx + acc + 32'd2856) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2863);
      acc = acc + m_hist[idx] + 32'd2870;
      idx = (idx + acc + 32'd2877) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2884);
      acc = acc + m_hist[idx] + 32'd2891;
      idx = (idx + acc + 32'd2898) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2905);
      acc = acc + m_hist[idx] + 32'd2912;
      idx = (idx + acc + 32'd2919) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2926);
      acc = acc + m_hist[idx] + 32'd2933;
      idx = (idx + acc + 32'd2940) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2947);
      acc = acc + m_hist[idx] + 32'd2954;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2834);
      acc = acc + m_hist[idx] + 32'd2841;
      idx = (idx + acc + 32'd2848) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2855);
      acc = acc + m_hist[idx] + 32'd2862;
      idx = (idx + acc + 32'd2869) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2876);
      acc = acc + m_hist[idx] + 32'd2883;
      idx = (idx + acc + 32'd2890) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2897);
      acc = acc + m_hist[idx] + 32'd2904;
      idx = (idx + acc + 32'd2911) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2918);
      acc = acc + m_hist[idx] + 32'd2925;
      idx = (idx + acc + 32'd2932) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2939);
      acc = acc + m_hist[idx] + 32'd2946;
      idx = (idx + acc + 32'd2953) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2960);
      acc = acc + m_hist[idx] + 32'd2967;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2847);
      acc = acc + m_hist[idx] + 32'd2854;
      idx = (idx + acc + 32'd2861) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2868);
      acc = acc + m_hist[idx] + 32'd2875;
      idx = (idx + acc + 32'd2882) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2889);
      acc = acc + m_hist[idx] + 32'd2896;
      idx = (idx + acc + 32'd2903) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2910);
      acc = acc + m_hist[idx] + 32'd2917;
      idx = (idx + acc + 32'd2924) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2931);
      acc = acc + m_hist[idx] + 32'd2938;
      idx = (idx + acc + 32'd2945) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2952);
      acc = acc + m_hist[idx] + 32'd2959;
      idx = (idx + acc + 32'd2966) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2973);
      acc = acc + m_hist[idx] + 32'd2980;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_92 extends comp_base;
    function new(int unsigned id = 32'd92);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2852);
      acc = acc + m_hist[idx] + 32'd2859;
      idx = (idx + acc + 32'd2866) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2873);
      acc = acc + m_hist[idx] + 32'd2880;
      idx = (idx + acc + 32'd2887) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2894);
      acc = acc + m_hist[idx] + 32'd2901;
      idx = (idx + acc + 32'd2908) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2915);
      acc = acc + m_hist[idx] + 32'd2922;
      idx = (idx + acc + 32'd2929) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2936);
      acc = acc + m_hist[idx] + 32'd2943;
      idx = (idx + acc + 32'd2950) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2957);
      acc = acc + m_hist[idx] + 32'd2964;
      idx = (idx + acc + 32'd2971) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2978);
      acc = acc + m_hist[idx] + 32'd2985;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2865);
      acc = acc + m_hist[idx] + 32'd2872;
      idx = (idx + acc + 32'd2879) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2886);
      acc = acc + m_hist[idx] + 32'd2893;
      idx = (idx + acc + 32'd2900) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2907);
      acc = acc + m_hist[idx] + 32'd2914;
      idx = (idx + acc + 32'd2921) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2928);
      acc = acc + m_hist[idx] + 32'd2935;
      idx = (idx + acc + 32'd2942) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2949);
      acc = acc + m_hist[idx] + 32'd2956;
      idx = (idx + acc + 32'd2963) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2970);
      acc = acc + m_hist[idx] + 32'd2977;
      idx = (idx + acc + 32'd2984) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2991);
      acc = acc + m_hist[idx] + 32'd2998;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2878);
      acc = acc + m_hist[idx] + 32'd2885;
      idx = (idx + acc + 32'd2892) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2899);
      acc = acc + m_hist[idx] + 32'd2906;
      idx = (idx + acc + 32'd2913) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2920);
      acc = acc + m_hist[idx] + 32'd2927;
      idx = (idx + acc + 32'd2934) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2941);
      acc = acc + m_hist[idx] + 32'd2948;
      idx = (idx + acc + 32'd2955) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2962);
      acc = acc + m_hist[idx] + 32'd2969;
      idx = (idx + acc + 32'd2976) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2983);
      acc = acc + m_hist[idx] + 32'd2990;
      idx = (idx + acc + 32'd2997) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3004);
      acc = acc + m_hist[idx] + 32'd3011;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_93 extends comp_base;
    function new(int unsigned id = 32'd93);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2883);
      acc = acc + m_hist[idx] + 32'd2890;
      idx = (idx + acc + 32'd2897) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2904);
      acc = acc + m_hist[idx] + 32'd2911;
      idx = (idx + acc + 32'd2918) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2925);
      acc = acc + m_hist[idx] + 32'd2932;
      idx = (idx + acc + 32'd2939) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2946);
      acc = acc + m_hist[idx] + 32'd2953;
      idx = (idx + acc + 32'd2960) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2967);
      acc = acc + m_hist[idx] + 32'd2974;
      idx = (idx + acc + 32'd2981) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2988);
      acc = acc + m_hist[idx] + 32'd2995;
      idx = (idx + acc + 32'd3002) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3009);
      acc = acc + m_hist[idx] + 32'd3016;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2896);
      acc = acc + m_hist[idx] + 32'd2903;
      idx = (idx + acc + 32'd2910) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2917);
      acc = acc + m_hist[idx] + 32'd2924;
      idx = (idx + acc + 32'd2931) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2938);
      acc = acc + m_hist[idx] + 32'd2945;
      idx = (idx + acc + 32'd2952) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2959);
      acc = acc + m_hist[idx] + 32'd2966;
      idx = (idx + acc + 32'd2973) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2980);
      acc = acc + m_hist[idx] + 32'd2987;
      idx = (idx + acc + 32'd2994) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3001);
      acc = acc + m_hist[idx] + 32'd3008;
      idx = (idx + acc + 32'd3015) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3022);
      acc = acc + m_hist[idx] + 32'd3029;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2909);
      acc = acc + m_hist[idx] + 32'd2916;
      idx = (idx + acc + 32'd2923) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2930);
      acc = acc + m_hist[idx] + 32'd2937;
      idx = (idx + acc + 32'd2944) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2951);
      acc = acc + m_hist[idx] + 32'd2958;
      idx = (idx + acc + 32'd2965) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2972);
      acc = acc + m_hist[idx] + 32'd2979;
      idx = (idx + acc + 32'd2986) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2993);
      acc = acc + m_hist[idx] + 32'd3000;
      idx = (idx + acc + 32'd3007) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3014);
      acc = acc + m_hist[idx] + 32'd3021;
      idx = (idx + acc + 32'd3028) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3035);
      acc = acc + m_hist[idx] + 32'd3042;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_94 extends comp_base;
    function new(int unsigned id = 32'd94);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2914);
      acc = acc + m_hist[idx] + 32'd2921;
      idx = (idx + acc + 32'd2928) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2935);
      acc = acc + m_hist[idx] + 32'd2942;
      idx = (idx + acc + 32'd2949) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2956);
      acc = acc + m_hist[idx] + 32'd2963;
      idx = (idx + acc + 32'd2970) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2977);
      acc = acc + m_hist[idx] + 32'd2984;
      idx = (idx + acc + 32'd2991) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2998);
      acc = acc + m_hist[idx] + 32'd3005;
      idx = (idx + acc + 32'd3012) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3019);
      acc = acc + m_hist[idx] + 32'd3026;
      idx = (idx + acc + 32'd3033) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3040);
      acc = acc + m_hist[idx] + 32'd3047;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2927);
      acc = acc + m_hist[idx] + 32'd2934;
      idx = (idx + acc + 32'd2941) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2948);
      acc = acc + m_hist[idx] + 32'd2955;
      idx = (idx + acc + 32'd2962) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2969);
      acc = acc + m_hist[idx] + 32'd2976;
      idx = (idx + acc + 32'd2983) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2990);
      acc = acc + m_hist[idx] + 32'd2997;
      idx = (idx + acc + 32'd3004) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3011);
      acc = acc + m_hist[idx] + 32'd3018;
      idx = (idx + acc + 32'd3025) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3032);
      acc = acc + m_hist[idx] + 32'd3039;
      idx = (idx + acc + 32'd3046) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3053);
      acc = acc + m_hist[idx] + 32'd3060;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2940);
      acc = acc + m_hist[idx] + 32'd2947;
      idx = (idx + acc + 32'd2954) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2961);
      acc = acc + m_hist[idx] + 32'd2968;
      idx = (idx + acc + 32'd2975) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2982);
      acc = acc + m_hist[idx] + 32'd2989;
      idx = (idx + acc + 32'd2996) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3003);
      acc = acc + m_hist[idx] + 32'd3010;
      idx = (idx + acc + 32'd3017) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3024);
      acc = acc + m_hist[idx] + 32'd3031;
      idx = (idx + acc + 32'd3038) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3045);
      acc = acc + m_hist[idx] + 32'd3052;
      idx = (idx + acc + 32'd3059) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3066);
      acc = acc + m_hist[idx] + 32'd3073;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_95 extends comp_base;
    function new(int unsigned id = 32'd95);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2945);
      acc = acc + m_hist[idx] + 32'd2952;
      idx = (idx + acc + 32'd2959) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2966);
      acc = acc + m_hist[idx] + 32'd2973;
      idx = (idx + acc + 32'd2980) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2987);
      acc = acc + m_hist[idx] + 32'd2994;
      idx = (idx + acc + 32'd3001) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3008);
      acc = acc + m_hist[idx] + 32'd3015;
      idx = (idx + acc + 32'd3022) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3029);
      acc = acc + m_hist[idx] + 32'd3036;
      idx = (idx + acc + 32'd3043) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3050);
      acc = acc + m_hist[idx] + 32'd3057;
      idx = (idx + acc + 32'd3064) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3071);
      acc = acc + m_hist[idx] + 32'd3078;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2958);
      acc = acc + m_hist[idx] + 32'd2965;
      idx = (idx + acc + 32'd2972) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2979);
      acc = acc + m_hist[idx] + 32'd2986;
      idx = (idx + acc + 32'd2993) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3000);
      acc = acc + m_hist[idx] + 32'd3007;
      idx = (idx + acc + 32'd3014) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3021);
      acc = acc + m_hist[idx] + 32'd3028;
      idx = (idx + acc + 32'd3035) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3042);
      acc = acc + m_hist[idx] + 32'd3049;
      idx = (idx + acc + 32'd3056) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3063);
      acc = acc + m_hist[idx] + 32'd3070;
      idx = (idx + acc + 32'd3077) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3084);
      acc = acc + m_hist[idx] + 32'd3091;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2971);
      acc = acc + m_hist[idx] + 32'd2978;
      idx = (idx + acc + 32'd2985) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2992);
      acc = acc + m_hist[idx] + 32'd2999;
      idx = (idx + acc + 32'd3006) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3013);
      acc = acc + m_hist[idx] + 32'd3020;
      idx = (idx + acc + 32'd3027) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3034);
      acc = acc + m_hist[idx] + 32'd3041;
      idx = (idx + acc + 32'd3048) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3055);
      acc = acc + m_hist[idx] + 32'd3062;
      idx = (idx + acc + 32'd3069) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3076);
      acc = acc + m_hist[idx] + 32'd3083;
      idx = (idx + acc + 32'd3090) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3097);
      acc = acc + m_hist[idx] + 32'd3104;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_96 extends comp_base;
    function new(int unsigned id = 32'd96);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2976);
      acc = acc + m_hist[idx] + 32'd2983;
      idx = (idx + acc + 32'd2990) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2997);
      acc = acc + m_hist[idx] + 32'd3004;
      idx = (idx + acc + 32'd3011) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3018);
      acc = acc + m_hist[idx] + 32'd3025;
      idx = (idx + acc + 32'd3032) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3039);
      acc = acc + m_hist[idx] + 32'd3046;
      idx = (idx + acc + 32'd3053) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3060);
      acc = acc + m_hist[idx] + 32'd3067;
      idx = (idx + acc + 32'd3074) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3081);
      acc = acc + m_hist[idx] + 32'd3088;
      idx = (idx + acc + 32'd3095) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3102);
      acc = acc + m_hist[idx] + 32'd3109;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd2989);
      acc = acc + m_hist[idx] + 32'd2996;
      idx = (idx + acc + 32'd3003) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3010);
      acc = acc + m_hist[idx] + 32'd3017;
      idx = (idx + acc + 32'd3024) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3031);
      acc = acc + m_hist[idx] + 32'd3038;
      idx = (idx + acc + 32'd3045) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3052);
      acc = acc + m_hist[idx] + 32'd3059;
      idx = (idx + acc + 32'd3066) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3073);
      acc = acc + m_hist[idx] + 32'd3080;
      idx = (idx + acc + 32'd3087) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3094);
      acc = acc + m_hist[idx] + 32'd3101;
      idx = (idx + acc + 32'd3108) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3115);
      acc = acc + m_hist[idx] + 32'd3122;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3002);
      acc = acc + m_hist[idx] + 32'd3009;
      idx = (idx + acc + 32'd3016) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3023);
      acc = acc + m_hist[idx] + 32'd3030;
      idx = (idx + acc + 32'd3037) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3044);
      acc = acc + m_hist[idx] + 32'd3051;
      idx = (idx + acc + 32'd3058) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3065);
      acc = acc + m_hist[idx] + 32'd3072;
      idx = (idx + acc + 32'd3079) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3086);
      acc = acc + m_hist[idx] + 32'd3093;
      idx = (idx + acc + 32'd3100) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3107);
      acc = acc + m_hist[idx] + 32'd3114;
      idx = (idx + acc + 32'd3121) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3128);
      acc = acc + m_hist[idx] + 32'd3135;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_97 extends comp_base;
    function new(int unsigned id = 32'd97);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3007);
      acc = acc + m_hist[idx] + 32'd3014;
      idx = (idx + acc + 32'd3021) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3028);
      acc = acc + m_hist[idx] + 32'd3035;
      idx = (idx + acc + 32'd3042) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3049);
      acc = acc + m_hist[idx] + 32'd3056;
      idx = (idx + acc + 32'd3063) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3070);
      acc = acc + m_hist[idx] + 32'd3077;
      idx = (idx + acc + 32'd3084) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3091);
      acc = acc + m_hist[idx] + 32'd3098;
      idx = (idx + acc + 32'd3105) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3112);
      acc = acc + m_hist[idx] + 32'd3119;
      idx = (idx + acc + 32'd3126) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3133);
      acc = acc + m_hist[idx] + 32'd3140;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3020);
      acc = acc + m_hist[idx] + 32'd3027;
      idx = (idx + acc + 32'd3034) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3041);
      acc = acc + m_hist[idx] + 32'd3048;
      idx = (idx + acc + 32'd3055) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3062);
      acc = acc + m_hist[idx] + 32'd3069;
      idx = (idx + acc + 32'd3076) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3083);
      acc = acc + m_hist[idx] + 32'd3090;
      idx = (idx + acc + 32'd3097) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3104);
      acc = acc + m_hist[idx] + 32'd3111;
      idx = (idx + acc + 32'd3118) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3125);
      acc = acc + m_hist[idx] + 32'd3132;
      idx = (idx + acc + 32'd3139) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3146);
      acc = acc + m_hist[idx] + 32'd3153;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3033);
      acc = acc + m_hist[idx] + 32'd3040;
      idx = (idx + acc + 32'd3047) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3054);
      acc = acc + m_hist[idx] + 32'd3061;
      idx = (idx + acc + 32'd3068) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3075);
      acc = acc + m_hist[idx] + 32'd3082;
      idx = (idx + acc + 32'd3089) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3096);
      acc = acc + m_hist[idx] + 32'd3103;
      idx = (idx + acc + 32'd3110) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3117);
      acc = acc + m_hist[idx] + 32'd3124;
      idx = (idx + acc + 32'd3131) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3138);
      acc = acc + m_hist[idx] + 32'd3145;
      idx = (idx + acc + 32'd3152) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3159);
      acc = acc + m_hist[idx] + 32'd3166;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_98 extends comp_base;
    function new(int unsigned id = 32'd98);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3038);
      acc = acc + m_hist[idx] + 32'd3045;
      idx = (idx + acc + 32'd3052) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3059);
      acc = acc + m_hist[idx] + 32'd3066;
      idx = (idx + acc + 32'd3073) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3080);
      acc = acc + m_hist[idx] + 32'd3087;
      idx = (idx + acc + 32'd3094) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3101);
      acc = acc + m_hist[idx] + 32'd3108;
      idx = (idx + acc + 32'd3115) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3122);
      acc = acc + m_hist[idx] + 32'd3129;
      idx = (idx + acc + 32'd3136) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3143);
      acc = acc + m_hist[idx] + 32'd3150;
      idx = (idx + acc + 32'd3157) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3164);
      acc = acc + m_hist[idx] + 32'd3171;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3051);
      acc = acc + m_hist[idx] + 32'd3058;
      idx = (idx + acc + 32'd3065) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3072);
      acc = acc + m_hist[idx] + 32'd3079;
      idx = (idx + acc + 32'd3086) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3093);
      acc = acc + m_hist[idx] + 32'd3100;
      idx = (idx + acc + 32'd3107) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3114);
      acc = acc + m_hist[idx] + 32'd3121;
      idx = (idx + acc + 32'd3128) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3135);
      acc = acc + m_hist[idx] + 32'd3142;
      idx = (idx + acc + 32'd3149) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3156);
      acc = acc + m_hist[idx] + 32'd3163;
      idx = (idx + acc + 32'd3170) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3177);
      acc = acc + m_hist[idx] + 32'd3184;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3064);
      acc = acc + m_hist[idx] + 32'd3071;
      idx = (idx + acc + 32'd3078) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3085);
      acc = acc + m_hist[idx] + 32'd3092;
      idx = (idx + acc + 32'd3099) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3106);
      acc = acc + m_hist[idx] + 32'd3113;
      idx = (idx + acc + 32'd3120) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3127);
      acc = acc + m_hist[idx] + 32'd3134;
      idx = (idx + acc + 32'd3141) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3148);
      acc = acc + m_hist[idx] + 32'd3155;
      idx = (idx + acc + 32'd3162) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3169);
      acc = acc + m_hist[idx] + 32'd3176;
      idx = (idx + acc + 32'd3183) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3190);
      acc = acc + m_hist[idx] + 32'd3197;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_99 extends comp_base;
    function new(int unsigned id = 32'd99);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3069);
      acc = acc + m_hist[idx] + 32'd3076;
      idx = (idx + acc + 32'd3083) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3090);
      acc = acc + m_hist[idx] + 32'd3097;
      idx = (idx + acc + 32'd3104) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3111);
      acc = acc + m_hist[idx] + 32'd3118;
      idx = (idx + acc + 32'd3125) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3132);
      acc = acc + m_hist[idx] + 32'd3139;
      idx = (idx + acc + 32'd3146) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3153);
      acc = acc + m_hist[idx] + 32'd3160;
      idx = (idx + acc + 32'd3167) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3174);
      acc = acc + m_hist[idx] + 32'd3181;
      idx = (idx + acc + 32'd3188) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3195);
      acc = acc + m_hist[idx] + 32'd3202;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3082);
      acc = acc + m_hist[idx] + 32'd3089;
      idx = (idx + acc + 32'd3096) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3103);
      acc = acc + m_hist[idx] + 32'd3110;
      idx = (idx + acc + 32'd3117) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3124);
      acc = acc + m_hist[idx] + 32'd3131;
      idx = (idx + acc + 32'd3138) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3145);
      acc = acc + m_hist[idx] + 32'd3152;
      idx = (idx + acc + 32'd3159) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3166);
      acc = acc + m_hist[idx] + 32'd3173;
      idx = (idx + acc + 32'd3180) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3187);
      acc = acc + m_hist[idx] + 32'd3194;
      idx = (idx + acc + 32'd3201) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3208);
      acc = acc + m_hist[idx] + 32'd3215;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3095);
      acc = acc + m_hist[idx] + 32'd3102;
      idx = (idx + acc + 32'd3109) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3116);
      acc = acc + m_hist[idx] + 32'd3123;
      idx = (idx + acc + 32'd3130) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3137);
      acc = acc + m_hist[idx] + 32'd3144;
      idx = (idx + acc + 32'd3151) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3158);
      acc = acc + m_hist[idx] + 32'd3165;
      idx = (idx + acc + 32'd3172) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3179);
      acc = acc + m_hist[idx] + 32'd3186;
      idx = (idx + acc + 32'd3193) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3200);
      acc = acc + m_hist[idx] + 32'd3207;
      idx = (idx + acc + 32'd3214) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3221);
      acc = acc + m_hist[idx] + 32'd3228;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_100 extends comp_base;
    function new(int unsigned id = 32'd100);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3100);
      acc = acc + m_hist[idx] + 32'd3107;
      idx = (idx + acc + 32'd3114) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3121);
      acc = acc + m_hist[idx] + 32'd3128;
      idx = (idx + acc + 32'd3135) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3142);
      acc = acc + m_hist[idx] + 32'd3149;
      idx = (idx + acc + 32'd3156) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3163);
      acc = acc + m_hist[idx] + 32'd3170;
      idx = (idx + acc + 32'd3177) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3184);
      acc = acc + m_hist[idx] + 32'd3191;
      idx = (idx + acc + 32'd3198) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3205);
      acc = acc + m_hist[idx] + 32'd3212;
      idx = (idx + acc + 32'd3219) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3226);
      acc = acc + m_hist[idx] + 32'd3233;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3113);
      acc = acc + m_hist[idx] + 32'd3120;
      idx = (idx + acc + 32'd3127) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3134);
      acc = acc + m_hist[idx] + 32'd3141;
      idx = (idx + acc + 32'd3148) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3155);
      acc = acc + m_hist[idx] + 32'd3162;
      idx = (idx + acc + 32'd3169) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3176);
      acc = acc + m_hist[idx] + 32'd3183;
      idx = (idx + acc + 32'd3190) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3197);
      acc = acc + m_hist[idx] + 32'd3204;
      idx = (idx + acc + 32'd3211) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3218);
      acc = acc + m_hist[idx] + 32'd3225;
      idx = (idx + acc + 32'd3232) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3239);
      acc = acc + m_hist[idx] + 32'd3246;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3126);
      acc = acc + m_hist[idx] + 32'd3133;
      idx = (idx + acc + 32'd3140) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3147);
      acc = acc + m_hist[idx] + 32'd3154;
      idx = (idx + acc + 32'd3161) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3168);
      acc = acc + m_hist[idx] + 32'd3175;
      idx = (idx + acc + 32'd3182) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3189);
      acc = acc + m_hist[idx] + 32'd3196;
      idx = (idx + acc + 32'd3203) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3210);
      acc = acc + m_hist[idx] + 32'd3217;
      idx = (idx + acc + 32'd3224) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3231);
      acc = acc + m_hist[idx] + 32'd3238;
      idx = (idx + acc + 32'd3245) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3252);
      acc = acc + m_hist[idx] + 32'd3259;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_101 extends comp_base;
    function new(int unsigned id = 32'd101);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3131);
      acc = acc + m_hist[idx] + 32'd3138;
      idx = (idx + acc + 32'd3145) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3152);
      acc = acc + m_hist[idx] + 32'd3159;
      idx = (idx + acc + 32'd3166) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3173);
      acc = acc + m_hist[idx] + 32'd3180;
      idx = (idx + acc + 32'd3187) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3194);
      acc = acc + m_hist[idx] + 32'd3201;
      idx = (idx + acc + 32'd3208) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3215);
      acc = acc + m_hist[idx] + 32'd3222;
      idx = (idx + acc + 32'd3229) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3236);
      acc = acc + m_hist[idx] + 32'd3243;
      idx = (idx + acc + 32'd3250) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3257);
      acc = acc + m_hist[idx] + 32'd3264;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3144);
      acc = acc + m_hist[idx] + 32'd3151;
      idx = (idx + acc + 32'd3158) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3165);
      acc = acc + m_hist[idx] + 32'd3172;
      idx = (idx + acc + 32'd3179) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3186);
      acc = acc + m_hist[idx] + 32'd3193;
      idx = (idx + acc + 32'd3200) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3207);
      acc = acc + m_hist[idx] + 32'd3214;
      idx = (idx + acc + 32'd3221) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3228);
      acc = acc + m_hist[idx] + 32'd3235;
      idx = (idx + acc + 32'd3242) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3249);
      acc = acc + m_hist[idx] + 32'd3256;
      idx = (idx + acc + 32'd3263) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3270);
      acc = acc + m_hist[idx] + 32'd3277;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3157);
      acc = acc + m_hist[idx] + 32'd3164;
      idx = (idx + acc + 32'd3171) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3178);
      acc = acc + m_hist[idx] + 32'd3185;
      idx = (idx + acc + 32'd3192) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3199);
      acc = acc + m_hist[idx] + 32'd3206;
      idx = (idx + acc + 32'd3213) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3220);
      acc = acc + m_hist[idx] + 32'd3227;
      idx = (idx + acc + 32'd3234) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3241);
      acc = acc + m_hist[idx] + 32'd3248;
      idx = (idx + acc + 32'd3255) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3262);
      acc = acc + m_hist[idx] + 32'd3269;
      idx = (idx + acc + 32'd3276) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3283);
      acc = acc + m_hist[idx] + 32'd3290;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_102 extends comp_base;
    function new(int unsigned id = 32'd102);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3162);
      acc = acc + m_hist[idx] + 32'd3169;
      idx = (idx + acc + 32'd3176) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3183);
      acc = acc + m_hist[idx] + 32'd3190;
      idx = (idx + acc + 32'd3197) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3204);
      acc = acc + m_hist[idx] + 32'd3211;
      idx = (idx + acc + 32'd3218) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3225);
      acc = acc + m_hist[idx] + 32'd3232;
      idx = (idx + acc + 32'd3239) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3246);
      acc = acc + m_hist[idx] + 32'd3253;
      idx = (idx + acc + 32'd3260) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3267);
      acc = acc + m_hist[idx] + 32'd3274;
      idx = (idx + acc + 32'd3281) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3288);
      acc = acc + m_hist[idx] + 32'd3295;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3175);
      acc = acc + m_hist[idx] + 32'd3182;
      idx = (idx + acc + 32'd3189) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3196);
      acc = acc + m_hist[idx] + 32'd3203;
      idx = (idx + acc + 32'd3210) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3217);
      acc = acc + m_hist[idx] + 32'd3224;
      idx = (idx + acc + 32'd3231) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3238);
      acc = acc + m_hist[idx] + 32'd3245;
      idx = (idx + acc + 32'd3252) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3259);
      acc = acc + m_hist[idx] + 32'd3266;
      idx = (idx + acc + 32'd3273) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3280);
      acc = acc + m_hist[idx] + 32'd3287;
      idx = (idx + acc + 32'd3294) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3301);
      acc = acc + m_hist[idx] + 32'd3308;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3188);
      acc = acc + m_hist[idx] + 32'd3195;
      idx = (idx + acc + 32'd3202) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3209);
      acc = acc + m_hist[idx] + 32'd3216;
      idx = (idx + acc + 32'd3223) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3230);
      acc = acc + m_hist[idx] + 32'd3237;
      idx = (idx + acc + 32'd3244) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3251);
      acc = acc + m_hist[idx] + 32'd3258;
      idx = (idx + acc + 32'd3265) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3272);
      acc = acc + m_hist[idx] + 32'd3279;
      idx = (idx + acc + 32'd3286) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3293);
      acc = acc + m_hist[idx] + 32'd3300;
      idx = (idx + acc + 32'd3307) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3314);
      acc = acc + m_hist[idx] + 32'd3321;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_103 extends comp_base;
    function new(int unsigned id = 32'd103);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3193);
      acc = acc + m_hist[idx] + 32'd3200;
      idx = (idx + acc + 32'd3207) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3214);
      acc = acc + m_hist[idx] + 32'd3221;
      idx = (idx + acc + 32'd3228) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3235);
      acc = acc + m_hist[idx] + 32'd3242;
      idx = (idx + acc + 32'd3249) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3256);
      acc = acc + m_hist[idx] + 32'd3263;
      idx = (idx + acc + 32'd3270) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3277);
      acc = acc + m_hist[idx] + 32'd3284;
      idx = (idx + acc + 32'd3291) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3298);
      acc = acc + m_hist[idx] + 32'd3305;
      idx = (idx + acc + 32'd3312) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3319);
      acc = acc + m_hist[idx] + 32'd3326;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3206);
      acc = acc + m_hist[idx] + 32'd3213;
      idx = (idx + acc + 32'd3220) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3227);
      acc = acc + m_hist[idx] + 32'd3234;
      idx = (idx + acc + 32'd3241) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3248);
      acc = acc + m_hist[idx] + 32'd3255;
      idx = (idx + acc + 32'd3262) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3269);
      acc = acc + m_hist[idx] + 32'd3276;
      idx = (idx + acc + 32'd3283) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3290);
      acc = acc + m_hist[idx] + 32'd3297;
      idx = (idx + acc + 32'd3304) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3311);
      acc = acc + m_hist[idx] + 32'd3318;
      idx = (idx + acc + 32'd3325) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3332);
      acc = acc + m_hist[idx] + 32'd3339;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3219);
      acc = acc + m_hist[idx] + 32'd3226;
      idx = (idx + acc + 32'd3233) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3240);
      acc = acc + m_hist[idx] + 32'd3247;
      idx = (idx + acc + 32'd3254) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3261);
      acc = acc + m_hist[idx] + 32'd3268;
      idx = (idx + acc + 32'd3275) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3282);
      acc = acc + m_hist[idx] + 32'd3289;
      idx = (idx + acc + 32'd3296) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3303);
      acc = acc + m_hist[idx] + 32'd3310;
      idx = (idx + acc + 32'd3317) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3324);
      acc = acc + m_hist[idx] + 32'd3331;
      idx = (idx + acc + 32'd3338) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3345);
      acc = acc + m_hist[idx] + 32'd3352;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_104 extends comp_base;
    function new(int unsigned id = 32'd104);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3224);
      acc = acc + m_hist[idx] + 32'd3231;
      idx = (idx + acc + 32'd3238) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3245);
      acc = acc + m_hist[idx] + 32'd3252;
      idx = (idx + acc + 32'd3259) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3266);
      acc = acc + m_hist[idx] + 32'd3273;
      idx = (idx + acc + 32'd3280) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3287);
      acc = acc + m_hist[idx] + 32'd3294;
      idx = (idx + acc + 32'd3301) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3308);
      acc = acc + m_hist[idx] + 32'd3315;
      idx = (idx + acc + 32'd3322) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3329);
      acc = acc + m_hist[idx] + 32'd3336;
      idx = (idx + acc + 32'd3343) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3350);
      acc = acc + m_hist[idx] + 32'd3357;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3237);
      acc = acc + m_hist[idx] + 32'd3244;
      idx = (idx + acc + 32'd3251) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3258);
      acc = acc + m_hist[idx] + 32'd3265;
      idx = (idx + acc + 32'd3272) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3279);
      acc = acc + m_hist[idx] + 32'd3286;
      idx = (idx + acc + 32'd3293) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3300);
      acc = acc + m_hist[idx] + 32'd3307;
      idx = (idx + acc + 32'd3314) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3321);
      acc = acc + m_hist[idx] + 32'd3328;
      idx = (idx + acc + 32'd3335) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3342);
      acc = acc + m_hist[idx] + 32'd3349;
      idx = (idx + acc + 32'd3356) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3363);
      acc = acc + m_hist[idx] + 32'd3370;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3250);
      acc = acc + m_hist[idx] + 32'd3257;
      idx = (idx + acc + 32'd3264) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3271);
      acc = acc + m_hist[idx] + 32'd3278;
      idx = (idx + acc + 32'd3285) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3292);
      acc = acc + m_hist[idx] + 32'd3299;
      idx = (idx + acc + 32'd3306) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3313);
      acc = acc + m_hist[idx] + 32'd3320;
      idx = (idx + acc + 32'd3327) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3334);
      acc = acc + m_hist[idx] + 32'd3341;
      idx = (idx + acc + 32'd3348) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3355);
      acc = acc + m_hist[idx] + 32'd3362;
      idx = (idx + acc + 32'd3369) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3376);
      acc = acc + m_hist[idx] + 32'd3383;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_105 extends comp_base;
    function new(int unsigned id = 32'd105);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3255);
      acc = acc + m_hist[idx] + 32'd3262;
      idx = (idx + acc + 32'd3269) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3276);
      acc = acc + m_hist[idx] + 32'd3283;
      idx = (idx + acc + 32'd3290) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3297);
      acc = acc + m_hist[idx] + 32'd3304;
      idx = (idx + acc + 32'd3311) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3318);
      acc = acc + m_hist[idx] + 32'd3325;
      idx = (idx + acc + 32'd3332) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3339);
      acc = acc + m_hist[idx] + 32'd3346;
      idx = (idx + acc + 32'd3353) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3360);
      acc = acc + m_hist[idx] + 32'd3367;
      idx = (idx + acc + 32'd3374) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3381);
      acc = acc + m_hist[idx] + 32'd3388;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3268);
      acc = acc + m_hist[idx] + 32'd3275;
      idx = (idx + acc + 32'd3282) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3289);
      acc = acc + m_hist[idx] + 32'd3296;
      idx = (idx + acc + 32'd3303) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3310);
      acc = acc + m_hist[idx] + 32'd3317;
      idx = (idx + acc + 32'd3324) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3331);
      acc = acc + m_hist[idx] + 32'd3338;
      idx = (idx + acc + 32'd3345) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3352);
      acc = acc + m_hist[idx] + 32'd3359;
      idx = (idx + acc + 32'd3366) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3373);
      acc = acc + m_hist[idx] + 32'd3380;
      idx = (idx + acc + 32'd3387) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3394);
      acc = acc + m_hist[idx] + 32'd3401;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3281);
      acc = acc + m_hist[idx] + 32'd3288;
      idx = (idx + acc + 32'd3295) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3302);
      acc = acc + m_hist[idx] + 32'd3309;
      idx = (idx + acc + 32'd3316) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3323);
      acc = acc + m_hist[idx] + 32'd3330;
      idx = (idx + acc + 32'd3337) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3344);
      acc = acc + m_hist[idx] + 32'd3351;
      idx = (idx + acc + 32'd3358) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3365);
      acc = acc + m_hist[idx] + 32'd3372;
      idx = (idx + acc + 32'd3379) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3386);
      acc = acc + m_hist[idx] + 32'd3393;
      idx = (idx + acc + 32'd3400) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3407);
      acc = acc + m_hist[idx] + 32'd3414;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_106 extends comp_base;
    function new(int unsigned id = 32'd106);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3286);
      acc = acc + m_hist[idx] + 32'd3293;
      idx = (idx + acc + 32'd3300) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3307);
      acc = acc + m_hist[idx] + 32'd3314;
      idx = (idx + acc + 32'd3321) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3328);
      acc = acc + m_hist[idx] + 32'd3335;
      idx = (idx + acc + 32'd3342) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3349);
      acc = acc + m_hist[idx] + 32'd3356;
      idx = (idx + acc + 32'd3363) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3370);
      acc = acc + m_hist[idx] + 32'd3377;
      idx = (idx + acc + 32'd3384) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3391);
      acc = acc + m_hist[idx] + 32'd3398;
      idx = (idx + acc + 32'd3405) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3412);
      acc = acc + m_hist[idx] + 32'd3419;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3299);
      acc = acc + m_hist[idx] + 32'd3306;
      idx = (idx + acc + 32'd3313) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3320);
      acc = acc + m_hist[idx] + 32'd3327;
      idx = (idx + acc + 32'd3334) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3341);
      acc = acc + m_hist[idx] + 32'd3348;
      idx = (idx + acc + 32'd3355) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3362);
      acc = acc + m_hist[idx] + 32'd3369;
      idx = (idx + acc + 32'd3376) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3383);
      acc = acc + m_hist[idx] + 32'd3390;
      idx = (idx + acc + 32'd3397) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3404);
      acc = acc + m_hist[idx] + 32'd3411;
      idx = (idx + acc + 32'd3418) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3425);
      acc = acc + m_hist[idx] + 32'd3432;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3312);
      acc = acc + m_hist[idx] + 32'd3319;
      idx = (idx + acc + 32'd3326) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3333);
      acc = acc + m_hist[idx] + 32'd3340;
      idx = (idx + acc + 32'd3347) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3354);
      acc = acc + m_hist[idx] + 32'd3361;
      idx = (idx + acc + 32'd3368) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3375);
      acc = acc + m_hist[idx] + 32'd3382;
      idx = (idx + acc + 32'd3389) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3396);
      acc = acc + m_hist[idx] + 32'd3403;
      idx = (idx + acc + 32'd3410) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3417);
      acc = acc + m_hist[idx] + 32'd3424;
      idx = (idx + acc + 32'd3431) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3438);
      acc = acc + m_hist[idx] + 32'd3445;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_107 extends comp_base;
    function new(int unsigned id = 32'd107);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3317);
      acc = acc + m_hist[idx] + 32'd3324;
      idx = (idx + acc + 32'd3331) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3338);
      acc = acc + m_hist[idx] + 32'd3345;
      idx = (idx + acc + 32'd3352) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3359);
      acc = acc + m_hist[idx] + 32'd3366;
      idx = (idx + acc + 32'd3373) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3380);
      acc = acc + m_hist[idx] + 32'd3387;
      idx = (idx + acc + 32'd3394) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3401);
      acc = acc + m_hist[idx] + 32'd3408;
      idx = (idx + acc + 32'd3415) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3422);
      acc = acc + m_hist[idx] + 32'd3429;
      idx = (idx + acc + 32'd3436) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3443);
      acc = acc + m_hist[idx] + 32'd3450;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3330);
      acc = acc + m_hist[idx] + 32'd3337;
      idx = (idx + acc + 32'd3344) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3351);
      acc = acc + m_hist[idx] + 32'd3358;
      idx = (idx + acc + 32'd3365) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3372);
      acc = acc + m_hist[idx] + 32'd3379;
      idx = (idx + acc + 32'd3386) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3393);
      acc = acc + m_hist[idx] + 32'd3400;
      idx = (idx + acc + 32'd3407) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3414);
      acc = acc + m_hist[idx] + 32'd3421;
      idx = (idx + acc + 32'd3428) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3435);
      acc = acc + m_hist[idx] + 32'd3442;
      idx = (idx + acc + 32'd3449) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3456);
      acc = acc + m_hist[idx] + 32'd3463;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3343);
      acc = acc + m_hist[idx] + 32'd3350;
      idx = (idx + acc + 32'd3357) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3364);
      acc = acc + m_hist[idx] + 32'd3371;
      idx = (idx + acc + 32'd3378) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3385);
      acc = acc + m_hist[idx] + 32'd3392;
      idx = (idx + acc + 32'd3399) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3406);
      acc = acc + m_hist[idx] + 32'd3413;
      idx = (idx + acc + 32'd3420) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3427);
      acc = acc + m_hist[idx] + 32'd3434;
      idx = (idx + acc + 32'd3441) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3448);
      acc = acc + m_hist[idx] + 32'd3455;
      idx = (idx + acc + 32'd3462) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3469);
      acc = acc + m_hist[idx] + 32'd3476;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_108 extends comp_base;
    function new(int unsigned id = 32'd108);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3348);
      acc = acc + m_hist[idx] + 32'd3355;
      idx = (idx + acc + 32'd3362) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3369);
      acc = acc + m_hist[idx] + 32'd3376;
      idx = (idx + acc + 32'd3383) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3390);
      acc = acc + m_hist[idx] + 32'd3397;
      idx = (idx + acc + 32'd3404) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3411);
      acc = acc + m_hist[idx] + 32'd3418;
      idx = (idx + acc + 32'd3425) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3432);
      acc = acc + m_hist[idx] + 32'd3439;
      idx = (idx + acc + 32'd3446) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3453);
      acc = acc + m_hist[idx] + 32'd3460;
      idx = (idx + acc + 32'd3467) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3474);
      acc = acc + m_hist[idx] + 32'd3481;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3361);
      acc = acc + m_hist[idx] + 32'd3368;
      idx = (idx + acc + 32'd3375) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3382);
      acc = acc + m_hist[idx] + 32'd3389;
      idx = (idx + acc + 32'd3396) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3403);
      acc = acc + m_hist[idx] + 32'd3410;
      idx = (idx + acc + 32'd3417) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3424);
      acc = acc + m_hist[idx] + 32'd3431;
      idx = (idx + acc + 32'd3438) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3445);
      acc = acc + m_hist[idx] + 32'd3452;
      idx = (idx + acc + 32'd3459) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3466);
      acc = acc + m_hist[idx] + 32'd3473;
      idx = (idx + acc + 32'd3480) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3487);
      acc = acc + m_hist[idx] + 32'd3494;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3374);
      acc = acc + m_hist[idx] + 32'd3381;
      idx = (idx + acc + 32'd3388) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3395);
      acc = acc + m_hist[idx] + 32'd3402;
      idx = (idx + acc + 32'd3409) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3416);
      acc = acc + m_hist[idx] + 32'd3423;
      idx = (idx + acc + 32'd3430) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3437);
      acc = acc + m_hist[idx] + 32'd3444;
      idx = (idx + acc + 32'd3451) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3458);
      acc = acc + m_hist[idx] + 32'd3465;
      idx = (idx + acc + 32'd3472) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3479);
      acc = acc + m_hist[idx] + 32'd3486;
      idx = (idx + acc + 32'd3493) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3500);
      acc = acc + m_hist[idx] + 32'd3507;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_109 extends comp_base;
    function new(int unsigned id = 32'd109);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3379);
      acc = acc + m_hist[idx] + 32'd3386;
      idx = (idx + acc + 32'd3393) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3400);
      acc = acc + m_hist[idx] + 32'd3407;
      idx = (idx + acc + 32'd3414) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3421);
      acc = acc + m_hist[idx] + 32'd3428;
      idx = (idx + acc + 32'd3435) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3442);
      acc = acc + m_hist[idx] + 32'd3449;
      idx = (idx + acc + 32'd3456) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3463);
      acc = acc + m_hist[idx] + 32'd3470;
      idx = (idx + acc + 32'd3477) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3484);
      acc = acc + m_hist[idx] + 32'd3491;
      idx = (idx + acc + 32'd3498) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3505);
      acc = acc + m_hist[idx] + 32'd3512;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3392);
      acc = acc + m_hist[idx] + 32'd3399;
      idx = (idx + acc + 32'd3406) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3413);
      acc = acc + m_hist[idx] + 32'd3420;
      idx = (idx + acc + 32'd3427) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3434);
      acc = acc + m_hist[idx] + 32'd3441;
      idx = (idx + acc + 32'd3448) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3455);
      acc = acc + m_hist[idx] + 32'd3462;
      idx = (idx + acc + 32'd3469) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3476);
      acc = acc + m_hist[idx] + 32'd3483;
      idx = (idx + acc + 32'd3490) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3497);
      acc = acc + m_hist[idx] + 32'd3504;
      idx = (idx + acc + 32'd3511) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3518);
      acc = acc + m_hist[idx] + 32'd3525;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3405);
      acc = acc + m_hist[idx] + 32'd3412;
      idx = (idx + acc + 32'd3419) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3426);
      acc = acc + m_hist[idx] + 32'd3433;
      idx = (idx + acc + 32'd3440) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3447);
      acc = acc + m_hist[idx] + 32'd3454;
      idx = (idx + acc + 32'd3461) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3468);
      acc = acc + m_hist[idx] + 32'd3475;
      idx = (idx + acc + 32'd3482) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3489);
      acc = acc + m_hist[idx] + 32'd3496;
      idx = (idx + acc + 32'd3503) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3510);
      acc = acc + m_hist[idx] + 32'd3517;
      idx = (idx + acc + 32'd3524) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3531);
      acc = acc + m_hist[idx] + 32'd3538;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_110 extends comp_base;
    function new(int unsigned id = 32'd110);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3410);
      acc = acc + m_hist[idx] + 32'd3417;
      idx = (idx + acc + 32'd3424) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3431);
      acc = acc + m_hist[idx] + 32'd3438;
      idx = (idx + acc + 32'd3445) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3452);
      acc = acc + m_hist[idx] + 32'd3459;
      idx = (idx + acc + 32'd3466) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3473);
      acc = acc + m_hist[idx] + 32'd3480;
      idx = (idx + acc + 32'd3487) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3494);
      acc = acc + m_hist[idx] + 32'd3501;
      idx = (idx + acc + 32'd3508) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3515);
      acc = acc + m_hist[idx] + 32'd3522;
      idx = (idx + acc + 32'd3529) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3536);
      acc = acc + m_hist[idx] + 32'd3543;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3423);
      acc = acc + m_hist[idx] + 32'd3430;
      idx = (idx + acc + 32'd3437) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3444);
      acc = acc + m_hist[idx] + 32'd3451;
      idx = (idx + acc + 32'd3458) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3465);
      acc = acc + m_hist[idx] + 32'd3472;
      idx = (idx + acc + 32'd3479) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3486);
      acc = acc + m_hist[idx] + 32'd3493;
      idx = (idx + acc + 32'd3500) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3507);
      acc = acc + m_hist[idx] + 32'd3514;
      idx = (idx + acc + 32'd3521) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3528);
      acc = acc + m_hist[idx] + 32'd3535;
      idx = (idx + acc + 32'd3542) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3549);
      acc = acc + m_hist[idx] + 32'd3556;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3436);
      acc = acc + m_hist[idx] + 32'd3443;
      idx = (idx + acc + 32'd3450) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3457);
      acc = acc + m_hist[idx] + 32'd3464;
      idx = (idx + acc + 32'd3471) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3478);
      acc = acc + m_hist[idx] + 32'd3485;
      idx = (idx + acc + 32'd3492) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3499);
      acc = acc + m_hist[idx] + 32'd3506;
      idx = (idx + acc + 32'd3513) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3520);
      acc = acc + m_hist[idx] + 32'd3527;
      idx = (idx + acc + 32'd3534) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3541);
      acc = acc + m_hist[idx] + 32'd3548;
      idx = (idx + acc + 32'd3555) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3562);
      acc = acc + m_hist[idx] + 32'd3569;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_111 extends comp_base;
    function new(int unsigned id = 32'd111);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3441);
      acc = acc + m_hist[idx] + 32'd3448;
      idx = (idx + acc + 32'd3455) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3462);
      acc = acc + m_hist[idx] + 32'd3469;
      idx = (idx + acc + 32'd3476) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3483);
      acc = acc + m_hist[idx] + 32'd3490;
      idx = (idx + acc + 32'd3497) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3504);
      acc = acc + m_hist[idx] + 32'd3511;
      idx = (idx + acc + 32'd3518) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3525);
      acc = acc + m_hist[idx] + 32'd3532;
      idx = (idx + acc + 32'd3539) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3546);
      acc = acc + m_hist[idx] + 32'd3553;
      idx = (idx + acc + 32'd3560) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3567);
      acc = acc + m_hist[idx] + 32'd3574;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3454);
      acc = acc + m_hist[idx] + 32'd3461;
      idx = (idx + acc + 32'd3468) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3475);
      acc = acc + m_hist[idx] + 32'd3482;
      idx = (idx + acc + 32'd3489) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3496);
      acc = acc + m_hist[idx] + 32'd3503;
      idx = (idx + acc + 32'd3510) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3517);
      acc = acc + m_hist[idx] + 32'd3524;
      idx = (idx + acc + 32'd3531) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3538);
      acc = acc + m_hist[idx] + 32'd3545;
      idx = (idx + acc + 32'd3552) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3559);
      acc = acc + m_hist[idx] + 32'd3566;
      idx = (idx + acc + 32'd3573) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3580);
      acc = acc + m_hist[idx] + 32'd3587;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3467);
      acc = acc + m_hist[idx] + 32'd3474;
      idx = (idx + acc + 32'd3481) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3488);
      acc = acc + m_hist[idx] + 32'd3495;
      idx = (idx + acc + 32'd3502) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3509);
      acc = acc + m_hist[idx] + 32'd3516;
      idx = (idx + acc + 32'd3523) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3530);
      acc = acc + m_hist[idx] + 32'd3537;
      idx = (idx + acc + 32'd3544) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3551);
      acc = acc + m_hist[idx] + 32'd3558;
      idx = (idx + acc + 32'd3565) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3572);
      acc = acc + m_hist[idx] + 32'd3579;
      idx = (idx + acc + 32'd3586) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3593);
      acc = acc + m_hist[idx] + 32'd3600;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_112 extends comp_base;
    function new(int unsigned id = 32'd112);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3472);
      acc = acc + m_hist[idx] + 32'd3479;
      idx = (idx + acc + 32'd3486) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3493);
      acc = acc + m_hist[idx] + 32'd3500;
      idx = (idx + acc + 32'd3507) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3514);
      acc = acc + m_hist[idx] + 32'd3521;
      idx = (idx + acc + 32'd3528) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3535);
      acc = acc + m_hist[idx] + 32'd3542;
      idx = (idx + acc + 32'd3549) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3556);
      acc = acc + m_hist[idx] + 32'd3563;
      idx = (idx + acc + 32'd3570) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3577);
      acc = acc + m_hist[idx] + 32'd3584;
      idx = (idx + acc + 32'd3591) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3598);
      acc = acc + m_hist[idx] + 32'd3605;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3485);
      acc = acc + m_hist[idx] + 32'd3492;
      idx = (idx + acc + 32'd3499) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3506);
      acc = acc + m_hist[idx] + 32'd3513;
      idx = (idx + acc + 32'd3520) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3527);
      acc = acc + m_hist[idx] + 32'd3534;
      idx = (idx + acc + 32'd3541) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3548);
      acc = acc + m_hist[idx] + 32'd3555;
      idx = (idx + acc + 32'd3562) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3569);
      acc = acc + m_hist[idx] + 32'd3576;
      idx = (idx + acc + 32'd3583) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3590);
      acc = acc + m_hist[idx] + 32'd3597;
      idx = (idx + acc + 32'd3604) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3611);
      acc = acc + m_hist[idx] + 32'd3618;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3498);
      acc = acc + m_hist[idx] + 32'd3505;
      idx = (idx + acc + 32'd3512) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3519);
      acc = acc + m_hist[idx] + 32'd3526;
      idx = (idx + acc + 32'd3533) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3540);
      acc = acc + m_hist[idx] + 32'd3547;
      idx = (idx + acc + 32'd3554) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3561);
      acc = acc + m_hist[idx] + 32'd3568;
      idx = (idx + acc + 32'd3575) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3582);
      acc = acc + m_hist[idx] + 32'd3589;
      idx = (idx + acc + 32'd3596) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3603);
      acc = acc + m_hist[idx] + 32'd3610;
      idx = (idx + acc + 32'd3617) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3624);
      acc = acc + m_hist[idx] + 32'd3631;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_113 extends comp_base;
    function new(int unsigned id = 32'd113);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3503);
      acc = acc + m_hist[idx] + 32'd3510;
      idx = (idx + acc + 32'd3517) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3524);
      acc = acc + m_hist[idx] + 32'd3531;
      idx = (idx + acc + 32'd3538) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3545);
      acc = acc + m_hist[idx] + 32'd3552;
      idx = (idx + acc + 32'd3559) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3566);
      acc = acc + m_hist[idx] + 32'd3573;
      idx = (idx + acc + 32'd3580) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3587);
      acc = acc + m_hist[idx] + 32'd3594;
      idx = (idx + acc + 32'd3601) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3608);
      acc = acc + m_hist[idx] + 32'd3615;
      idx = (idx + acc + 32'd3622) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3629);
      acc = acc + m_hist[idx] + 32'd3636;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3516);
      acc = acc + m_hist[idx] + 32'd3523;
      idx = (idx + acc + 32'd3530) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3537);
      acc = acc + m_hist[idx] + 32'd3544;
      idx = (idx + acc + 32'd3551) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3558);
      acc = acc + m_hist[idx] + 32'd3565;
      idx = (idx + acc + 32'd3572) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3579);
      acc = acc + m_hist[idx] + 32'd3586;
      idx = (idx + acc + 32'd3593) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3600);
      acc = acc + m_hist[idx] + 32'd3607;
      idx = (idx + acc + 32'd3614) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3621);
      acc = acc + m_hist[idx] + 32'd3628;
      idx = (idx + acc + 32'd3635) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3642);
      acc = acc + m_hist[idx] + 32'd3649;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3529);
      acc = acc + m_hist[idx] + 32'd3536;
      idx = (idx + acc + 32'd3543) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3550);
      acc = acc + m_hist[idx] + 32'd3557;
      idx = (idx + acc + 32'd3564) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3571);
      acc = acc + m_hist[idx] + 32'd3578;
      idx = (idx + acc + 32'd3585) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3592);
      acc = acc + m_hist[idx] + 32'd3599;
      idx = (idx + acc + 32'd3606) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3613);
      acc = acc + m_hist[idx] + 32'd3620;
      idx = (idx + acc + 32'd3627) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3634);
      acc = acc + m_hist[idx] + 32'd3641;
      idx = (idx + acc + 32'd3648) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3655);
      acc = acc + m_hist[idx] + 32'd3662;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_114 extends comp_base;
    function new(int unsigned id = 32'd114);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3534);
      acc = acc + m_hist[idx] + 32'd3541;
      idx = (idx + acc + 32'd3548) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3555);
      acc = acc + m_hist[idx] + 32'd3562;
      idx = (idx + acc + 32'd3569) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3576);
      acc = acc + m_hist[idx] + 32'd3583;
      idx = (idx + acc + 32'd3590) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3597);
      acc = acc + m_hist[idx] + 32'd3604;
      idx = (idx + acc + 32'd3611) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3618);
      acc = acc + m_hist[idx] + 32'd3625;
      idx = (idx + acc + 32'd3632) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3639);
      acc = acc + m_hist[idx] + 32'd3646;
      idx = (idx + acc + 32'd3653) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3660);
      acc = acc + m_hist[idx] + 32'd3667;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3547);
      acc = acc + m_hist[idx] + 32'd3554;
      idx = (idx + acc + 32'd3561) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3568);
      acc = acc + m_hist[idx] + 32'd3575;
      idx = (idx + acc + 32'd3582) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3589);
      acc = acc + m_hist[idx] + 32'd3596;
      idx = (idx + acc + 32'd3603) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3610);
      acc = acc + m_hist[idx] + 32'd3617;
      idx = (idx + acc + 32'd3624) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3631);
      acc = acc + m_hist[idx] + 32'd3638;
      idx = (idx + acc + 32'd3645) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3652);
      acc = acc + m_hist[idx] + 32'd3659;
      idx = (idx + acc + 32'd3666) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3673);
      acc = acc + m_hist[idx] + 32'd3680;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3560);
      acc = acc + m_hist[idx] + 32'd3567;
      idx = (idx + acc + 32'd3574) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3581);
      acc = acc + m_hist[idx] + 32'd3588;
      idx = (idx + acc + 32'd3595) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3602);
      acc = acc + m_hist[idx] + 32'd3609;
      idx = (idx + acc + 32'd3616) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3623);
      acc = acc + m_hist[idx] + 32'd3630;
      idx = (idx + acc + 32'd3637) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3644);
      acc = acc + m_hist[idx] + 32'd3651;
      idx = (idx + acc + 32'd3658) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3665);
      acc = acc + m_hist[idx] + 32'd3672;
      idx = (idx + acc + 32'd3679) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3686);
      acc = acc + m_hist[idx] + 32'd3693;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_115 extends comp_base;
    function new(int unsigned id = 32'd115);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3565);
      acc = acc + m_hist[idx] + 32'd3572;
      idx = (idx + acc + 32'd3579) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3586);
      acc = acc + m_hist[idx] + 32'd3593;
      idx = (idx + acc + 32'd3600) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3607);
      acc = acc + m_hist[idx] + 32'd3614;
      idx = (idx + acc + 32'd3621) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3628);
      acc = acc + m_hist[idx] + 32'd3635;
      idx = (idx + acc + 32'd3642) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3649);
      acc = acc + m_hist[idx] + 32'd3656;
      idx = (idx + acc + 32'd3663) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3670);
      acc = acc + m_hist[idx] + 32'd3677;
      idx = (idx + acc + 32'd3684) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3691);
      acc = acc + m_hist[idx] + 32'd3698;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3578);
      acc = acc + m_hist[idx] + 32'd3585;
      idx = (idx + acc + 32'd3592) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3599);
      acc = acc + m_hist[idx] + 32'd3606;
      idx = (idx + acc + 32'd3613) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3620);
      acc = acc + m_hist[idx] + 32'd3627;
      idx = (idx + acc + 32'd3634) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3641);
      acc = acc + m_hist[idx] + 32'd3648;
      idx = (idx + acc + 32'd3655) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3662);
      acc = acc + m_hist[idx] + 32'd3669;
      idx = (idx + acc + 32'd3676) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3683);
      acc = acc + m_hist[idx] + 32'd3690;
      idx = (idx + acc + 32'd3697) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3704);
      acc = acc + m_hist[idx] + 32'd3711;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3591);
      acc = acc + m_hist[idx] + 32'd3598;
      idx = (idx + acc + 32'd3605) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3612);
      acc = acc + m_hist[idx] + 32'd3619;
      idx = (idx + acc + 32'd3626) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3633);
      acc = acc + m_hist[idx] + 32'd3640;
      idx = (idx + acc + 32'd3647) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3654);
      acc = acc + m_hist[idx] + 32'd3661;
      idx = (idx + acc + 32'd3668) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3675);
      acc = acc + m_hist[idx] + 32'd3682;
      idx = (idx + acc + 32'd3689) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3696);
      acc = acc + m_hist[idx] + 32'd3703;
      idx = (idx + acc + 32'd3710) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3717);
      acc = acc + m_hist[idx] + 32'd3724;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_116 extends comp_base;
    function new(int unsigned id = 32'd116);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3596);
      acc = acc + m_hist[idx] + 32'd3603;
      idx = (idx + acc + 32'd3610) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3617);
      acc = acc + m_hist[idx] + 32'd3624;
      idx = (idx + acc + 32'd3631) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3638);
      acc = acc + m_hist[idx] + 32'd3645;
      idx = (idx + acc + 32'd3652) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3659);
      acc = acc + m_hist[idx] + 32'd3666;
      idx = (idx + acc + 32'd3673) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3680);
      acc = acc + m_hist[idx] + 32'd3687;
      idx = (idx + acc + 32'd3694) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3701);
      acc = acc + m_hist[idx] + 32'd3708;
      idx = (idx + acc + 32'd3715) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3722);
      acc = acc + m_hist[idx] + 32'd3729;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3609);
      acc = acc + m_hist[idx] + 32'd3616;
      idx = (idx + acc + 32'd3623) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3630);
      acc = acc + m_hist[idx] + 32'd3637;
      idx = (idx + acc + 32'd3644) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3651);
      acc = acc + m_hist[idx] + 32'd3658;
      idx = (idx + acc + 32'd3665) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3672);
      acc = acc + m_hist[idx] + 32'd3679;
      idx = (idx + acc + 32'd3686) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3693);
      acc = acc + m_hist[idx] + 32'd3700;
      idx = (idx + acc + 32'd3707) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3714);
      acc = acc + m_hist[idx] + 32'd3721;
      idx = (idx + acc + 32'd3728) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3735);
      acc = acc + m_hist[idx] + 32'd3742;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3622);
      acc = acc + m_hist[idx] + 32'd3629;
      idx = (idx + acc + 32'd3636) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3643);
      acc = acc + m_hist[idx] + 32'd3650;
      idx = (idx + acc + 32'd3657) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3664);
      acc = acc + m_hist[idx] + 32'd3671;
      idx = (idx + acc + 32'd3678) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3685);
      acc = acc + m_hist[idx] + 32'd3692;
      idx = (idx + acc + 32'd3699) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3706);
      acc = acc + m_hist[idx] + 32'd3713;
      idx = (idx + acc + 32'd3720) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3727);
      acc = acc + m_hist[idx] + 32'd3734;
      idx = (idx + acc + 32'd3741) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3748);
      acc = acc + m_hist[idx] + 32'd3755;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_117 extends comp_base;
    function new(int unsigned id = 32'd117);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3627);
      acc = acc + m_hist[idx] + 32'd3634;
      idx = (idx + acc + 32'd3641) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3648);
      acc = acc + m_hist[idx] + 32'd3655;
      idx = (idx + acc + 32'd3662) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3669);
      acc = acc + m_hist[idx] + 32'd3676;
      idx = (idx + acc + 32'd3683) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3690);
      acc = acc + m_hist[idx] + 32'd3697;
      idx = (idx + acc + 32'd3704) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3711);
      acc = acc + m_hist[idx] + 32'd3718;
      idx = (idx + acc + 32'd3725) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3732);
      acc = acc + m_hist[idx] + 32'd3739;
      idx = (idx + acc + 32'd3746) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3753);
      acc = acc + m_hist[idx] + 32'd3760;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3640);
      acc = acc + m_hist[idx] + 32'd3647;
      idx = (idx + acc + 32'd3654) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3661);
      acc = acc + m_hist[idx] + 32'd3668;
      idx = (idx + acc + 32'd3675) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3682);
      acc = acc + m_hist[idx] + 32'd3689;
      idx = (idx + acc + 32'd3696) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3703);
      acc = acc + m_hist[idx] + 32'd3710;
      idx = (idx + acc + 32'd3717) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3724);
      acc = acc + m_hist[idx] + 32'd3731;
      idx = (idx + acc + 32'd3738) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3745);
      acc = acc + m_hist[idx] + 32'd3752;
      idx = (idx + acc + 32'd3759) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3766);
      acc = acc + m_hist[idx] + 32'd3773;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3653);
      acc = acc + m_hist[idx] + 32'd3660;
      idx = (idx + acc + 32'd3667) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3674);
      acc = acc + m_hist[idx] + 32'd3681;
      idx = (idx + acc + 32'd3688) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3695);
      acc = acc + m_hist[idx] + 32'd3702;
      idx = (idx + acc + 32'd3709) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3716);
      acc = acc + m_hist[idx] + 32'd3723;
      idx = (idx + acc + 32'd3730) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3737);
      acc = acc + m_hist[idx] + 32'd3744;
      idx = (idx + acc + 32'd3751) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3758);
      acc = acc + m_hist[idx] + 32'd3765;
      idx = (idx + acc + 32'd3772) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3779);
      acc = acc + m_hist[idx] + 32'd3786;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_118 extends comp_base;
    function new(int unsigned id = 32'd118);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3658);
      acc = acc + m_hist[idx] + 32'd3665;
      idx = (idx + acc + 32'd3672) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3679);
      acc = acc + m_hist[idx] + 32'd3686;
      idx = (idx + acc + 32'd3693) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3700);
      acc = acc + m_hist[idx] + 32'd3707;
      idx = (idx + acc + 32'd3714) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3721);
      acc = acc + m_hist[idx] + 32'd3728;
      idx = (idx + acc + 32'd3735) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3742);
      acc = acc + m_hist[idx] + 32'd3749;
      idx = (idx + acc + 32'd3756) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3763);
      acc = acc + m_hist[idx] + 32'd3770;
      idx = (idx + acc + 32'd3777) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3784);
      acc = acc + m_hist[idx] + 32'd3791;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3671);
      acc = acc + m_hist[idx] + 32'd3678;
      idx = (idx + acc + 32'd3685) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3692);
      acc = acc + m_hist[idx] + 32'd3699;
      idx = (idx + acc + 32'd3706) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3713);
      acc = acc + m_hist[idx] + 32'd3720;
      idx = (idx + acc + 32'd3727) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3734);
      acc = acc + m_hist[idx] + 32'd3741;
      idx = (idx + acc + 32'd3748) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3755);
      acc = acc + m_hist[idx] + 32'd3762;
      idx = (idx + acc + 32'd3769) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3776);
      acc = acc + m_hist[idx] + 32'd3783;
      idx = (idx + acc + 32'd3790) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3797);
      acc = acc + m_hist[idx] + 32'd3804;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3684);
      acc = acc + m_hist[idx] + 32'd3691;
      idx = (idx + acc + 32'd3698) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3705);
      acc = acc + m_hist[idx] + 32'd3712;
      idx = (idx + acc + 32'd3719) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3726);
      acc = acc + m_hist[idx] + 32'd3733;
      idx = (idx + acc + 32'd3740) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3747);
      acc = acc + m_hist[idx] + 32'd3754;
      idx = (idx + acc + 32'd3761) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3768);
      acc = acc + m_hist[idx] + 32'd3775;
      idx = (idx + acc + 32'd3782) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3789);
      acc = acc + m_hist[idx] + 32'd3796;
      idx = (idx + acc + 32'd3803) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3810);
      acc = acc + m_hist[idx] + 32'd3817;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_119 extends comp_base;
    function new(int unsigned id = 32'd119);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3689);
      acc = acc + m_hist[idx] + 32'd3696;
      idx = (idx + acc + 32'd3703) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3710);
      acc = acc + m_hist[idx] + 32'd3717;
      idx = (idx + acc + 32'd3724) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3731);
      acc = acc + m_hist[idx] + 32'd3738;
      idx = (idx + acc + 32'd3745) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3752);
      acc = acc + m_hist[idx] + 32'd3759;
      idx = (idx + acc + 32'd3766) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3773);
      acc = acc + m_hist[idx] + 32'd3780;
      idx = (idx + acc + 32'd3787) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3794);
      acc = acc + m_hist[idx] + 32'd3801;
      idx = (idx + acc + 32'd3808) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3815);
      acc = acc + m_hist[idx] + 32'd3822;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3702);
      acc = acc + m_hist[idx] + 32'd3709;
      idx = (idx + acc + 32'd3716) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3723);
      acc = acc + m_hist[idx] + 32'd3730;
      idx = (idx + acc + 32'd3737) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3744);
      acc = acc + m_hist[idx] + 32'd3751;
      idx = (idx + acc + 32'd3758) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3765);
      acc = acc + m_hist[idx] + 32'd3772;
      idx = (idx + acc + 32'd3779) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3786);
      acc = acc + m_hist[idx] + 32'd3793;
      idx = (idx + acc + 32'd3800) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3807);
      acc = acc + m_hist[idx] + 32'd3814;
      idx = (idx + acc + 32'd3821) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3828);
      acc = acc + m_hist[idx] + 32'd3835;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3715);
      acc = acc + m_hist[idx] + 32'd3722;
      idx = (idx + acc + 32'd3729) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3736);
      acc = acc + m_hist[idx] + 32'd3743;
      idx = (idx + acc + 32'd3750) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3757);
      acc = acc + m_hist[idx] + 32'd3764;
      idx = (idx + acc + 32'd3771) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3778);
      acc = acc + m_hist[idx] + 32'd3785;
      idx = (idx + acc + 32'd3792) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3799);
      acc = acc + m_hist[idx] + 32'd3806;
      idx = (idx + acc + 32'd3813) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3820);
      acc = acc + m_hist[idx] + 32'd3827;
      idx = (idx + acc + 32'd3834) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3841);
      acc = acc + m_hist[idx] + 32'd3848;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_120 extends comp_base;
    function new(int unsigned id = 32'd120);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3720);
      acc = acc + m_hist[idx] + 32'd3727;
      idx = (idx + acc + 32'd3734) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3741);
      acc = acc + m_hist[idx] + 32'd3748;
      idx = (idx + acc + 32'd3755) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3762);
      acc = acc + m_hist[idx] + 32'd3769;
      idx = (idx + acc + 32'd3776) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3783);
      acc = acc + m_hist[idx] + 32'd3790;
      idx = (idx + acc + 32'd3797) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3804);
      acc = acc + m_hist[idx] + 32'd3811;
      idx = (idx + acc + 32'd3818) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3825);
      acc = acc + m_hist[idx] + 32'd3832;
      idx = (idx + acc + 32'd3839) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3846);
      acc = acc + m_hist[idx] + 32'd3853;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3733);
      acc = acc + m_hist[idx] + 32'd3740;
      idx = (idx + acc + 32'd3747) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3754);
      acc = acc + m_hist[idx] + 32'd3761;
      idx = (idx + acc + 32'd3768) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3775);
      acc = acc + m_hist[idx] + 32'd3782;
      idx = (idx + acc + 32'd3789) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3796);
      acc = acc + m_hist[idx] + 32'd3803;
      idx = (idx + acc + 32'd3810) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3817);
      acc = acc + m_hist[idx] + 32'd3824;
      idx = (idx + acc + 32'd3831) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3838);
      acc = acc + m_hist[idx] + 32'd3845;
      idx = (idx + acc + 32'd3852) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3859);
      acc = acc + m_hist[idx] + 32'd3866;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3746);
      acc = acc + m_hist[idx] + 32'd3753;
      idx = (idx + acc + 32'd3760) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3767);
      acc = acc + m_hist[idx] + 32'd3774;
      idx = (idx + acc + 32'd3781) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3788);
      acc = acc + m_hist[idx] + 32'd3795;
      idx = (idx + acc + 32'd3802) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3809);
      acc = acc + m_hist[idx] + 32'd3816;
      idx = (idx + acc + 32'd3823) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3830);
      acc = acc + m_hist[idx] + 32'd3837;
      idx = (idx + acc + 32'd3844) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3851);
      acc = acc + m_hist[idx] + 32'd3858;
      idx = (idx + acc + 32'd3865) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3872);
      acc = acc + m_hist[idx] + 32'd3879;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_121 extends comp_base;
    function new(int unsigned id = 32'd121);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3751);
      acc = acc + m_hist[idx] + 32'd3758;
      idx = (idx + acc + 32'd3765) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3772);
      acc = acc + m_hist[idx] + 32'd3779;
      idx = (idx + acc + 32'd3786) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3793);
      acc = acc + m_hist[idx] + 32'd3800;
      idx = (idx + acc + 32'd3807) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3814);
      acc = acc + m_hist[idx] + 32'd3821;
      idx = (idx + acc + 32'd3828) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3835);
      acc = acc + m_hist[idx] + 32'd3842;
      idx = (idx + acc + 32'd3849) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3856);
      acc = acc + m_hist[idx] + 32'd3863;
      idx = (idx + acc + 32'd3870) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3877);
      acc = acc + m_hist[idx] + 32'd3884;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3764);
      acc = acc + m_hist[idx] + 32'd3771;
      idx = (idx + acc + 32'd3778) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3785);
      acc = acc + m_hist[idx] + 32'd3792;
      idx = (idx + acc + 32'd3799) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3806);
      acc = acc + m_hist[idx] + 32'd3813;
      idx = (idx + acc + 32'd3820) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3827);
      acc = acc + m_hist[idx] + 32'd3834;
      idx = (idx + acc + 32'd3841) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3848);
      acc = acc + m_hist[idx] + 32'd3855;
      idx = (idx + acc + 32'd3862) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3869);
      acc = acc + m_hist[idx] + 32'd3876;
      idx = (idx + acc + 32'd3883) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3890);
      acc = acc + m_hist[idx] + 32'd3897;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3777);
      acc = acc + m_hist[idx] + 32'd3784;
      idx = (idx + acc + 32'd3791) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3798);
      acc = acc + m_hist[idx] + 32'd3805;
      idx = (idx + acc + 32'd3812) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3819);
      acc = acc + m_hist[idx] + 32'd3826;
      idx = (idx + acc + 32'd3833) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3840);
      acc = acc + m_hist[idx] + 32'd3847;
      idx = (idx + acc + 32'd3854) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3861);
      acc = acc + m_hist[idx] + 32'd3868;
      idx = (idx + acc + 32'd3875) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3882);
      acc = acc + m_hist[idx] + 32'd3889;
      idx = (idx + acc + 32'd3896) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3903);
      acc = acc + m_hist[idx] + 32'd3910;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_122 extends comp_base;
    function new(int unsigned id = 32'd122);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3782);
      acc = acc + m_hist[idx] + 32'd3789;
      idx = (idx + acc + 32'd3796) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3803);
      acc = acc + m_hist[idx] + 32'd3810;
      idx = (idx + acc + 32'd3817) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3824);
      acc = acc + m_hist[idx] + 32'd3831;
      idx = (idx + acc + 32'd3838) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3845);
      acc = acc + m_hist[idx] + 32'd3852;
      idx = (idx + acc + 32'd3859) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3866);
      acc = acc + m_hist[idx] + 32'd3873;
      idx = (idx + acc + 32'd3880) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3887);
      acc = acc + m_hist[idx] + 32'd3894;
      idx = (idx + acc + 32'd3901) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3908);
      acc = acc + m_hist[idx] + 32'd3915;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3795);
      acc = acc + m_hist[idx] + 32'd3802;
      idx = (idx + acc + 32'd3809) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3816);
      acc = acc + m_hist[idx] + 32'd3823;
      idx = (idx + acc + 32'd3830) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3837);
      acc = acc + m_hist[idx] + 32'd3844;
      idx = (idx + acc + 32'd3851) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3858);
      acc = acc + m_hist[idx] + 32'd3865;
      idx = (idx + acc + 32'd3872) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3879);
      acc = acc + m_hist[idx] + 32'd3886;
      idx = (idx + acc + 32'd3893) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3900);
      acc = acc + m_hist[idx] + 32'd3907;
      idx = (idx + acc + 32'd3914) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3921);
      acc = acc + m_hist[idx] + 32'd3928;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3808);
      acc = acc + m_hist[idx] + 32'd3815;
      idx = (idx + acc + 32'd3822) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3829);
      acc = acc + m_hist[idx] + 32'd3836;
      idx = (idx + acc + 32'd3843) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3850);
      acc = acc + m_hist[idx] + 32'd3857;
      idx = (idx + acc + 32'd3864) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3871);
      acc = acc + m_hist[idx] + 32'd3878;
      idx = (idx + acc + 32'd3885) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3892);
      acc = acc + m_hist[idx] + 32'd3899;
      idx = (idx + acc + 32'd3906) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3913);
      acc = acc + m_hist[idx] + 32'd3920;
      idx = (idx + acc + 32'd3927) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3934);
      acc = acc + m_hist[idx] + 32'd3941;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_123 extends comp_base;
    function new(int unsigned id = 32'd123);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3813);
      acc = acc + m_hist[idx] + 32'd3820;
      idx = (idx + acc + 32'd3827) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3834);
      acc = acc + m_hist[idx] + 32'd3841;
      idx = (idx + acc + 32'd3848) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3855);
      acc = acc + m_hist[idx] + 32'd3862;
      idx = (idx + acc + 32'd3869) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3876);
      acc = acc + m_hist[idx] + 32'd3883;
      idx = (idx + acc + 32'd3890) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3897);
      acc = acc + m_hist[idx] + 32'd3904;
      idx = (idx + acc + 32'd3911) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3918);
      acc = acc + m_hist[idx] + 32'd3925;
      idx = (idx + acc + 32'd3932) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3939);
      acc = acc + m_hist[idx] + 32'd3946;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3826);
      acc = acc + m_hist[idx] + 32'd3833;
      idx = (idx + acc + 32'd3840) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3847);
      acc = acc + m_hist[idx] + 32'd3854;
      idx = (idx + acc + 32'd3861) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3868);
      acc = acc + m_hist[idx] + 32'd3875;
      idx = (idx + acc + 32'd3882) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3889);
      acc = acc + m_hist[idx] + 32'd3896;
      idx = (idx + acc + 32'd3903) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3910);
      acc = acc + m_hist[idx] + 32'd3917;
      idx = (idx + acc + 32'd3924) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3931);
      acc = acc + m_hist[idx] + 32'd3938;
      idx = (idx + acc + 32'd3945) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3952);
      acc = acc + m_hist[idx] + 32'd3959;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3839);
      acc = acc + m_hist[idx] + 32'd3846;
      idx = (idx + acc + 32'd3853) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3860);
      acc = acc + m_hist[idx] + 32'd3867;
      idx = (idx + acc + 32'd3874) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3881);
      acc = acc + m_hist[idx] + 32'd3888;
      idx = (idx + acc + 32'd3895) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3902);
      acc = acc + m_hist[idx] + 32'd3909;
      idx = (idx + acc + 32'd3916) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3923);
      acc = acc + m_hist[idx] + 32'd3930;
      idx = (idx + acc + 32'd3937) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3944);
      acc = acc + m_hist[idx] + 32'd3951;
      idx = (idx + acc + 32'd3958) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3965);
      acc = acc + m_hist[idx] + 32'd3972;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_124 extends comp_base;
    function new(int unsigned id = 32'd124);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3844);
      acc = acc + m_hist[idx] + 32'd3851;
      idx = (idx + acc + 32'd3858) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3865);
      acc = acc + m_hist[idx] + 32'd3872;
      idx = (idx + acc + 32'd3879) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3886);
      acc = acc + m_hist[idx] + 32'd3893;
      idx = (idx + acc + 32'd3900) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3907);
      acc = acc + m_hist[idx] + 32'd3914;
      idx = (idx + acc + 32'd3921) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3928);
      acc = acc + m_hist[idx] + 32'd3935;
      idx = (idx + acc + 32'd3942) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3949);
      acc = acc + m_hist[idx] + 32'd3956;
      idx = (idx + acc + 32'd3963) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3970);
      acc = acc + m_hist[idx] + 32'd3977;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3857);
      acc = acc + m_hist[idx] + 32'd3864;
      idx = (idx + acc + 32'd3871) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3878);
      acc = acc + m_hist[idx] + 32'd3885;
      idx = (idx + acc + 32'd3892) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3899);
      acc = acc + m_hist[idx] + 32'd3906;
      idx = (idx + acc + 32'd3913) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3920);
      acc = acc + m_hist[idx] + 32'd3927;
      idx = (idx + acc + 32'd3934) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3941);
      acc = acc + m_hist[idx] + 32'd3948;
      idx = (idx + acc + 32'd3955) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3962);
      acc = acc + m_hist[idx] + 32'd3969;
      idx = (idx + acc + 32'd3976) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3983);
      acc = acc + m_hist[idx] + 32'd3990;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3870);
      acc = acc + m_hist[idx] + 32'd3877;
      idx = (idx + acc + 32'd3884) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3891);
      acc = acc + m_hist[idx] + 32'd3898;
      idx = (idx + acc + 32'd3905) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3912);
      acc = acc + m_hist[idx] + 32'd3919;
      idx = (idx + acc + 32'd3926) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3933);
      acc = acc + m_hist[idx] + 32'd3940;
      idx = (idx + acc + 32'd3947) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3954);
      acc = acc + m_hist[idx] + 32'd3961;
      idx = (idx + acc + 32'd3968) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3975);
      acc = acc + m_hist[idx] + 32'd3982;
      idx = (idx + acc + 32'd3989) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3996);
      acc = acc + m_hist[idx] + 32'd4003;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_125 extends comp_base;
    function new(int unsigned id = 32'd125);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3875);
      acc = acc + m_hist[idx] + 32'd3882;
      idx = (idx + acc + 32'd3889) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3896);
      acc = acc + m_hist[idx] + 32'd3903;
      idx = (idx + acc + 32'd3910) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3917);
      acc = acc + m_hist[idx] + 32'd3924;
      idx = (idx + acc + 32'd3931) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3938);
      acc = acc + m_hist[idx] + 32'd3945;
      idx = (idx + acc + 32'd3952) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3959);
      acc = acc + m_hist[idx] + 32'd3966;
      idx = (idx + acc + 32'd3973) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3980);
      acc = acc + m_hist[idx] + 32'd3987;
      idx = (idx + acc + 32'd3994) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4001);
      acc = acc + m_hist[idx] + 32'd4008;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3888);
      acc = acc + m_hist[idx] + 32'd3895;
      idx = (idx + acc + 32'd3902) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3909);
      acc = acc + m_hist[idx] + 32'd3916;
      idx = (idx + acc + 32'd3923) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3930);
      acc = acc + m_hist[idx] + 32'd3937;
      idx = (idx + acc + 32'd3944) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3951);
      acc = acc + m_hist[idx] + 32'd3958;
      idx = (idx + acc + 32'd3965) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3972);
      acc = acc + m_hist[idx] + 32'd3979;
      idx = (idx + acc + 32'd3986) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3993);
      acc = acc + m_hist[idx] + 32'd4000;
      idx = (idx + acc + 32'd4007) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4014);
      acc = acc + m_hist[idx] + 32'd4021;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3901);
      acc = acc + m_hist[idx] + 32'd3908;
      idx = (idx + acc + 32'd3915) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3922);
      acc = acc + m_hist[idx] + 32'd3929;
      idx = (idx + acc + 32'd3936) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3943);
      acc = acc + m_hist[idx] + 32'd3950;
      idx = (idx + acc + 32'd3957) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3964);
      acc = acc + m_hist[idx] + 32'd3971;
      idx = (idx + acc + 32'd3978) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3985);
      acc = acc + m_hist[idx] + 32'd3992;
      idx = (idx + acc + 32'd3999) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4006);
      acc = acc + m_hist[idx] + 32'd4013;
      idx = (idx + acc + 32'd4020) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4027);
      acc = acc + m_hist[idx] + 32'd4034;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_126 extends comp_base;
    function new(int unsigned id = 32'd126);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3906);
      acc = acc + m_hist[idx] + 32'd3913;
      idx = (idx + acc + 32'd3920) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3927);
      acc = acc + m_hist[idx] + 32'd3934;
      idx = (idx + acc + 32'd3941) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3948);
      acc = acc + m_hist[idx] + 32'd3955;
      idx = (idx + acc + 32'd3962) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3969);
      acc = acc + m_hist[idx] + 32'd3976;
      idx = (idx + acc + 32'd3983) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3990);
      acc = acc + m_hist[idx] + 32'd3997;
      idx = (idx + acc + 32'd4004) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4011);
      acc = acc + m_hist[idx] + 32'd4018;
      idx = (idx + acc + 32'd4025) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4032);
      acc = acc + m_hist[idx] + 32'd4039;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3919);
      acc = acc + m_hist[idx] + 32'd3926;
      idx = (idx + acc + 32'd3933) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3940);
      acc = acc + m_hist[idx] + 32'd3947;
      idx = (idx + acc + 32'd3954) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3961);
      acc = acc + m_hist[idx] + 32'd3968;
      idx = (idx + acc + 32'd3975) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3982);
      acc = acc + m_hist[idx] + 32'd3989;
      idx = (idx + acc + 32'd3996) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4003);
      acc = acc + m_hist[idx] + 32'd4010;
      idx = (idx + acc + 32'd4017) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4024);
      acc = acc + m_hist[idx] + 32'd4031;
      idx = (idx + acc + 32'd4038) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4045);
      acc = acc + m_hist[idx] + 32'd4052;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3932);
      acc = acc + m_hist[idx] + 32'd3939;
      idx = (idx + acc + 32'd3946) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3953);
      acc = acc + m_hist[idx] + 32'd3960;
      idx = (idx + acc + 32'd3967) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3974);
      acc = acc + m_hist[idx] + 32'd3981;
      idx = (idx + acc + 32'd3988) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3995);
      acc = acc + m_hist[idx] + 32'd4002;
      idx = (idx + acc + 32'd4009) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4016);
      acc = acc + m_hist[idx] + 32'd4023;
      idx = (idx + acc + 32'd4030) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4037);
      acc = acc + m_hist[idx] + 32'd4044;
      idx = (idx + acc + 32'd4051) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4058);
      acc = acc + m_hist[idx] + 32'd4065;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_127 extends comp_base;
    function new(int unsigned id = 32'd127);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3937);
      acc = acc + m_hist[idx] + 32'd3944;
      idx = (idx + acc + 32'd3951) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3958);
      acc = acc + m_hist[idx] + 32'd3965;
      idx = (idx + acc + 32'd3972) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3979);
      acc = acc + m_hist[idx] + 32'd3986;
      idx = (idx + acc + 32'd3993) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4000);
      acc = acc + m_hist[idx] + 32'd4007;
      idx = (idx + acc + 32'd4014) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4021);
      acc = acc + m_hist[idx] + 32'd4028;
      idx = (idx + acc + 32'd4035) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4042);
      acc = acc + m_hist[idx] + 32'd4049;
      idx = (idx + acc + 32'd4056) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4063);
      acc = acc + m_hist[idx] + 32'd4070;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3950);
      acc = acc + m_hist[idx] + 32'd3957;
      idx = (idx + acc + 32'd3964) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3971);
      acc = acc + m_hist[idx] + 32'd3978;
      idx = (idx + acc + 32'd3985) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3992);
      acc = acc + m_hist[idx] + 32'd3999;
      idx = (idx + acc + 32'd4006) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4013);
      acc = acc + m_hist[idx] + 32'd4020;
      idx = (idx + acc + 32'd4027) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4034);
      acc = acc + m_hist[idx] + 32'd4041;
      idx = (idx + acc + 32'd4048) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4055);
      acc = acc + m_hist[idx] + 32'd4062;
      idx = (idx + acc + 32'd4069) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4076);
      acc = acc + m_hist[idx] + 32'd4083;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3963);
      acc = acc + m_hist[idx] + 32'd3970;
      idx = (idx + acc + 32'd3977) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3984);
      acc = acc + m_hist[idx] + 32'd3991;
      idx = (idx + acc + 32'd3998) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4005);
      acc = acc + m_hist[idx] + 32'd4012;
      idx = (idx + acc + 32'd4019) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4026);
      acc = acc + m_hist[idx] + 32'd4033;
      idx = (idx + acc + 32'd4040) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4047);
      acc = acc + m_hist[idx] + 32'd4054;
      idx = (idx + acc + 32'd4061) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4068);
      acc = acc + m_hist[idx] + 32'd4075;
      idx = (idx + acc + 32'd4082) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4089);
      acc = acc + m_hist[idx] + 32'd4096;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_128 extends comp_base;
    function new(int unsigned id = 32'd128);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3968);
      acc = acc + m_hist[idx] + 32'd3975;
      idx = (idx + acc + 32'd3982) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3989);
      acc = acc + m_hist[idx] + 32'd3996;
      idx = (idx + acc + 32'd4003) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4010);
      acc = acc + m_hist[idx] + 32'd4017;
      idx = (idx + acc + 32'd4024) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4031);
      acc = acc + m_hist[idx] + 32'd4038;
      idx = (idx + acc + 32'd4045) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4052);
      acc = acc + m_hist[idx] + 32'd4059;
      idx = (idx + acc + 32'd4066) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4073);
      acc = acc + m_hist[idx] + 32'd4080;
      idx = (idx + acc + 32'd4087) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4094);
      acc = acc + m_hist[idx] + 32'd4101;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3981);
      acc = acc + m_hist[idx] + 32'd3988;
      idx = (idx + acc + 32'd3995) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4002);
      acc = acc + m_hist[idx] + 32'd4009;
      idx = (idx + acc + 32'd4016) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4023);
      acc = acc + m_hist[idx] + 32'd4030;
      idx = (idx + acc + 32'd4037) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4044);
      acc = acc + m_hist[idx] + 32'd4051;
      idx = (idx + acc + 32'd4058) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4065);
      acc = acc + m_hist[idx] + 32'd4072;
      idx = (idx + acc + 32'd4079) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4086);
      acc = acc + m_hist[idx] + 32'd4093;
      idx = (idx + acc + 32'd4100) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4107);
      acc = acc + m_hist[idx] + 32'd4114;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3994);
      acc = acc + m_hist[idx] + 32'd4001;
      idx = (idx + acc + 32'd4008) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4015);
      acc = acc + m_hist[idx] + 32'd4022;
      idx = (idx + acc + 32'd4029) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4036);
      acc = acc + m_hist[idx] + 32'd4043;
      idx = (idx + acc + 32'd4050) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4057);
      acc = acc + m_hist[idx] + 32'd4064;
      idx = (idx + acc + 32'd4071) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4078);
      acc = acc + m_hist[idx] + 32'd4085;
      idx = (idx + acc + 32'd4092) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4099);
      acc = acc + m_hist[idx] + 32'd4106;
      idx = (idx + acc + 32'd4113) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4120);
      acc = acc + m_hist[idx] + 32'd4127;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_129 extends comp_base;
    function new(int unsigned id = 32'd129);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd3999);
      acc = acc + m_hist[idx] + 32'd4006;
      idx = (idx + acc + 32'd4013) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4020);
      acc = acc + m_hist[idx] + 32'd4027;
      idx = (idx + acc + 32'd4034) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4041);
      acc = acc + m_hist[idx] + 32'd4048;
      idx = (idx + acc + 32'd4055) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4062);
      acc = acc + m_hist[idx] + 32'd4069;
      idx = (idx + acc + 32'd4076) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4083);
      acc = acc + m_hist[idx] + 32'd4090;
      idx = (idx + acc + 32'd4097) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4104);
      acc = acc + m_hist[idx] + 32'd4111;
      idx = (idx + acc + 32'd4118) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4125);
      acc = acc + m_hist[idx] + 32'd4132;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4012);
      acc = acc + m_hist[idx] + 32'd4019;
      idx = (idx + acc + 32'd4026) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4033);
      acc = acc + m_hist[idx] + 32'd4040;
      idx = (idx + acc + 32'd4047) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4054);
      acc = acc + m_hist[idx] + 32'd4061;
      idx = (idx + acc + 32'd4068) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4075);
      acc = acc + m_hist[idx] + 32'd4082;
      idx = (idx + acc + 32'd4089) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4096);
      acc = acc + m_hist[idx] + 32'd4103;
      idx = (idx + acc + 32'd4110) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4117);
      acc = acc + m_hist[idx] + 32'd4124;
      idx = (idx + acc + 32'd4131) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4138);
      acc = acc + m_hist[idx] + 32'd4145;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4025);
      acc = acc + m_hist[idx] + 32'd4032;
      idx = (idx + acc + 32'd4039) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4046);
      acc = acc + m_hist[idx] + 32'd4053;
      idx = (idx + acc + 32'd4060) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4067);
      acc = acc + m_hist[idx] + 32'd4074;
      idx = (idx + acc + 32'd4081) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4088);
      acc = acc + m_hist[idx] + 32'd4095;
      idx = (idx + acc + 32'd4102) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4109);
      acc = acc + m_hist[idx] + 32'd4116;
      idx = (idx + acc + 32'd4123) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4130);
      acc = acc + m_hist[idx] + 32'd4137;
      idx = (idx + acc + 32'd4144) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4151);
      acc = acc + m_hist[idx] + 32'd4158;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_130 extends comp_base;
    function new(int unsigned id = 32'd130);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4030);
      acc = acc + m_hist[idx] + 32'd4037;
      idx = (idx + acc + 32'd4044) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4051);
      acc = acc + m_hist[idx] + 32'd4058;
      idx = (idx + acc + 32'd4065) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4072);
      acc = acc + m_hist[idx] + 32'd4079;
      idx = (idx + acc + 32'd4086) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4093);
      acc = acc + m_hist[idx] + 32'd4100;
      idx = (idx + acc + 32'd4107) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4114);
      acc = acc + m_hist[idx] + 32'd4121;
      idx = (idx + acc + 32'd4128) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4135);
      acc = acc + m_hist[idx] + 32'd4142;
      idx = (idx + acc + 32'd4149) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4156);
      acc = acc + m_hist[idx] + 32'd4163;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4043);
      acc = acc + m_hist[idx] + 32'd4050;
      idx = (idx + acc + 32'd4057) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4064);
      acc = acc + m_hist[idx] + 32'd4071;
      idx = (idx + acc + 32'd4078) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4085);
      acc = acc + m_hist[idx] + 32'd4092;
      idx = (idx + acc + 32'd4099) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4106);
      acc = acc + m_hist[idx] + 32'd4113;
      idx = (idx + acc + 32'd4120) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4127);
      acc = acc + m_hist[idx] + 32'd4134;
      idx = (idx + acc + 32'd4141) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4148);
      acc = acc + m_hist[idx] + 32'd4155;
      idx = (idx + acc + 32'd4162) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4169);
      acc = acc + m_hist[idx] + 32'd4176;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4056);
      acc = acc + m_hist[idx] + 32'd4063;
      idx = (idx + acc + 32'd4070) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4077);
      acc = acc + m_hist[idx] + 32'd4084;
      idx = (idx + acc + 32'd4091) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4098);
      acc = acc + m_hist[idx] + 32'd4105;
      idx = (idx + acc + 32'd4112) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4119);
      acc = acc + m_hist[idx] + 32'd4126;
      idx = (idx + acc + 32'd4133) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4140);
      acc = acc + m_hist[idx] + 32'd4147;
      idx = (idx + acc + 32'd4154) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4161);
      acc = acc + m_hist[idx] + 32'd4168;
      idx = (idx + acc + 32'd4175) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4182);
      acc = acc + m_hist[idx] + 32'd4189;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_131 extends comp_base;
    function new(int unsigned id = 32'd131);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4061);
      acc = acc + m_hist[idx] + 32'd4068;
      idx = (idx + acc + 32'd4075) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4082);
      acc = acc + m_hist[idx] + 32'd4089;
      idx = (idx + acc + 32'd4096) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4103);
      acc = acc + m_hist[idx] + 32'd4110;
      idx = (idx + acc + 32'd4117) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4124);
      acc = acc + m_hist[idx] + 32'd4131;
      idx = (idx + acc + 32'd4138) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4145);
      acc = acc + m_hist[idx] + 32'd4152;
      idx = (idx + acc + 32'd4159) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4166);
      acc = acc + m_hist[idx] + 32'd4173;
      idx = (idx + acc + 32'd4180) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4187);
      acc = acc + m_hist[idx] + 32'd4194;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4074);
      acc = acc + m_hist[idx] + 32'd4081;
      idx = (idx + acc + 32'd4088) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4095);
      acc = acc + m_hist[idx] + 32'd4102;
      idx = (idx + acc + 32'd4109) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4116);
      acc = acc + m_hist[idx] + 32'd4123;
      idx = (idx + acc + 32'd4130) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4137);
      acc = acc + m_hist[idx] + 32'd4144;
      idx = (idx + acc + 32'd4151) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4158);
      acc = acc + m_hist[idx] + 32'd4165;
      idx = (idx + acc + 32'd4172) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4179);
      acc = acc + m_hist[idx] + 32'd4186;
      idx = (idx + acc + 32'd4193) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4200);
      acc = acc + m_hist[idx] + 32'd4207;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4087);
      acc = acc + m_hist[idx] + 32'd4094;
      idx = (idx + acc + 32'd4101) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4108);
      acc = acc + m_hist[idx] + 32'd4115;
      idx = (idx + acc + 32'd4122) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4129);
      acc = acc + m_hist[idx] + 32'd4136;
      idx = (idx + acc + 32'd4143) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4150);
      acc = acc + m_hist[idx] + 32'd4157;
      idx = (idx + acc + 32'd4164) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4171);
      acc = acc + m_hist[idx] + 32'd4178;
      idx = (idx + acc + 32'd4185) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4192);
      acc = acc + m_hist[idx] + 32'd4199;
      idx = (idx + acc + 32'd4206) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4213);
      acc = acc + m_hist[idx] + 32'd4220;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_132 extends comp_base;
    function new(int unsigned id = 32'd132);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4092);
      acc = acc + m_hist[idx] + 32'd4099;
      idx = (idx + acc + 32'd4106) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4113);
      acc = acc + m_hist[idx] + 32'd4120;
      idx = (idx + acc + 32'd4127) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4134);
      acc = acc + m_hist[idx] + 32'd4141;
      idx = (idx + acc + 32'd4148) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4155);
      acc = acc + m_hist[idx] + 32'd4162;
      idx = (idx + acc + 32'd4169) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4176);
      acc = acc + m_hist[idx] + 32'd4183;
      idx = (idx + acc + 32'd4190) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4197);
      acc = acc + m_hist[idx] + 32'd4204;
      idx = (idx + acc + 32'd4211) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4218);
      acc = acc + m_hist[idx] + 32'd4225;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4105);
      acc = acc + m_hist[idx] + 32'd4112;
      idx = (idx + acc + 32'd4119) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4126);
      acc = acc + m_hist[idx] + 32'd4133;
      idx = (idx + acc + 32'd4140) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4147);
      acc = acc + m_hist[idx] + 32'd4154;
      idx = (idx + acc + 32'd4161) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4168);
      acc = acc + m_hist[idx] + 32'd4175;
      idx = (idx + acc + 32'd4182) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4189);
      acc = acc + m_hist[idx] + 32'd4196;
      idx = (idx + acc + 32'd4203) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4210);
      acc = acc + m_hist[idx] + 32'd4217;
      idx = (idx + acc + 32'd4224) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4231);
      acc = acc + m_hist[idx] + 32'd4238;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4118);
      acc = acc + m_hist[idx] + 32'd4125;
      idx = (idx + acc + 32'd4132) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4139);
      acc = acc + m_hist[idx] + 32'd4146;
      idx = (idx + acc + 32'd4153) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4160);
      acc = acc + m_hist[idx] + 32'd4167;
      idx = (idx + acc + 32'd4174) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4181);
      acc = acc + m_hist[idx] + 32'd4188;
      idx = (idx + acc + 32'd4195) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4202);
      acc = acc + m_hist[idx] + 32'd4209;
      idx = (idx + acc + 32'd4216) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4223);
      acc = acc + m_hist[idx] + 32'd4230;
      idx = (idx + acc + 32'd4237) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4244);
      acc = acc + m_hist[idx] + 32'd4251;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_133 extends comp_base;
    function new(int unsigned id = 32'd133);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4123);
      acc = acc + m_hist[idx] + 32'd4130;
      idx = (idx + acc + 32'd4137) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4144);
      acc = acc + m_hist[idx] + 32'd4151;
      idx = (idx + acc + 32'd4158) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4165);
      acc = acc + m_hist[idx] + 32'd4172;
      idx = (idx + acc + 32'd4179) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4186);
      acc = acc + m_hist[idx] + 32'd4193;
      idx = (idx + acc + 32'd4200) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4207);
      acc = acc + m_hist[idx] + 32'd4214;
      idx = (idx + acc + 32'd4221) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4228);
      acc = acc + m_hist[idx] + 32'd4235;
      idx = (idx + acc + 32'd4242) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4249);
      acc = acc + m_hist[idx] + 32'd4256;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4136);
      acc = acc + m_hist[idx] + 32'd4143;
      idx = (idx + acc + 32'd4150) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4157);
      acc = acc + m_hist[idx] + 32'd4164;
      idx = (idx + acc + 32'd4171) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4178);
      acc = acc + m_hist[idx] + 32'd4185;
      idx = (idx + acc + 32'd4192) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4199);
      acc = acc + m_hist[idx] + 32'd4206;
      idx = (idx + acc + 32'd4213) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4220);
      acc = acc + m_hist[idx] + 32'd4227;
      idx = (idx + acc + 32'd4234) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4241);
      acc = acc + m_hist[idx] + 32'd4248;
      idx = (idx + acc + 32'd4255) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4262);
      acc = acc + m_hist[idx] + 32'd4269;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4149);
      acc = acc + m_hist[idx] + 32'd4156;
      idx = (idx + acc + 32'd4163) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4170);
      acc = acc + m_hist[idx] + 32'd4177;
      idx = (idx + acc + 32'd4184) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4191);
      acc = acc + m_hist[idx] + 32'd4198;
      idx = (idx + acc + 32'd4205) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4212);
      acc = acc + m_hist[idx] + 32'd4219;
      idx = (idx + acc + 32'd4226) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4233);
      acc = acc + m_hist[idx] + 32'd4240;
      idx = (idx + acc + 32'd4247) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4254);
      acc = acc + m_hist[idx] + 32'd4261;
      idx = (idx + acc + 32'd4268) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4275);
      acc = acc + m_hist[idx] + 32'd4282;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_134 extends comp_base;
    function new(int unsigned id = 32'd134);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4154);
      acc = acc + m_hist[idx] + 32'd4161;
      idx = (idx + acc + 32'd4168) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4175);
      acc = acc + m_hist[idx] + 32'd4182;
      idx = (idx + acc + 32'd4189) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4196);
      acc = acc + m_hist[idx] + 32'd4203;
      idx = (idx + acc + 32'd4210) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4217);
      acc = acc + m_hist[idx] + 32'd4224;
      idx = (idx + acc + 32'd4231) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4238);
      acc = acc + m_hist[idx] + 32'd4245;
      idx = (idx + acc + 32'd4252) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4259);
      acc = acc + m_hist[idx] + 32'd4266;
      idx = (idx + acc + 32'd4273) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4280);
      acc = acc + m_hist[idx] + 32'd4287;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4167);
      acc = acc + m_hist[idx] + 32'd4174;
      idx = (idx + acc + 32'd4181) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4188);
      acc = acc + m_hist[idx] + 32'd4195;
      idx = (idx + acc + 32'd4202) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4209);
      acc = acc + m_hist[idx] + 32'd4216;
      idx = (idx + acc + 32'd4223) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4230);
      acc = acc + m_hist[idx] + 32'd4237;
      idx = (idx + acc + 32'd4244) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4251);
      acc = acc + m_hist[idx] + 32'd4258;
      idx = (idx + acc + 32'd4265) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4272);
      acc = acc + m_hist[idx] + 32'd4279;
      idx = (idx + acc + 32'd4286) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4293);
      acc = acc + m_hist[idx] + 32'd4300;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4180);
      acc = acc + m_hist[idx] + 32'd4187;
      idx = (idx + acc + 32'd4194) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4201);
      acc = acc + m_hist[idx] + 32'd4208;
      idx = (idx + acc + 32'd4215) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4222);
      acc = acc + m_hist[idx] + 32'd4229;
      idx = (idx + acc + 32'd4236) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4243);
      acc = acc + m_hist[idx] + 32'd4250;
      idx = (idx + acc + 32'd4257) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4264);
      acc = acc + m_hist[idx] + 32'd4271;
      idx = (idx + acc + 32'd4278) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4285);
      acc = acc + m_hist[idx] + 32'd4292;
      idx = (idx + acc + 32'd4299) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4306);
      acc = acc + m_hist[idx] + 32'd4313;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_135 extends comp_base;
    function new(int unsigned id = 32'd135);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4185);
      acc = acc + m_hist[idx] + 32'd4192;
      idx = (idx + acc + 32'd4199) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4206);
      acc = acc + m_hist[idx] + 32'd4213;
      idx = (idx + acc + 32'd4220) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4227);
      acc = acc + m_hist[idx] + 32'd4234;
      idx = (idx + acc + 32'd4241) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4248);
      acc = acc + m_hist[idx] + 32'd4255;
      idx = (idx + acc + 32'd4262) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4269);
      acc = acc + m_hist[idx] + 32'd4276;
      idx = (idx + acc + 32'd4283) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4290);
      acc = acc + m_hist[idx] + 32'd4297;
      idx = (idx + acc + 32'd4304) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4311);
      acc = acc + m_hist[idx] + 32'd4318;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4198);
      acc = acc + m_hist[idx] + 32'd4205;
      idx = (idx + acc + 32'd4212) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4219);
      acc = acc + m_hist[idx] + 32'd4226;
      idx = (idx + acc + 32'd4233) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4240);
      acc = acc + m_hist[idx] + 32'd4247;
      idx = (idx + acc + 32'd4254) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4261);
      acc = acc + m_hist[idx] + 32'd4268;
      idx = (idx + acc + 32'd4275) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4282);
      acc = acc + m_hist[idx] + 32'd4289;
      idx = (idx + acc + 32'd4296) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4303);
      acc = acc + m_hist[idx] + 32'd4310;
      idx = (idx + acc + 32'd4317) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4324);
      acc = acc + m_hist[idx] + 32'd4331;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4211);
      acc = acc + m_hist[idx] + 32'd4218;
      idx = (idx + acc + 32'd4225) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4232);
      acc = acc + m_hist[idx] + 32'd4239;
      idx = (idx + acc + 32'd4246) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4253);
      acc = acc + m_hist[idx] + 32'd4260;
      idx = (idx + acc + 32'd4267) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4274);
      acc = acc + m_hist[idx] + 32'd4281;
      idx = (idx + acc + 32'd4288) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4295);
      acc = acc + m_hist[idx] + 32'd4302;
      idx = (idx + acc + 32'd4309) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4316);
      acc = acc + m_hist[idx] + 32'd4323;
      idx = (idx + acc + 32'd4330) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4337);
      acc = acc + m_hist[idx] + 32'd4344;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_136 extends comp_base;
    function new(int unsigned id = 32'd136);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4216);
      acc = acc + m_hist[idx] + 32'd4223;
      idx = (idx + acc + 32'd4230) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4237);
      acc = acc + m_hist[idx] + 32'd4244;
      idx = (idx + acc + 32'd4251) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4258);
      acc = acc + m_hist[idx] + 32'd4265;
      idx = (idx + acc + 32'd4272) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4279);
      acc = acc + m_hist[idx] + 32'd4286;
      idx = (idx + acc + 32'd4293) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4300);
      acc = acc + m_hist[idx] + 32'd4307;
      idx = (idx + acc + 32'd4314) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4321);
      acc = acc + m_hist[idx] + 32'd4328;
      idx = (idx + acc + 32'd4335) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4342);
      acc = acc + m_hist[idx] + 32'd4349;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4229);
      acc = acc + m_hist[idx] + 32'd4236;
      idx = (idx + acc + 32'd4243) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4250);
      acc = acc + m_hist[idx] + 32'd4257;
      idx = (idx + acc + 32'd4264) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4271);
      acc = acc + m_hist[idx] + 32'd4278;
      idx = (idx + acc + 32'd4285) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4292);
      acc = acc + m_hist[idx] + 32'd4299;
      idx = (idx + acc + 32'd4306) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4313);
      acc = acc + m_hist[idx] + 32'd4320;
      idx = (idx + acc + 32'd4327) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4334);
      acc = acc + m_hist[idx] + 32'd4341;
      idx = (idx + acc + 32'd4348) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4355);
      acc = acc + m_hist[idx] + 32'd4362;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4242);
      acc = acc + m_hist[idx] + 32'd4249;
      idx = (idx + acc + 32'd4256) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4263);
      acc = acc + m_hist[idx] + 32'd4270;
      idx = (idx + acc + 32'd4277) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4284);
      acc = acc + m_hist[idx] + 32'd4291;
      idx = (idx + acc + 32'd4298) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4305);
      acc = acc + m_hist[idx] + 32'd4312;
      idx = (idx + acc + 32'd4319) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4326);
      acc = acc + m_hist[idx] + 32'd4333;
      idx = (idx + acc + 32'd4340) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4347);
      acc = acc + m_hist[idx] + 32'd4354;
      idx = (idx + acc + 32'd4361) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4368);
      acc = acc + m_hist[idx] + 32'd4375;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_137 extends comp_base;
    function new(int unsigned id = 32'd137);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4247);
      acc = acc + m_hist[idx] + 32'd4254;
      idx = (idx + acc + 32'd4261) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4268);
      acc = acc + m_hist[idx] + 32'd4275;
      idx = (idx + acc + 32'd4282) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4289);
      acc = acc + m_hist[idx] + 32'd4296;
      idx = (idx + acc + 32'd4303) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4310);
      acc = acc + m_hist[idx] + 32'd4317;
      idx = (idx + acc + 32'd4324) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4331);
      acc = acc + m_hist[idx] + 32'd4338;
      idx = (idx + acc + 32'd4345) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4352);
      acc = acc + m_hist[idx] + 32'd4359;
      idx = (idx + acc + 32'd4366) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4373);
      acc = acc + m_hist[idx] + 32'd4380;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4260);
      acc = acc + m_hist[idx] + 32'd4267;
      idx = (idx + acc + 32'd4274) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4281);
      acc = acc + m_hist[idx] + 32'd4288;
      idx = (idx + acc + 32'd4295) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4302);
      acc = acc + m_hist[idx] + 32'd4309;
      idx = (idx + acc + 32'd4316) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4323);
      acc = acc + m_hist[idx] + 32'd4330;
      idx = (idx + acc + 32'd4337) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4344);
      acc = acc + m_hist[idx] + 32'd4351;
      idx = (idx + acc + 32'd4358) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4365);
      acc = acc + m_hist[idx] + 32'd4372;
      idx = (idx + acc + 32'd4379) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4386);
      acc = acc + m_hist[idx] + 32'd4393;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4273);
      acc = acc + m_hist[idx] + 32'd4280;
      idx = (idx + acc + 32'd4287) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4294);
      acc = acc + m_hist[idx] + 32'd4301;
      idx = (idx + acc + 32'd4308) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4315);
      acc = acc + m_hist[idx] + 32'd4322;
      idx = (idx + acc + 32'd4329) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4336);
      acc = acc + m_hist[idx] + 32'd4343;
      idx = (idx + acc + 32'd4350) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4357);
      acc = acc + m_hist[idx] + 32'd4364;
      idx = (idx + acc + 32'd4371) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4378);
      acc = acc + m_hist[idx] + 32'd4385;
      idx = (idx + acc + 32'd4392) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4399);
      acc = acc + m_hist[idx] + 32'd4406;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_138 extends comp_base;
    function new(int unsigned id = 32'd138);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4278);
      acc = acc + m_hist[idx] + 32'd4285;
      idx = (idx + acc + 32'd4292) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4299);
      acc = acc + m_hist[idx] + 32'd4306;
      idx = (idx + acc + 32'd4313) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4320);
      acc = acc + m_hist[idx] + 32'd4327;
      idx = (idx + acc + 32'd4334) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4341);
      acc = acc + m_hist[idx] + 32'd4348;
      idx = (idx + acc + 32'd4355) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4362);
      acc = acc + m_hist[idx] + 32'd4369;
      idx = (idx + acc + 32'd4376) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4383);
      acc = acc + m_hist[idx] + 32'd4390;
      idx = (idx + acc + 32'd4397) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4404);
      acc = acc + m_hist[idx] + 32'd4411;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4291);
      acc = acc + m_hist[idx] + 32'd4298;
      idx = (idx + acc + 32'd4305) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4312);
      acc = acc + m_hist[idx] + 32'd4319;
      idx = (idx + acc + 32'd4326) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4333);
      acc = acc + m_hist[idx] + 32'd4340;
      idx = (idx + acc + 32'd4347) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4354);
      acc = acc + m_hist[idx] + 32'd4361;
      idx = (idx + acc + 32'd4368) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4375);
      acc = acc + m_hist[idx] + 32'd4382;
      idx = (idx + acc + 32'd4389) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4396);
      acc = acc + m_hist[idx] + 32'd4403;
      idx = (idx + acc + 32'd4410) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4417);
      acc = acc + m_hist[idx] + 32'd4424;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4304);
      acc = acc + m_hist[idx] + 32'd4311;
      idx = (idx + acc + 32'd4318) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4325);
      acc = acc + m_hist[idx] + 32'd4332;
      idx = (idx + acc + 32'd4339) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4346);
      acc = acc + m_hist[idx] + 32'd4353;
      idx = (idx + acc + 32'd4360) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4367);
      acc = acc + m_hist[idx] + 32'd4374;
      idx = (idx + acc + 32'd4381) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4388);
      acc = acc + m_hist[idx] + 32'd4395;
      idx = (idx + acc + 32'd4402) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4409);
      acc = acc + m_hist[idx] + 32'd4416;
      idx = (idx + acc + 32'd4423) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4430);
      acc = acc + m_hist[idx] + 32'd4437;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_139 extends comp_base;
    function new(int unsigned id = 32'd139);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4309);
      acc = acc + m_hist[idx] + 32'd4316;
      idx = (idx + acc + 32'd4323) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4330);
      acc = acc + m_hist[idx] + 32'd4337;
      idx = (idx + acc + 32'd4344) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4351);
      acc = acc + m_hist[idx] + 32'd4358;
      idx = (idx + acc + 32'd4365) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4372);
      acc = acc + m_hist[idx] + 32'd4379;
      idx = (idx + acc + 32'd4386) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4393);
      acc = acc + m_hist[idx] + 32'd4400;
      idx = (idx + acc + 32'd4407) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4414);
      acc = acc + m_hist[idx] + 32'd4421;
      idx = (idx + acc + 32'd4428) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4435);
      acc = acc + m_hist[idx] + 32'd4442;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4322);
      acc = acc + m_hist[idx] + 32'd4329;
      idx = (idx + acc + 32'd4336) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4343);
      acc = acc + m_hist[idx] + 32'd4350;
      idx = (idx + acc + 32'd4357) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4364);
      acc = acc + m_hist[idx] + 32'd4371;
      idx = (idx + acc + 32'd4378) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4385);
      acc = acc + m_hist[idx] + 32'd4392;
      idx = (idx + acc + 32'd4399) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4406);
      acc = acc + m_hist[idx] + 32'd4413;
      idx = (idx + acc + 32'd4420) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4427);
      acc = acc + m_hist[idx] + 32'd4434;
      idx = (idx + acc + 32'd4441) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4448);
      acc = acc + m_hist[idx] + 32'd4455;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4335);
      acc = acc + m_hist[idx] + 32'd4342;
      idx = (idx + acc + 32'd4349) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4356);
      acc = acc + m_hist[idx] + 32'd4363;
      idx = (idx + acc + 32'd4370) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4377);
      acc = acc + m_hist[idx] + 32'd4384;
      idx = (idx + acc + 32'd4391) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4398);
      acc = acc + m_hist[idx] + 32'd4405;
      idx = (idx + acc + 32'd4412) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4419);
      acc = acc + m_hist[idx] + 32'd4426;
      idx = (idx + acc + 32'd4433) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4440);
      acc = acc + m_hist[idx] + 32'd4447;
      idx = (idx + acc + 32'd4454) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4461);
      acc = acc + m_hist[idx] + 32'd4468;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_140 extends comp_base;
    function new(int unsigned id = 32'd140);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4340);
      acc = acc + m_hist[idx] + 32'd4347;
      idx = (idx + acc + 32'd4354) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4361);
      acc = acc + m_hist[idx] + 32'd4368;
      idx = (idx + acc + 32'd4375) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4382);
      acc = acc + m_hist[idx] + 32'd4389;
      idx = (idx + acc + 32'd4396) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4403);
      acc = acc + m_hist[idx] + 32'd4410;
      idx = (idx + acc + 32'd4417) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4424);
      acc = acc + m_hist[idx] + 32'd4431;
      idx = (idx + acc + 32'd4438) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4445);
      acc = acc + m_hist[idx] + 32'd4452;
      idx = (idx + acc + 32'd4459) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4466);
      acc = acc + m_hist[idx] + 32'd4473;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4353);
      acc = acc + m_hist[idx] + 32'd4360;
      idx = (idx + acc + 32'd4367) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4374);
      acc = acc + m_hist[idx] + 32'd4381;
      idx = (idx + acc + 32'd4388) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4395);
      acc = acc + m_hist[idx] + 32'd4402;
      idx = (idx + acc + 32'd4409) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4416);
      acc = acc + m_hist[idx] + 32'd4423;
      idx = (idx + acc + 32'd4430) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4437);
      acc = acc + m_hist[idx] + 32'd4444;
      idx = (idx + acc + 32'd4451) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4458);
      acc = acc + m_hist[idx] + 32'd4465;
      idx = (idx + acc + 32'd4472) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4479);
      acc = acc + m_hist[idx] + 32'd4486;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4366);
      acc = acc + m_hist[idx] + 32'd4373;
      idx = (idx + acc + 32'd4380) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4387);
      acc = acc + m_hist[idx] + 32'd4394;
      idx = (idx + acc + 32'd4401) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4408);
      acc = acc + m_hist[idx] + 32'd4415;
      idx = (idx + acc + 32'd4422) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4429);
      acc = acc + m_hist[idx] + 32'd4436;
      idx = (idx + acc + 32'd4443) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4450);
      acc = acc + m_hist[idx] + 32'd4457;
      idx = (idx + acc + 32'd4464) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4471);
      acc = acc + m_hist[idx] + 32'd4478;
      idx = (idx + acc + 32'd4485) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4492);
      acc = acc + m_hist[idx] + 32'd4499;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_141 extends comp_base;
    function new(int unsigned id = 32'd141);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4371);
      acc = acc + m_hist[idx] + 32'd4378;
      idx = (idx + acc + 32'd4385) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4392);
      acc = acc + m_hist[idx] + 32'd4399;
      idx = (idx + acc + 32'd4406) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4413);
      acc = acc + m_hist[idx] + 32'd4420;
      idx = (idx + acc + 32'd4427) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4434);
      acc = acc + m_hist[idx] + 32'd4441;
      idx = (idx + acc + 32'd4448) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4455);
      acc = acc + m_hist[idx] + 32'd4462;
      idx = (idx + acc + 32'd4469) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4476);
      acc = acc + m_hist[idx] + 32'd4483;
      idx = (idx + acc + 32'd4490) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4497);
      acc = acc + m_hist[idx] + 32'd4504;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4384);
      acc = acc + m_hist[idx] + 32'd4391;
      idx = (idx + acc + 32'd4398) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4405);
      acc = acc + m_hist[idx] + 32'd4412;
      idx = (idx + acc + 32'd4419) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4426);
      acc = acc + m_hist[idx] + 32'd4433;
      idx = (idx + acc + 32'd4440) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4447);
      acc = acc + m_hist[idx] + 32'd4454;
      idx = (idx + acc + 32'd4461) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4468);
      acc = acc + m_hist[idx] + 32'd4475;
      idx = (idx + acc + 32'd4482) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4489);
      acc = acc + m_hist[idx] + 32'd4496;
      idx = (idx + acc + 32'd4503) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4510);
      acc = acc + m_hist[idx] + 32'd4517;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4397);
      acc = acc + m_hist[idx] + 32'd4404;
      idx = (idx + acc + 32'd4411) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4418);
      acc = acc + m_hist[idx] + 32'd4425;
      idx = (idx + acc + 32'd4432) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4439);
      acc = acc + m_hist[idx] + 32'd4446;
      idx = (idx + acc + 32'd4453) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4460);
      acc = acc + m_hist[idx] + 32'd4467;
      idx = (idx + acc + 32'd4474) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4481);
      acc = acc + m_hist[idx] + 32'd4488;
      idx = (idx + acc + 32'd4495) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4502);
      acc = acc + m_hist[idx] + 32'd4509;
      idx = (idx + acc + 32'd4516) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4523);
      acc = acc + m_hist[idx] + 32'd4530;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_142 extends comp_base;
    function new(int unsigned id = 32'd142);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4402);
      acc = acc + m_hist[idx] + 32'd4409;
      idx = (idx + acc + 32'd4416) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4423);
      acc = acc + m_hist[idx] + 32'd4430;
      idx = (idx + acc + 32'd4437) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4444);
      acc = acc + m_hist[idx] + 32'd4451;
      idx = (idx + acc + 32'd4458) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4465);
      acc = acc + m_hist[idx] + 32'd4472;
      idx = (idx + acc + 32'd4479) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4486);
      acc = acc + m_hist[idx] + 32'd4493;
      idx = (idx + acc + 32'd4500) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4507);
      acc = acc + m_hist[idx] + 32'd4514;
      idx = (idx + acc + 32'd4521) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4528);
      acc = acc + m_hist[idx] + 32'd4535;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4415);
      acc = acc + m_hist[idx] + 32'd4422;
      idx = (idx + acc + 32'd4429) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4436);
      acc = acc + m_hist[idx] + 32'd4443;
      idx = (idx + acc + 32'd4450) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4457);
      acc = acc + m_hist[idx] + 32'd4464;
      idx = (idx + acc + 32'd4471) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4478);
      acc = acc + m_hist[idx] + 32'd4485;
      idx = (idx + acc + 32'd4492) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4499);
      acc = acc + m_hist[idx] + 32'd4506;
      idx = (idx + acc + 32'd4513) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4520);
      acc = acc + m_hist[idx] + 32'd4527;
      idx = (idx + acc + 32'd4534) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4541);
      acc = acc + m_hist[idx] + 32'd4548;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4428);
      acc = acc + m_hist[idx] + 32'd4435;
      idx = (idx + acc + 32'd4442) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4449);
      acc = acc + m_hist[idx] + 32'd4456;
      idx = (idx + acc + 32'd4463) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4470);
      acc = acc + m_hist[idx] + 32'd4477;
      idx = (idx + acc + 32'd4484) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4491);
      acc = acc + m_hist[idx] + 32'd4498;
      idx = (idx + acc + 32'd4505) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4512);
      acc = acc + m_hist[idx] + 32'd4519;
      idx = (idx + acc + 32'd4526) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4533);
      acc = acc + m_hist[idx] + 32'd4540;
      idx = (idx + acc + 32'd4547) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4554);
      acc = acc + m_hist[idx] + 32'd4561;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_143 extends comp_base;
    function new(int unsigned id = 32'd143);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4433);
      acc = acc + m_hist[idx] + 32'd4440;
      idx = (idx + acc + 32'd4447) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4454);
      acc = acc + m_hist[idx] + 32'd4461;
      idx = (idx + acc + 32'd4468) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4475);
      acc = acc + m_hist[idx] + 32'd4482;
      idx = (idx + acc + 32'd4489) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4496);
      acc = acc + m_hist[idx] + 32'd4503;
      idx = (idx + acc + 32'd4510) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4517);
      acc = acc + m_hist[idx] + 32'd4524;
      idx = (idx + acc + 32'd4531) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4538);
      acc = acc + m_hist[idx] + 32'd4545;
      idx = (idx + acc + 32'd4552) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4559);
      acc = acc + m_hist[idx] + 32'd4566;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4446);
      acc = acc + m_hist[idx] + 32'd4453;
      idx = (idx + acc + 32'd4460) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4467);
      acc = acc + m_hist[idx] + 32'd4474;
      idx = (idx + acc + 32'd4481) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4488);
      acc = acc + m_hist[idx] + 32'd4495;
      idx = (idx + acc + 32'd4502) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4509);
      acc = acc + m_hist[idx] + 32'd4516;
      idx = (idx + acc + 32'd4523) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4530);
      acc = acc + m_hist[idx] + 32'd4537;
      idx = (idx + acc + 32'd4544) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4551);
      acc = acc + m_hist[idx] + 32'd4558;
      idx = (idx + acc + 32'd4565) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4572);
      acc = acc + m_hist[idx] + 32'd4579;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4459);
      acc = acc + m_hist[idx] + 32'd4466;
      idx = (idx + acc + 32'd4473) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4480);
      acc = acc + m_hist[idx] + 32'd4487;
      idx = (idx + acc + 32'd4494) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4501);
      acc = acc + m_hist[idx] + 32'd4508;
      idx = (idx + acc + 32'd4515) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4522);
      acc = acc + m_hist[idx] + 32'd4529;
      idx = (idx + acc + 32'd4536) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4543);
      acc = acc + m_hist[idx] + 32'd4550;
      idx = (idx + acc + 32'd4557) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4564);
      acc = acc + m_hist[idx] + 32'd4571;
      idx = (idx + acc + 32'd4578) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4585);
      acc = acc + m_hist[idx] + 32'd4592;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_144 extends comp_base;
    function new(int unsigned id = 32'd144);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4464);
      acc = acc + m_hist[idx] + 32'd4471;
      idx = (idx + acc + 32'd4478) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4485);
      acc = acc + m_hist[idx] + 32'd4492;
      idx = (idx + acc + 32'd4499) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4506);
      acc = acc + m_hist[idx] + 32'd4513;
      idx = (idx + acc + 32'd4520) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4527);
      acc = acc + m_hist[idx] + 32'd4534;
      idx = (idx + acc + 32'd4541) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4548);
      acc = acc + m_hist[idx] + 32'd4555;
      idx = (idx + acc + 32'd4562) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4569);
      acc = acc + m_hist[idx] + 32'd4576;
      idx = (idx + acc + 32'd4583) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4590);
      acc = acc + m_hist[idx] + 32'd4597;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4477);
      acc = acc + m_hist[idx] + 32'd4484;
      idx = (idx + acc + 32'd4491) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4498);
      acc = acc + m_hist[idx] + 32'd4505;
      idx = (idx + acc + 32'd4512) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4519);
      acc = acc + m_hist[idx] + 32'd4526;
      idx = (idx + acc + 32'd4533) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4540);
      acc = acc + m_hist[idx] + 32'd4547;
      idx = (idx + acc + 32'd4554) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4561);
      acc = acc + m_hist[idx] + 32'd4568;
      idx = (idx + acc + 32'd4575) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4582);
      acc = acc + m_hist[idx] + 32'd4589;
      idx = (idx + acc + 32'd4596) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4603);
      acc = acc + m_hist[idx] + 32'd4610;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4490);
      acc = acc + m_hist[idx] + 32'd4497;
      idx = (idx + acc + 32'd4504) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4511);
      acc = acc + m_hist[idx] + 32'd4518;
      idx = (idx + acc + 32'd4525) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4532);
      acc = acc + m_hist[idx] + 32'd4539;
      idx = (idx + acc + 32'd4546) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4553);
      acc = acc + m_hist[idx] + 32'd4560;
      idx = (idx + acc + 32'd4567) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4574);
      acc = acc + m_hist[idx] + 32'd4581;
      idx = (idx + acc + 32'd4588) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4595);
      acc = acc + m_hist[idx] + 32'd4602;
      idx = (idx + acc + 32'd4609) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4616);
      acc = acc + m_hist[idx] + 32'd4623;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_145 extends comp_base;
    function new(int unsigned id = 32'd145);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4495);
      acc = acc + m_hist[idx] + 32'd4502;
      idx = (idx + acc + 32'd4509) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4516);
      acc = acc + m_hist[idx] + 32'd4523;
      idx = (idx + acc + 32'd4530) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4537);
      acc = acc + m_hist[idx] + 32'd4544;
      idx = (idx + acc + 32'd4551) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4558);
      acc = acc + m_hist[idx] + 32'd4565;
      idx = (idx + acc + 32'd4572) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4579);
      acc = acc + m_hist[idx] + 32'd4586;
      idx = (idx + acc + 32'd4593) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4600);
      acc = acc + m_hist[idx] + 32'd4607;
      idx = (idx + acc + 32'd4614) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4621);
      acc = acc + m_hist[idx] + 32'd4628;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4508);
      acc = acc + m_hist[idx] + 32'd4515;
      idx = (idx + acc + 32'd4522) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4529);
      acc = acc + m_hist[idx] + 32'd4536;
      idx = (idx + acc + 32'd4543) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4550);
      acc = acc + m_hist[idx] + 32'd4557;
      idx = (idx + acc + 32'd4564) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4571);
      acc = acc + m_hist[idx] + 32'd4578;
      idx = (idx + acc + 32'd4585) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4592);
      acc = acc + m_hist[idx] + 32'd4599;
      idx = (idx + acc + 32'd4606) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4613);
      acc = acc + m_hist[idx] + 32'd4620;
      idx = (idx + acc + 32'd4627) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4634);
      acc = acc + m_hist[idx] + 32'd4641;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4521);
      acc = acc + m_hist[idx] + 32'd4528;
      idx = (idx + acc + 32'd4535) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4542);
      acc = acc + m_hist[idx] + 32'd4549;
      idx = (idx + acc + 32'd4556) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4563);
      acc = acc + m_hist[idx] + 32'd4570;
      idx = (idx + acc + 32'd4577) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4584);
      acc = acc + m_hist[idx] + 32'd4591;
      idx = (idx + acc + 32'd4598) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4605);
      acc = acc + m_hist[idx] + 32'd4612;
      idx = (idx + acc + 32'd4619) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4626);
      acc = acc + m_hist[idx] + 32'd4633;
      idx = (idx + acc + 32'd4640) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4647);
      acc = acc + m_hist[idx] + 32'd4654;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_146 extends comp_base;
    function new(int unsigned id = 32'd146);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4526);
      acc = acc + m_hist[idx] + 32'd4533;
      idx = (idx + acc + 32'd4540) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4547);
      acc = acc + m_hist[idx] + 32'd4554;
      idx = (idx + acc + 32'd4561) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4568);
      acc = acc + m_hist[idx] + 32'd4575;
      idx = (idx + acc + 32'd4582) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4589);
      acc = acc + m_hist[idx] + 32'd4596;
      idx = (idx + acc + 32'd4603) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4610);
      acc = acc + m_hist[idx] + 32'd4617;
      idx = (idx + acc + 32'd4624) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4631);
      acc = acc + m_hist[idx] + 32'd4638;
      idx = (idx + acc + 32'd4645) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4652);
      acc = acc + m_hist[idx] + 32'd4659;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4539);
      acc = acc + m_hist[idx] + 32'd4546;
      idx = (idx + acc + 32'd4553) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4560);
      acc = acc + m_hist[idx] + 32'd4567;
      idx = (idx + acc + 32'd4574) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4581);
      acc = acc + m_hist[idx] + 32'd4588;
      idx = (idx + acc + 32'd4595) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4602);
      acc = acc + m_hist[idx] + 32'd4609;
      idx = (idx + acc + 32'd4616) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4623);
      acc = acc + m_hist[idx] + 32'd4630;
      idx = (idx + acc + 32'd4637) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4644);
      acc = acc + m_hist[idx] + 32'd4651;
      idx = (idx + acc + 32'd4658) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4665);
      acc = acc + m_hist[idx] + 32'd4672;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4552);
      acc = acc + m_hist[idx] + 32'd4559;
      idx = (idx + acc + 32'd4566) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4573);
      acc = acc + m_hist[idx] + 32'd4580;
      idx = (idx + acc + 32'd4587) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4594);
      acc = acc + m_hist[idx] + 32'd4601;
      idx = (idx + acc + 32'd4608) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4615);
      acc = acc + m_hist[idx] + 32'd4622;
      idx = (idx + acc + 32'd4629) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4636);
      acc = acc + m_hist[idx] + 32'd4643;
      idx = (idx + acc + 32'd4650) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4657);
      acc = acc + m_hist[idx] + 32'd4664;
      idx = (idx + acc + 32'd4671) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4678);
      acc = acc + m_hist[idx] + 32'd4685;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_147 extends comp_base;
    function new(int unsigned id = 32'd147);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4557);
      acc = acc + m_hist[idx] + 32'd4564;
      idx = (idx + acc + 32'd4571) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4578);
      acc = acc + m_hist[idx] + 32'd4585;
      idx = (idx + acc + 32'd4592) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4599);
      acc = acc + m_hist[idx] + 32'd4606;
      idx = (idx + acc + 32'd4613) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4620);
      acc = acc + m_hist[idx] + 32'd4627;
      idx = (idx + acc + 32'd4634) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4641);
      acc = acc + m_hist[idx] + 32'd4648;
      idx = (idx + acc + 32'd4655) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4662);
      acc = acc + m_hist[idx] + 32'd4669;
      idx = (idx + acc + 32'd4676) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4683);
      acc = acc + m_hist[idx] + 32'd4690;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4570);
      acc = acc + m_hist[idx] + 32'd4577;
      idx = (idx + acc + 32'd4584) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4591);
      acc = acc + m_hist[idx] + 32'd4598;
      idx = (idx + acc + 32'd4605) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4612);
      acc = acc + m_hist[idx] + 32'd4619;
      idx = (idx + acc + 32'd4626) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4633);
      acc = acc + m_hist[idx] + 32'd4640;
      idx = (idx + acc + 32'd4647) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4654);
      acc = acc + m_hist[idx] + 32'd4661;
      idx = (idx + acc + 32'd4668) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4675);
      acc = acc + m_hist[idx] + 32'd4682;
      idx = (idx + acc + 32'd4689) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4696);
      acc = acc + m_hist[idx] + 32'd4703;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4583);
      acc = acc + m_hist[idx] + 32'd4590;
      idx = (idx + acc + 32'd4597) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4604);
      acc = acc + m_hist[idx] + 32'd4611;
      idx = (idx + acc + 32'd4618) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4625);
      acc = acc + m_hist[idx] + 32'd4632;
      idx = (idx + acc + 32'd4639) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4646);
      acc = acc + m_hist[idx] + 32'd4653;
      idx = (idx + acc + 32'd4660) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4667);
      acc = acc + m_hist[idx] + 32'd4674;
      idx = (idx + acc + 32'd4681) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4688);
      acc = acc + m_hist[idx] + 32'd4695;
      idx = (idx + acc + 32'd4702) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4709);
      acc = acc + m_hist[idx] + 32'd4716;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_148 extends comp_base;
    function new(int unsigned id = 32'd148);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4588);
      acc = acc + m_hist[idx] + 32'd4595;
      idx = (idx + acc + 32'd4602) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4609);
      acc = acc + m_hist[idx] + 32'd4616;
      idx = (idx + acc + 32'd4623) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4630);
      acc = acc + m_hist[idx] + 32'd4637;
      idx = (idx + acc + 32'd4644) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4651);
      acc = acc + m_hist[idx] + 32'd4658;
      idx = (idx + acc + 32'd4665) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4672);
      acc = acc + m_hist[idx] + 32'd4679;
      idx = (idx + acc + 32'd4686) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4693);
      acc = acc + m_hist[idx] + 32'd4700;
      idx = (idx + acc + 32'd4707) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4714);
      acc = acc + m_hist[idx] + 32'd4721;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4601);
      acc = acc + m_hist[idx] + 32'd4608;
      idx = (idx + acc + 32'd4615) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4622);
      acc = acc + m_hist[idx] + 32'd4629;
      idx = (idx + acc + 32'd4636) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4643);
      acc = acc + m_hist[idx] + 32'd4650;
      idx = (idx + acc + 32'd4657) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4664);
      acc = acc + m_hist[idx] + 32'd4671;
      idx = (idx + acc + 32'd4678) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4685);
      acc = acc + m_hist[idx] + 32'd4692;
      idx = (idx + acc + 32'd4699) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4706);
      acc = acc + m_hist[idx] + 32'd4713;
      idx = (idx + acc + 32'd4720) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4727);
      acc = acc + m_hist[idx] + 32'd4734;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4614);
      acc = acc + m_hist[idx] + 32'd4621;
      idx = (idx + acc + 32'd4628) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4635);
      acc = acc + m_hist[idx] + 32'd4642;
      idx = (idx + acc + 32'd4649) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4656);
      acc = acc + m_hist[idx] + 32'd4663;
      idx = (idx + acc + 32'd4670) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4677);
      acc = acc + m_hist[idx] + 32'd4684;
      idx = (idx + acc + 32'd4691) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4698);
      acc = acc + m_hist[idx] + 32'd4705;
      idx = (idx + acc + 32'd4712) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4719);
      acc = acc + m_hist[idx] + 32'd4726;
      idx = (idx + acc + 32'd4733) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4740);
      acc = acc + m_hist[idx] + 32'd4747;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_149 extends comp_base;
    function new(int unsigned id = 32'd149);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4619);
      acc = acc + m_hist[idx] + 32'd4626;
      idx = (idx + acc + 32'd4633) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4640);
      acc = acc + m_hist[idx] + 32'd4647;
      idx = (idx + acc + 32'd4654) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4661);
      acc = acc + m_hist[idx] + 32'd4668;
      idx = (idx + acc + 32'd4675) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4682);
      acc = acc + m_hist[idx] + 32'd4689;
      idx = (idx + acc + 32'd4696) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4703);
      acc = acc + m_hist[idx] + 32'd4710;
      idx = (idx + acc + 32'd4717) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4724);
      acc = acc + m_hist[idx] + 32'd4731;
      idx = (idx + acc + 32'd4738) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4745);
      acc = acc + m_hist[idx] + 32'd4752;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4632);
      acc = acc + m_hist[idx] + 32'd4639;
      idx = (idx + acc + 32'd4646) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4653);
      acc = acc + m_hist[idx] + 32'd4660;
      idx = (idx + acc + 32'd4667) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4674);
      acc = acc + m_hist[idx] + 32'd4681;
      idx = (idx + acc + 32'd4688) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4695);
      acc = acc + m_hist[idx] + 32'd4702;
      idx = (idx + acc + 32'd4709) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4716);
      acc = acc + m_hist[idx] + 32'd4723;
      idx = (idx + acc + 32'd4730) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4737);
      acc = acc + m_hist[idx] + 32'd4744;
      idx = (idx + acc + 32'd4751) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4758);
      acc = acc + m_hist[idx] + 32'd4765;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4645);
      acc = acc + m_hist[idx] + 32'd4652;
      idx = (idx + acc + 32'd4659) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4666);
      acc = acc + m_hist[idx] + 32'd4673;
      idx = (idx + acc + 32'd4680) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4687);
      acc = acc + m_hist[idx] + 32'd4694;
      idx = (idx + acc + 32'd4701) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4708);
      acc = acc + m_hist[idx] + 32'd4715;
      idx = (idx + acc + 32'd4722) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4729);
      acc = acc + m_hist[idx] + 32'd4736;
      idx = (idx + acc + 32'd4743) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4750);
      acc = acc + m_hist[idx] + 32'd4757;
      idx = (idx + acc + 32'd4764) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4771);
      acc = acc + m_hist[idx] + 32'd4778;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_150 extends comp_base;
    function new(int unsigned id = 32'd150);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4650);
      acc = acc + m_hist[idx] + 32'd4657;
      idx = (idx + acc + 32'd4664) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4671);
      acc = acc + m_hist[idx] + 32'd4678;
      idx = (idx + acc + 32'd4685) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4692);
      acc = acc + m_hist[idx] + 32'd4699;
      idx = (idx + acc + 32'd4706) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4713);
      acc = acc + m_hist[idx] + 32'd4720;
      idx = (idx + acc + 32'd4727) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4734);
      acc = acc + m_hist[idx] + 32'd4741;
      idx = (idx + acc + 32'd4748) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4755);
      acc = acc + m_hist[idx] + 32'd4762;
      idx = (idx + acc + 32'd4769) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4776);
      acc = acc + m_hist[idx] + 32'd4783;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4663);
      acc = acc + m_hist[idx] + 32'd4670;
      idx = (idx + acc + 32'd4677) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4684);
      acc = acc + m_hist[idx] + 32'd4691;
      idx = (idx + acc + 32'd4698) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4705);
      acc = acc + m_hist[idx] + 32'd4712;
      idx = (idx + acc + 32'd4719) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4726);
      acc = acc + m_hist[idx] + 32'd4733;
      idx = (idx + acc + 32'd4740) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4747);
      acc = acc + m_hist[idx] + 32'd4754;
      idx = (idx + acc + 32'd4761) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4768);
      acc = acc + m_hist[idx] + 32'd4775;
      idx = (idx + acc + 32'd4782) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4789);
      acc = acc + m_hist[idx] + 32'd4796;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4676);
      acc = acc + m_hist[idx] + 32'd4683;
      idx = (idx + acc + 32'd4690) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4697);
      acc = acc + m_hist[idx] + 32'd4704;
      idx = (idx + acc + 32'd4711) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4718);
      acc = acc + m_hist[idx] + 32'd4725;
      idx = (idx + acc + 32'd4732) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4739);
      acc = acc + m_hist[idx] + 32'd4746;
      idx = (idx + acc + 32'd4753) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4760);
      acc = acc + m_hist[idx] + 32'd4767;
      idx = (idx + acc + 32'd4774) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4781);
      acc = acc + m_hist[idx] + 32'd4788;
      idx = (idx + acc + 32'd4795) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4802);
      acc = acc + m_hist[idx] + 32'd4809;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_151 extends comp_base;
    function new(int unsigned id = 32'd151);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4681);
      acc = acc + m_hist[idx] + 32'd4688;
      idx = (idx + acc + 32'd4695) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4702);
      acc = acc + m_hist[idx] + 32'd4709;
      idx = (idx + acc + 32'd4716) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4723);
      acc = acc + m_hist[idx] + 32'd4730;
      idx = (idx + acc + 32'd4737) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4744);
      acc = acc + m_hist[idx] + 32'd4751;
      idx = (idx + acc + 32'd4758) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4765);
      acc = acc + m_hist[idx] + 32'd4772;
      idx = (idx + acc + 32'd4779) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4786);
      acc = acc + m_hist[idx] + 32'd4793;
      idx = (idx + acc + 32'd4800) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4807);
      acc = acc + m_hist[idx] + 32'd4814;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4694);
      acc = acc + m_hist[idx] + 32'd4701;
      idx = (idx + acc + 32'd4708) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4715);
      acc = acc + m_hist[idx] + 32'd4722;
      idx = (idx + acc + 32'd4729) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4736);
      acc = acc + m_hist[idx] + 32'd4743;
      idx = (idx + acc + 32'd4750) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4757);
      acc = acc + m_hist[idx] + 32'd4764;
      idx = (idx + acc + 32'd4771) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4778);
      acc = acc + m_hist[idx] + 32'd4785;
      idx = (idx + acc + 32'd4792) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4799);
      acc = acc + m_hist[idx] + 32'd4806;
      idx = (idx + acc + 32'd4813) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4820);
      acc = acc + m_hist[idx] + 32'd4827;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4707);
      acc = acc + m_hist[idx] + 32'd4714;
      idx = (idx + acc + 32'd4721) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4728);
      acc = acc + m_hist[idx] + 32'd4735;
      idx = (idx + acc + 32'd4742) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4749);
      acc = acc + m_hist[idx] + 32'd4756;
      idx = (idx + acc + 32'd4763) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4770);
      acc = acc + m_hist[idx] + 32'd4777;
      idx = (idx + acc + 32'd4784) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4791);
      acc = acc + m_hist[idx] + 32'd4798;
      idx = (idx + acc + 32'd4805) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4812);
      acc = acc + m_hist[idx] + 32'd4819;
      idx = (idx + acc + 32'd4826) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4833);
      acc = acc + m_hist[idx] + 32'd4840;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_152 extends comp_base;
    function new(int unsigned id = 32'd152);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4712);
      acc = acc + m_hist[idx] + 32'd4719;
      idx = (idx + acc + 32'd4726) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4733);
      acc = acc + m_hist[idx] + 32'd4740;
      idx = (idx + acc + 32'd4747) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4754);
      acc = acc + m_hist[idx] + 32'd4761;
      idx = (idx + acc + 32'd4768) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4775);
      acc = acc + m_hist[idx] + 32'd4782;
      idx = (idx + acc + 32'd4789) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4796);
      acc = acc + m_hist[idx] + 32'd4803;
      idx = (idx + acc + 32'd4810) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4817);
      acc = acc + m_hist[idx] + 32'd4824;
      idx = (idx + acc + 32'd4831) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4838);
      acc = acc + m_hist[idx] + 32'd4845;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4725);
      acc = acc + m_hist[idx] + 32'd4732;
      idx = (idx + acc + 32'd4739) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4746);
      acc = acc + m_hist[idx] + 32'd4753;
      idx = (idx + acc + 32'd4760) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4767);
      acc = acc + m_hist[idx] + 32'd4774;
      idx = (idx + acc + 32'd4781) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4788);
      acc = acc + m_hist[idx] + 32'd4795;
      idx = (idx + acc + 32'd4802) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4809);
      acc = acc + m_hist[idx] + 32'd4816;
      idx = (idx + acc + 32'd4823) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4830);
      acc = acc + m_hist[idx] + 32'd4837;
      idx = (idx + acc + 32'd4844) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4851);
      acc = acc + m_hist[idx] + 32'd4858;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4738);
      acc = acc + m_hist[idx] + 32'd4745;
      idx = (idx + acc + 32'd4752) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4759);
      acc = acc + m_hist[idx] + 32'd4766;
      idx = (idx + acc + 32'd4773) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4780);
      acc = acc + m_hist[idx] + 32'd4787;
      idx = (idx + acc + 32'd4794) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4801);
      acc = acc + m_hist[idx] + 32'd4808;
      idx = (idx + acc + 32'd4815) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4822);
      acc = acc + m_hist[idx] + 32'd4829;
      idx = (idx + acc + 32'd4836) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4843);
      acc = acc + m_hist[idx] + 32'd4850;
      idx = (idx + acc + 32'd4857) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4864);
      acc = acc + m_hist[idx] + 32'd4871;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_153 extends comp_base;
    function new(int unsigned id = 32'd153);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4743);
      acc = acc + m_hist[idx] + 32'd4750;
      idx = (idx + acc + 32'd4757) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4764);
      acc = acc + m_hist[idx] + 32'd4771;
      idx = (idx + acc + 32'd4778) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4785);
      acc = acc + m_hist[idx] + 32'd4792;
      idx = (idx + acc + 32'd4799) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4806);
      acc = acc + m_hist[idx] + 32'd4813;
      idx = (idx + acc + 32'd4820) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4827);
      acc = acc + m_hist[idx] + 32'd4834;
      idx = (idx + acc + 32'd4841) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4848);
      acc = acc + m_hist[idx] + 32'd4855;
      idx = (idx + acc + 32'd4862) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4869);
      acc = acc + m_hist[idx] + 32'd4876;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4756);
      acc = acc + m_hist[idx] + 32'd4763;
      idx = (idx + acc + 32'd4770) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4777);
      acc = acc + m_hist[idx] + 32'd4784;
      idx = (idx + acc + 32'd4791) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4798);
      acc = acc + m_hist[idx] + 32'd4805;
      idx = (idx + acc + 32'd4812) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4819);
      acc = acc + m_hist[idx] + 32'd4826;
      idx = (idx + acc + 32'd4833) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4840);
      acc = acc + m_hist[idx] + 32'd4847;
      idx = (idx + acc + 32'd4854) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4861);
      acc = acc + m_hist[idx] + 32'd4868;
      idx = (idx + acc + 32'd4875) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4882);
      acc = acc + m_hist[idx] + 32'd4889;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4769);
      acc = acc + m_hist[idx] + 32'd4776;
      idx = (idx + acc + 32'd4783) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4790);
      acc = acc + m_hist[idx] + 32'd4797;
      idx = (idx + acc + 32'd4804) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4811);
      acc = acc + m_hist[idx] + 32'd4818;
      idx = (idx + acc + 32'd4825) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4832);
      acc = acc + m_hist[idx] + 32'd4839;
      idx = (idx + acc + 32'd4846) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4853);
      acc = acc + m_hist[idx] + 32'd4860;
      idx = (idx + acc + 32'd4867) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4874);
      acc = acc + m_hist[idx] + 32'd4881;
      idx = (idx + acc + 32'd4888) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4895);
      acc = acc + m_hist[idx] + 32'd4902;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_154 extends comp_base;
    function new(int unsigned id = 32'd154);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4774);
      acc = acc + m_hist[idx] + 32'd4781;
      idx = (idx + acc + 32'd4788) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4795);
      acc = acc + m_hist[idx] + 32'd4802;
      idx = (idx + acc + 32'd4809) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4816);
      acc = acc + m_hist[idx] + 32'd4823;
      idx = (idx + acc + 32'd4830) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4837);
      acc = acc + m_hist[idx] + 32'd4844;
      idx = (idx + acc + 32'd4851) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4858);
      acc = acc + m_hist[idx] + 32'd4865;
      idx = (idx + acc + 32'd4872) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4879);
      acc = acc + m_hist[idx] + 32'd4886;
      idx = (idx + acc + 32'd4893) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4900);
      acc = acc + m_hist[idx] + 32'd4907;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4787);
      acc = acc + m_hist[idx] + 32'd4794;
      idx = (idx + acc + 32'd4801) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4808);
      acc = acc + m_hist[idx] + 32'd4815;
      idx = (idx + acc + 32'd4822) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4829);
      acc = acc + m_hist[idx] + 32'd4836;
      idx = (idx + acc + 32'd4843) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4850);
      acc = acc + m_hist[idx] + 32'd4857;
      idx = (idx + acc + 32'd4864) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4871);
      acc = acc + m_hist[idx] + 32'd4878;
      idx = (idx + acc + 32'd4885) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4892);
      acc = acc + m_hist[idx] + 32'd4899;
      idx = (idx + acc + 32'd4906) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4913);
      acc = acc + m_hist[idx] + 32'd4920;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4800);
      acc = acc + m_hist[idx] + 32'd4807;
      idx = (idx + acc + 32'd4814) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4821);
      acc = acc + m_hist[idx] + 32'd4828;
      idx = (idx + acc + 32'd4835) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4842);
      acc = acc + m_hist[idx] + 32'd4849;
      idx = (idx + acc + 32'd4856) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4863);
      acc = acc + m_hist[idx] + 32'd4870;
      idx = (idx + acc + 32'd4877) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4884);
      acc = acc + m_hist[idx] + 32'd4891;
      idx = (idx + acc + 32'd4898) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4905);
      acc = acc + m_hist[idx] + 32'd4912;
      idx = (idx + acc + 32'd4919) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4926);
      acc = acc + m_hist[idx] + 32'd4933;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_155 extends comp_base;
    function new(int unsigned id = 32'd155);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4805);
      acc = acc + m_hist[idx] + 32'd4812;
      idx = (idx + acc + 32'd4819) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4826);
      acc = acc + m_hist[idx] + 32'd4833;
      idx = (idx + acc + 32'd4840) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4847);
      acc = acc + m_hist[idx] + 32'd4854;
      idx = (idx + acc + 32'd4861) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4868);
      acc = acc + m_hist[idx] + 32'd4875;
      idx = (idx + acc + 32'd4882) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4889);
      acc = acc + m_hist[idx] + 32'd4896;
      idx = (idx + acc + 32'd4903) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4910);
      acc = acc + m_hist[idx] + 32'd4917;
      idx = (idx + acc + 32'd4924) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4931);
      acc = acc + m_hist[idx] + 32'd4938;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4818);
      acc = acc + m_hist[idx] + 32'd4825;
      idx = (idx + acc + 32'd4832) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4839);
      acc = acc + m_hist[idx] + 32'd4846;
      idx = (idx + acc + 32'd4853) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4860);
      acc = acc + m_hist[idx] + 32'd4867;
      idx = (idx + acc + 32'd4874) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4881);
      acc = acc + m_hist[idx] + 32'd4888;
      idx = (idx + acc + 32'd4895) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4902);
      acc = acc + m_hist[idx] + 32'd4909;
      idx = (idx + acc + 32'd4916) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4923);
      acc = acc + m_hist[idx] + 32'd4930;
      idx = (idx + acc + 32'd4937) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4944);
      acc = acc + m_hist[idx] + 32'd4951;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4831);
      acc = acc + m_hist[idx] + 32'd4838;
      idx = (idx + acc + 32'd4845) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4852);
      acc = acc + m_hist[idx] + 32'd4859;
      idx = (idx + acc + 32'd4866) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4873);
      acc = acc + m_hist[idx] + 32'd4880;
      idx = (idx + acc + 32'd4887) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4894);
      acc = acc + m_hist[idx] + 32'd4901;
      idx = (idx + acc + 32'd4908) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4915);
      acc = acc + m_hist[idx] + 32'd4922;
      idx = (idx + acc + 32'd4929) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4936);
      acc = acc + m_hist[idx] + 32'd4943;
      idx = (idx + acc + 32'd4950) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4957);
      acc = acc + m_hist[idx] + 32'd4964;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_156 extends comp_base;
    function new(int unsigned id = 32'd156);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4836);
      acc = acc + m_hist[idx] + 32'd4843;
      idx = (idx + acc + 32'd4850) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4857);
      acc = acc + m_hist[idx] + 32'd4864;
      idx = (idx + acc + 32'd4871) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4878);
      acc = acc + m_hist[idx] + 32'd4885;
      idx = (idx + acc + 32'd4892) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4899);
      acc = acc + m_hist[idx] + 32'd4906;
      idx = (idx + acc + 32'd4913) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4920);
      acc = acc + m_hist[idx] + 32'd4927;
      idx = (idx + acc + 32'd4934) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4941);
      acc = acc + m_hist[idx] + 32'd4948;
      idx = (idx + acc + 32'd4955) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4962);
      acc = acc + m_hist[idx] + 32'd4969;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4849);
      acc = acc + m_hist[idx] + 32'd4856;
      idx = (idx + acc + 32'd4863) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4870);
      acc = acc + m_hist[idx] + 32'd4877;
      idx = (idx + acc + 32'd4884) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4891);
      acc = acc + m_hist[idx] + 32'd4898;
      idx = (idx + acc + 32'd4905) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4912);
      acc = acc + m_hist[idx] + 32'd4919;
      idx = (idx + acc + 32'd4926) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4933);
      acc = acc + m_hist[idx] + 32'd4940;
      idx = (idx + acc + 32'd4947) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4954);
      acc = acc + m_hist[idx] + 32'd4961;
      idx = (idx + acc + 32'd4968) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4975);
      acc = acc + m_hist[idx] + 32'd4982;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4862);
      acc = acc + m_hist[idx] + 32'd4869;
      idx = (idx + acc + 32'd4876) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4883);
      acc = acc + m_hist[idx] + 32'd4890;
      idx = (idx + acc + 32'd4897) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4904);
      acc = acc + m_hist[idx] + 32'd4911;
      idx = (idx + acc + 32'd4918) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4925);
      acc = acc + m_hist[idx] + 32'd4932;
      idx = (idx + acc + 32'd4939) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4946);
      acc = acc + m_hist[idx] + 32'd4953;
      idx = (idx + acc + 32'd4960) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4967);
      acc = acc + m_hist[idx] + 32'd4974;
      idx = (idx + acc + 32'd4981) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4988);
      acc = acc + m_hist[idx] + 32'd4995;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_157 extends comp_base;
    function new(int unsigned id = 32'd157);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4867);
      acc = acc + m_hist[idx] + 32'd4874;
      idx = (idx + acc + 32'd4881) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4888);
      acc = acc + m_hist[idx] + 32'd4895;
      idx = (idx + acc + 32'd4902) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4909);
      acc = acc + m_hist[idx] + 32'd4916;
      idx = (idx + acc + 32'd4923) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4930);
      acc = acc + m_hist[idx] + 32'd4937;
      idx = (idx + acc + 32'd4944) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4951);
      acc = acc + m_hist[idx] + 32'd4958;
      idx = (idx + acc + 32'd4965) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4972);
      acc = acc + m_hist[idx] + 32'd4979;
      idx = (idx + acc + 32'd4986) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4993);
      acc = acc + m_hist[idx] + 32'd5000;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4880);
      acc = acc + m_hist[idx] + 32'd4887;
      idx = (idx + acc + 32'd4894) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4901);
      acc = acc + m_hist[idx] + 32'd4908;
      idx = (idx + acc + 32'd4915) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4922);
      acc = acc + m_hist[idx] + 32'd4929;
      idx = (idx + acc + 32'd4936) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4943);
      acc = acc + m_hist[idx] + 32'd4950;
      idx = (idx + acc + 32'd4957) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4964);
      acc = acc + m_hist[idx] + 32'd4971;
      idx = (idx + acc + 32'd4978) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4985);
      acc = acc + m_hist[idx] + 32'd4992;
      idx = (idx + acc + 32'd4999) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5006);
      acc = acc + m_hist[idx] + 32'd5013;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4893);
      acc = acc + m_hist[idx] + 32'd4900;
      idx = (idx + acc + 32'd4907) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4914);
      acc = acc + m_hist[idx] + 32'd4921;
      idx = (idx + acc + 32'd4928) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4935);
      acc = acc + m_hist[idx] + 32'd4942;
      idx = (idx + acc + 32'd4949) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4956);
      acc = acc + m_hist[idx] + 32'd4963;
      idx = (idx + acc + 32'd4970) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4977);
      acc = acc + m_hist[idx] + 32'd4984;
      idx = (idx + acc + 32'd4991) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4998);
      acc = acc + m_hist[idx] + 32'd5005;
      idx = (idx + acc + 32'd5012) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5019);
      acc = acc + m_hist[idx] + 32'd5026;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_158 extends comp_base;
    function new(int unsigned id = 32'd158);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4898);
      acc = acc + m_hist[idx] + 32'd4905;
      idx = (idx + acc + 32'd4912) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4919);
      acc = acc + m_hist[idx] + 32'd4926;
      idx = (idx + acc + 32'd4933) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4940);
      acc = acc + m_hist[idx] + 32'd4947;
      idx = (idx + acc + 32'd4954) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4961);
      acc = acc + m_hist[idx] + 32'd4968;
      idx = (idx + acc + 32'd4975) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4982);
      acc = acc + m_hist[idx] + 32'd4989;
      idx = (idx + acc + 32'd4996) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5003);
      acc = acc + m_hist[idx] + 32'd5010;
      idx = (idx + acc + 32'd5017) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5024);
      acc = acc + m_hist[idx] + 32'd5031;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4911);
      acc = acc + m_hist[idx] + 32'd4918;
      idx = (idx + acc + 32'd4925) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4932);
      acc = acc + m_hist[idx] + 32'd4939;
      idx = (idx + acc + 32'd4946) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4953);
      acc = acc + m_hist[idx] + 32'd4960;
      idx = (idx + acc + 32'd4967) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4974);
      acc = acc + m_hist[idx] + 32'd4981;
      idx = (idx + acc + 32'd4988) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4995);
      acc = acc + m_hist[idx] + 32'd5002;
      idx = (idx + acc + 32'd5009) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5016);
      acc = acc + m_hist[idx] + 32'd5023;
      idx = (idx + acc + 32'd5030) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5037);
      acc = acc + m_hist[idx] + 32'd5044;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4924);
      acc = acc + m_hist[idx] + 32'd4931;
      idx = (idx + acc + 32'd4938) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4945);
      acc = acc + m_hist[idx] + 32'd4952;
      idx = (idx + acc + 32'd4959) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4966);
      acc = acc + m_hist[idx] + 32'd4973;
      idx = (idx + acc + 32'd4980) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4987);
      acc = acc + m_hist[idx] + 32'd4994;
      idx = (idx + acc + 32'd5001) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5008);
      acc = acc + m_hist[idx] + 32'd5015;
      idx = (idx + acc + 32'd5022) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5029);
      acc = acc + m_hist[idx] + 32'd5036;
      idx = (idx + acc + 32'd5043) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5050);
      acc = acc + m_hist[idx] + 32'd5057;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_159 extends comp_base;
    function new(int unsigned id = 32'd159);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4929);
      acc = acc + m_hist[idx] + 32'd4936;
      idx = (idx + acc + 32'd4943) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4950);
      acc = acc + m_hist[idx] + 32'd4957;
      idx = (idx + acc + 32'd4964) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4971);
      acc = acc + m_hist[idx] + 32'd4978;
      idx = (idx + acc + 32'd4985) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4992);
      acc = acc + m_hist[idx] + 32'd4999;
      idx = (idx + acc + 32'd5006) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5013);
      acc = acc + m_hist[idx] + 32'd5020;
      idx = (idx + acc + 32'd5027) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5034);
      acc = acc + m_hist[idx] + 32'd5041;
      idx = (idx + acc + 32'd5048) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5055);
      acc = acc + m_hist[idx] + 32'd5062;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4942);
      acc = acc + m_hist[idx] + 32'd4949;
      idx = (idx + acc + 32'd4956) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4963);
      acc = acc + m_hist[idx] + 32'd4970;
      idx = (idx + acc + 32'd4977) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4984);
      acc = acc + m_hist[idx] + 32'd4991;
      idx = (idx + acc + 32'd4998) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5005);
      acc = acc + m_hist[idx] + 32'd5012;
      idx = (idx + acc + 32'd5019) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5026);
      acc = acc + m_hist[idx] + 32'd5033;
      idx = (idx + acc + 32'd5040) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5047);
      acc = acc + m_hist[idx] + 32'd5054;
      idx = (idx + acc + 32'd5061) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5068);
      acc = acc + m_hist[idx] + 32'd5075;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4955);
      acc = acc + m_hist[idx] + 32'd4962;
      idx = (idx + acc + 32'd4969) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4976);
      acc = acc + m_hist[idx] + 32'd4983;
      idx = (idx + acc + 32'd4990) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4997);
      acc = acc + m_hist[idx] + 32'd5004;
      idx = (idx + acc + 32'd5011) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5018);
      acc = acc + m_hist[idx] + 32'd5025;
      idx = (idx + acc + 32'd5032) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5039);
      acc = acc + m_hist[idx] + 32'd5046;
      idx = (idx + acc + 32'd5053) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5060);
      acc = acc + m_hist[idx] + 32'd5067;
      idx = (idx + acc + 32'd5074) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5081);
      acc = acc + m_hist[idx] + 32'd5088;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_160 extends comp_base;
    function new(int unsigned id = 32'd160);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4960);
      acc = acc + m_hist[idx] + 32'd4967;
      idx = (idx + acc + 32'd4974) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4981);
      acc = acc + m_hist[idx] + 32'd4988;
      idx = (idx + acc + 32'd4995) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5002);
      acc = acc + m_hist[idx] + 32'd5009;
      idx = (idx + acc + 32'd5016) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5023);
      acc = acc + m_hist[idx] + 32'd5030;
      idx = (idx + acc + 32'd5037) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5044);
      acc = acc + m_hist[idx] + 32'd5051;
      idx = (idx + acc + 32'd5058) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5065);
      acc = acc + m_hist[idx] + 32'd5072;
      idx = (idx + acc + 32'd5079) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5086);
      acc = acc + m_hist[idx] + 32'd5093;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4973);
      acc = acc + m_hist[idx] + 32'd4980;
      idx = (idx + acc + 32'd4987) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4994);
      acc = acc + m_hist[idx] + 32'd5001;
      idx = (idx + acc + 32'd5008) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5015);
      acc = acc + m_hist[idx] + 32'd5022;
      idx = (idx + acc + 32'd5029) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5036);
      acc = acc + m_hist[idx] + 32'd5043;
      idx = (idx + acc + 32'd5050) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5057);
      acc = acc + m_hist[idx] + 32'd5064;
      idx = (idx + acc + 32'd5071) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5078);
      acc = acc + m_hist[idx] + 32'd5085;
      idx = (idx + acc + 32'd5092) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5099);
      acc = acc + m_hist[idx] + 32'd5106;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4986);
      acc = acc + m_hist[idx] + 32'd4993;
      idx = (idx + acc + 32'd5000) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5007);
      acc = acc + m_hist[idx] + 32'd5014;
      idx = (idx + acc + 32'd5021) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5028);
      acc = acc + m_hist[idx] + 32'd5035;
      idx = (idx + acc + 32'd5042) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5049);
      acc = acc + m_hist[idx] + 32'd5056;
      idx = (idx + acc + 32'd5063) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5070);
      acc = acc + m_hist[idx] + 32'd5077;
      idx = (idx + acc + 32'd5084) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5091);
      acc = acc + m_hist[idx] + 32'd5098;
      idx = (idx + acc + 32'd5105) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5112);
      acc = acc + m_hist[idx] + 32'd5119;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_161 extends comp_base;
    function new(int unsigned id = 32'd161);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd4991);
      acc = acc + m_hist[idx] + 32'd4998;
      idx = (idx + acc + 32'd5005) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5012);
      acc = acc + m_hist[idx] + 32'd5019;
      idx = (idx + acc + 32'd5026) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5033);
      acc = acc + m_hist[idx] + 32'd5040;
      idx = (idx + acc + 32'd5047) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5054);
      acc = acc + m_hist[idx] + 32'd5061;
      idx = (idx + acc + 32'd5068) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5075);
      acc = acc + m_hist[idx] + 32'd5082;
      idx = (idx + acc + 32'd5089) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5096);
      acc = acc + m_hist[idx] + 32'd5103;
      idx = (idx + acc + 32'd5110) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5117);
      acc = acc + m_hist[idx] + 32'd5124;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5004);
      acc = acc + m_hist[idx] + 32'd5011;
      idx = (idx + acc + 32'd5018) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5025);
      acc = acc + m_hist[idx] + 32'd5032;
      idx = (idx + acc + 32'd5039) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5046);
      acc = acc + m_hist[idx] + 32'd5053;
      idx = (idx + acc + 32'd5060) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5067);
      acc = acc + m_hist[idx] + 32'd5074;
      idx = (idx + acc + 32'd5081) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5088);
      acc = acc + m_hist[idx] + 32'd5095;
      idx = (idx + acc + 32'd5102) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5109);
      acc = acc + m_hist[idx] + 32'd5116;
      idx = (idx + acc + 32'd5123) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5130);
      acc = acc + m_hist[idx] + 32'd5137;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5017);
      acc = acc + m_hist[idx] + 32'd5024;
      idx = (idx + acc + 32'd5031) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5038);
      acc = acc + m_hist[idx] + 32'd5045;
      idx = (idx + acc + 32'd5052) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5059);
      acc = acc + m_hist[idx] + 32'd5066;
      idx = (idx + acc + 32'd5073) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5080);
      acc = acc + m_hist[idx] + 32'd5087;
      idx = (idx + acc + 32'd5094) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5101);
      acc = acc + m_hist[idx] + 32'd5108;
      idx = (idx + acc + 32'd5115) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5122);
      acc = acc + m_hist[idx] + 32'd5129;
      idx = (idx + acc + 32'd5136) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5143);
      acc = acc + m_hist[idx] + 32'd5150;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_162 extends comp_base;
    function new(int unsigned id = 32'd162);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5022);
      acc = acc + m_hist[idx] + 32'd5029;
      idx = (idx + acc + 32'd5036) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5043);
      acc = acc + m_hist[idx] + 32'd5050;
      idx = (idx + acc + 32'd5057) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5064);
      acc = acc + m_hist[idx] + 32'd5071;
      idx = (idx + acc + 32'd5078) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5085);
      acc = acc + m_hist[idx] + 32'd5092;
      idx = (idx + acc + 32'd5099) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5106);
      acc = acc + m_hist[idx] + 32'd5113;
      idx = (idx + acc + 32'd5120) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5127);
      acc = acc + m_hist[idx] + 32'd5134;
      idx = (idx + acc + 32'd5141) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5148);
      acc = acc + m_hist[idx] + 32'd5155;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5035);
      acc = acc + m_hist[idx] + 32'd5042;
      idx = (idx + acc + 32'd5049) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5056);
      acc = acc + m_hist[idx] + 32'd5063;
      idx = (idx + acc + 32'd5070) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5077);
      acc = acc + m_hist[idx] + 32'd5084;
      idx = (idx + acc + 32'd5091) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5098);
      acc = acc + m_hist[idx] + 32'd5105;
      idx = (idx + acc + 32'd5112) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5119);
      acc = acc + m_hist[idx] + 32'd5126;
      idx = (idx + acc + 32'd5133) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5140);
      acc = acc + m_hist[idx] + 32'd5147;
      idx = (idx + acc + 32'd5154) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5161);
      acc = acc + m_hist[idx] + 32'd5168;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5048);
      acc = acc + m_hist[idx] + 32'd5055;
      idx = (idx + acc + 32'd5062) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5069);
      acc = acc + m_hist[idx] + 32'd5076;
      idx = (idx + acc + 32'd5083) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5090);
      acc = acc + m_hist[idx] + 32'd5097;
      idx = (idx + acc + 32'd5104) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5111);
      acc = acc + m_hist[idx] + 32'd5118;
      idx = (idx + acc + 32'd5125) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5132);
      acc = acc + m_hist[idx] + 32'd5139;
      idx = (idx + acc + 32'd5146) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5153);
      acc = acc + m_hist[idx] + 32'd5160;
      idx = (idx + acc + 32'd5167) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5174);
      acc = acc + m_hist[idx] + 32'd5181;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_163 extends comp_base;
    function new(int unsigned id = 32'd163);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5053);
      acc = acc + m_hist[idx] + 32'd5060;
      idx = (idx + acc + 32'd5067) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5074);
      acc = acc + m_hist[idx] + 32'd5081;
      idx = (idx + acc + 32'd5088) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5095);
      acc = acc + m_hist[idx] + 32'd5102;
      idx = (idx + acc + 32'd5109) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5116);
      acc = acc + m_hist[idx] + 32'd5123;
      idx = (idx + acc + 32'd5130) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5137);
      acc = acc + m_hist[idx] + 32'd5144;
      idx = (idx + acc + 32'd5151) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5158);
      acc = acc + m_hist[idx] + 32'd5165;
      idx = (idx + acc + 32'd5172) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5179);
      acc = acc + m_hist[idx] + 32'd5186;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5066);
      acc = acc + m_hist[idx] + 32'd5073;
      idx = (idx + acc + 32'd5080) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5087);
      acc = acc + m_hist[idx] + 32'd5094;
      idx = (idx + acc + 32'd5101) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5108);
      acc = acc + m_hist[idx] + 32'd5115;
      idx = (idx + acc + 32'd5122) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5129);
      acc = acc + m_hist[idx] + 32'd5136;
      idx = (idx + acc + 32'd5143) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5150);
      acc = acc + m_hist[idx] + 32'd5157;
      idx = (idx + acc + 32'd5164) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5171);
      acc = acc + m_hist[idx] + 32'd5178;
      idx = (idx + acc + 32'd5185) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5192);
      acc = acc + m_hist[idx] + 32'd5199;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5079);
      acc = acc + m_hist[idx] + 32'd5086;
      idx = (idx + acc + 32'd5093) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5100);
      acc = acc + m_hist[idx] + 32'd5107;
      idx = (idx + acc + 32'd5114) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5121);
      acc = acc + m_hist[idx] + 32'd5128;
      idx = (idx + acc + 32'd5135) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5142);
      acc = acc + m_hist[idx] + 32'd5149;
      idx = (idx + acc + 32'd5156) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5163);
      acc = acc + m_hist[idx] + 32'd5170;
      idx = (idx + acc + 32'd5177) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5184);
      acc = acc + m_hist[idx] + 32'd5191;
      idx = (idx + acc + 32'd5198) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5205);
      acc = acc + m_hist[idx] + 32'd5212;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_164 extends comp_base;
    function new(int unsigned id = 32'd164);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5084);
      acc = acc + m_hist[idx] + 32'd5091;
      idx = (idx + acc + 32'd5098) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5105);
      acc = acc + m_hist[idx] + 32'd5112;
      idx = (idx + acc + 32'd5119) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5126);
      acc = acc + m_hist[idx] + 32'd5133;
      idx = (idx + acc + 32'd5140) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5147);
      acc = acc + m_hist[idx] + 32'd5154;
      idx = (idx + acc + 32'd5161) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5168);
      acc = acc + m_hist[idx] + 32'd5175;
      idx = (idx + acc + 32'd5182) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5189);
      acc = acc + m_hist[idx] + 32'd5196;
      idx = (idx + acc + 32'd5203) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5210);
      acc = acc + m_hist[idx] + 32'd5217;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5097);
      acc = acc + m_hist[idx] + 32'd5104;
      idx = (idx + acc + 32'd5111) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5118);
      acc = acc + m_hist[idx] + 32'd5125;
      idx = (idx + acc + 32'd5132) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5139);
      acc = acc + m_hist[idx] + 32'd5146;
      idx = (idx + acc + 32'd5153) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5160);
      acc = acc + m_hist[idx] + 32'd5167;
      idx = (idx + acc + 32'd5174) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5181);
      acc = acc + m_hist[idx] + 32'd5188;
      idx = (idx + acc + 32'd5195) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5202);
      acc = acc + m_hist[idx] + 32'd5209;
      idx = (idx + acc + 32'd5216) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5223);
      acc = acc + m_hist[idx] + 32'd5230;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5110);
      acc = acc + m_hist[idx] + 32'd5117;
      idx = (idx + acc + 32'd5124) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5131);
      acc = acc + m_hist[idx] + 32'd5138;
      idx = (idx + acc + 32'd5145) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5152);
      acc = acc + m_hist[idx] + 32'd5159;
      idx = (idx + acc + 32'd5166) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5173);
      acc = acc + m_hist[idx] + 32'd5180;
      idx = (idx + acc + 32'd5187) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5194);
      acc = acc + m_hist[idx] + 32'd5201;
      idx = (idx + acc + 32'd5208) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5215);
      acc = acc + m_hist[idx] + 32'd5222;
      idx = (idx + acc + 32'd5229) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5236);
      acc = acc + m_hist[idx] + 32'd5243;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_165 extends comp_base;
    function new(int unsigned id = 32'd165);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5115);
      acc = acc + m_hist[idx] + 32'd5122;
      idx = (idx + acc + 32'd5129) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5136);
      acc = acc + m_hist[idx] + 32'd5143;
      idx = (idx + acc + 32'd5150) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5157);
      acc = acc + m_hist[idx] + 32'd5164;
      idx = (idx + acc + 32'd5171) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5178);
      acc = acc + m_hist[idx] + 32'd5185;
      idx = (idx + acc + 32'd5192) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5199);
      acc = acc + m_hist[idx] + 32'd5206;
      idx = (idx + acc + 32'd5213) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5220);
      acc = acc + m_hist[idx] + 32'd5227;
      idx = (idx + acc + 32'd5234) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5241);
      acc = acc + m_hist[idx] + 32'd5248;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5128);
      acc = acc + m_hist[idx] + 32'd5135;
      idx = (idx + acc + 32'd5142) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5149);
      acc = acc + m_hist[idx] + 32'd5156;
      idx = (idx + acc + 32'd5163) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5170);
      acc = acc + m_hist[idx] + 32'd5177;
      idx = (idx + acc + 32'd5184) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5191);
      acc = acc + m_hist[idx] + 32'd5198;
      idx = (idx + acc + 32'd5205) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5212);
      acc = acc + m_hist[idx] + 32'd5219;
      idx = (idx + acc + 32'd5226) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5233);
      acc = acc + m_hist[idx] + 32'd5240;
      idx = (idx + acc + 32'd5247) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5254);
      acc = acc + m_hist[idx] + 32'd5261;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5141);
      acc = acc + m_hist[idx] + 32'd5148;
      idx = (idx + acc + 32'd5155) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5162);
      acc = acc + m_hist[idx] + 32'd5169;
      idx = (idx + acc + 32'd5176) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5183);
      acc = acc + m_hist[idx] + 32'd5190;
      idx = (idx + acc + 32'd5197) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5204);
      acc = acc + m_hist[idx] + 32'd5211;
      idx = (idx + acc + 32'd5218) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5225);
      acc = acc + m_hist[idx] + 32'd5232;
      idx = (idx + acc + 32'd5239) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5246);
      acc = acc + m_hist[idx] + 32'd5253;
      idx = (idx + acc + 32'd5260) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5267);
      acc = acc + m_hist[idx] + 32'd5274;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_166 extends comp_base;
    function new(int unsigned id = 32'd166);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5146);
      acc = acc + m_hist[idx] + 32'd5153;
      idx = (idx + acc + 32'd5160) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5167);
      acc = acc + m_hist[idx] + 32'd5174;
      idx = (idx + acc + 32'd5181) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5188);
      acc = acc + m_hist[idx] + 32'd5195;
      idx = (idx + acc + 32'd5202) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5209);
      acc = acc + m_hist[idx] + 32'd5216;
      idx = (idx + acc + 32'd5223) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5230);
      acc = acc + m_hist[idx] + 32'd5237;
      idx = (idx + acc + 32'd5244) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5251);
      acc = acc + m_hist[idx] + 32'd5258;
      idx = (idx + acc + 32'd5265) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5272);
      acc = acc + m_hist[idx] + 32'd5279;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5159);
      acc = acc + m_hist[idx] + 32'd5166;
      idx = (idx + acc + 32'd5173) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5180);
      acc = acc + m_hist[idx] + 32'd5187;
      idx = (idx + acc + 32'd5194) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5201);
      acc = acc + m_hist[idx] + 32'd5208;
      idx = (idx + acc + 32'd5215) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5222);
      acc = acc + m_hist[idx] + 32'd5229;
      idx = (idx + acc + 32'd5236) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5243);
      acc = acc + m_hist[idx] + 32'd5250;
      idx = (idx + acc + 32'd5257) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5264);
      acc = acc + m_hist[idx] + 32'd5271;
      idx = (idx + acc + 32'd5278) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5285);
      acc = acc + m_hist[idx] + 32'd5292;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5172);
      acc = acc + m_hist[idx] + 32'd5179;
      idx = (idx + acc + 32'd5186) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5193);
      acc = acc + m_hist[idx] + 32'd5200;
      idx = (idx + acc + 32'd5207) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5214);
      acc = acc + m_hist[idx] + 32'd5221;
      idx = (idx + acc + 32'd5228) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5235);
      acc = acc + m_hist[idx] + 32'd5242;
      idx = (idx + acc + 32'd5249) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5256);
      acc = acc + m_hist[idx] + 32'd5263;
      idx = (idx + acc + 32'd5270) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5277);
      acc = acc + m_hist[idx] + 32'd5284;
      idx = (idx + acc + 32'd5291) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5298);
      acc = acc + m_hist[idx] + 32'd5305;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_167 extends comp_base;
    function new(int unsigned id = 32'd167);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5177);
      acc = acc + m_hist[idx] + 32'd5184;
      idx = (idx + acc + 32'd5191) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5198);
      acc = acc + m_hist[idx] + 32'd5205;
      idx = (idx + acc + 32'd5212) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5219);
      acc = acc + m_hist[idx] + 32'd5226;
      idx = (idx + acc + 32'd5233) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5240);
      acc = acc + m_hist[idx] + 32'd5247;
      idx = (idx + acc + 32'd5254) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5261);
      acc = acc + m_hist[idx] + 32'd5268;
      idx = (idx + acc + 32'd5275) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5282);
      acc = acc + m_hist[idx] + 32'd5289;
      idx = (idx + acc + 32'd5296) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5303);
      acc = acc + m_hist[idx] + 32'd5310;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5190);
      acc = acc + m_hist[idx] + 32'd5197;
      idx = (idx + acc + 32'd5204) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5211);
      acc = acc + m_hist[idx] + 32'd5218;
      idx = (idx + acc + 32'd5225) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5232);
      acc = acc + m_hist[idx] + 32'd5239;
      idx = (idx + acc + 32'd5246) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5253);
      acc = acc + m_hist[idx] + 32'd5260;
      idx = (idx + acc + 32'd5267) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5274);
      acc = acc + m_hist[idx] + 32'd5281;
      idx = (idx + acc + 32'd5288) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5295);
      acc = acc + m_hist[idx] + 32'd5302;
      idx = (idx + acc + 32'd5309) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5316);
      acc = acc + m_hist[idx] + 32'd5323;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5203);
      acc = acc + m_hist[idx] + 32'd5210;
      idx = (idx + acc + 32'd5217) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5224);
      acc = acc + m_hist[idx] + 32'd5231;
      idx = (idx + acc + 32'd5238) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5245);
      acc = acc + m_hist[idx] + 32'd5252;
      idx = (idx + acc + 32'd5259) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5266);
      acc = acc + m_hist[idx] + 32'd5273;
      idx = (idx + acc + 32'd5280) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5287);
      acc = acc + m_hist[idx] + 32'd5294;
      idx = (idx + acc + 32'd5301) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5308);
      acc = acc + m_hist[idx] + 32'd5315;
      idx = (idx + acc + 32'd5322) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5329);
      acc = acc + m_hist[idx] + 32'd5336;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_168 extends comp_base;
    function new(int unsigned id = 32'd168);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5208);
      acc = acc + m_hist[idx] + 32'd5215;
      idx = (idx + acc + 32'd5222) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5229);
      acc = acc + m_hist[idx] + 32'd5236;
      idx = (idx + acc + 32'd5243) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5250);
      acc = acc + m_hist[idx] + 32'd5257;
      idx = (idx + acc + 32'd5264) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5271);
      acc = acc + m_hist[idx] + 32'd5278;
      idx = (idx + acc + 32'd5285) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5292);
      acc = acc + m_hist[idx] + 32'd5299;
      idx = (idx + acc + 32'd5306) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5313);
      acc = acc + m_hist[idx] + 32'd5320;
      idx = (idx + acc + 32'd5327) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5334);
      acc = acc + m_hist[idx] + 32'd5341;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5221);
      acc = acc + m_hist[idx] + 32'd5228;
      idx = (idx + acc + 32'd5235) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5242);
      acc = acc + m_hist[idx] + 32'd5249;
      idx = (idx + acc + 32'd5256) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5263);
      acc = acc + m_hist[idx] + 32'd5270;
      idx = (idx + acc + 32'd5277) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5284);
      acc = acc + m_hist[idx] + 32'd5291;
      idx = (idx + acc + 32'd5298) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5305);
      acc = acc + m_hist[idx] + 32'd5312;
      idx = (idx + acc + 32'd5319) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5326);
      acc = acc + m_hist[idx] + 32'd5333;
      idx = (idx + acc + 32'd5340) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5347);
      acc = acc + m_hist[idx] + 32'd5354;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5234);
      acc = acc + m_hist[idx] + 32'd5241;
      idx = (idx + acc + 32'd5248) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5255);
      acc = acc + m_hist[idx] + 32'd5262;
      idx = (idx + acc + 32'd5269) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5276);
      acc = acc + m_hist[idx] + 32'd5283;
      idx = (idx + acc + 32'd5290) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5297);
      acc = acc + m_hist[idx] + 32'd5304;
      idx = (idx + acc + 32'd5311) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5318);
      acc = acc + m_hist[idx] + 32'd5325;
      idx = (idx + acc + 32'd5332) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5339);
      acc = acc + m_hist[idx] + 32'd5346;
      idx = (idx + acc + 32'd5353) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5360);
      acc = acc + m_hist[idx] + 32'd5367;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_169 extends comp_base;
    function new(int unsigned id = 32'd169);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5239);
      acc = acc + m_hist[idx] + 32'd5246;
      idx = (idx + acc + 32'd5253) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5260);
      acc = acc + m_hist[idx] + 32'd5267;
      idx = (idx + acc + 32'd5274) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5281);
      acc = acc + m_hist[idx] + 32'd5288;
      idx = (idx + acc + 32'd5295) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5302);
      acc = acc + m_hist[idx] + 32'd5309;
      idx = (idx + acc + 32'd5316) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5323);
      acc = acc + m_hist[idx] + 32'd5330;
      idx = (idx + acc + 32'd5337) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5344);
      acc = acc + m_hist[idx] + 32'd5351;
      idx = (idx + acc + 32'd5358) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5365);
      acc = acc + m_hist[idx] + 32'd5372;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5252);
      acc = acc + m_hist[idx] + 32'd5259;
      idx = (idx + acc + 32'd5266) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5273);
      acc = acc + m_hist[idx] + 32'd5280;
      idx = (idx + acc + 32'd5287) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5294);
      acc = acc + m_hist[idx] + 32'd5301;
      idx = (idx + acc + 32'd5308) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5315);
      acc = acc + m_hist[idx] + 32'd5322;
      idx = (idx + acc + 32'd5329) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5336);
      acc = acc + m_hist[idx] + 32'd5343;
      idx = (idx + acc + 32'd5350) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5357);
      acc = acc + m_hist[idx] + 32'd5364;
      idx = (idx + acc + 32'd5371) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5378);
      acc = acc + m_hist[idx] + 32'd5385;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5265);
      acc = acc + m_hist[idx] + 32'd5272;
      idx = (idx + acc + 32'd5279) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5286);
      acc = acc + m_hist[idx] + 32'd5293;
      idx = (idx + acc + 32'd5300) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5307);
      acc = acc + m_hist[idx] + 32'd5314;
      idx = (idx + acc + 32'd5321) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5328);
      acc = acc + m_hist[idx] + 32'd5335;
      idx = (idx + acc + 32'd5342) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5349);
      acc = acc + m_hist[idx] + 32'd5356;
      idx = (idx + acc + 32'd5363) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5370);
      acc = acc + m_hist[idx] + 32'd5377;
      idx = (idx + acc + 32'd5384) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5391);
      acc = acc + m_hist[idx] + 32'd5398;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_170 extends comp_base;
    function new(int unsigned id = 32'd170);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5270);
      acc = acc + m_hist[idx] + 32'd5277;
      idx = (idx + acc + 32'd5284) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5291);
      acc = acc + m_hist[idx] + 32'd5298;
      idx = (idx + acc + 32'd5305) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5312);
      acc = acc + m_hist[idx] + 32'd5319;
      idx = (idx + acc + 32'd5326) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5333);
      acc = acc + m_hist[idx] + 32'd5340;
      idx = (idx + acc + 32'd5347) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5354);
      acc = acc + m_hist[idx] + 32'd5361;
      idx = (idx + acc + 32'd5368) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5375);
      acc = acc + m_hist[idx] + 32'd5382;
      idx = (idx + acc + 32'd5389) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5396);
      acc = acc + m_hist[idx] + 32'd5403;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5283);
      acc = acc + m_hist[idx] + 32'd5290;
      idx = (idx + acc + 32'd5297) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5304);
      acc = acc + m_hist[idx] + 32'd5311;
      idx = (idx + acc + 32'd5318) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5325);
      acc = acc + m_hist[idx] + 32'd5332;
      idx = (idx + acc + 32'd5339) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5346);
      acc = acc + m_hist[idx] + 32'd5353;
      idx = (idx + acc + 32'd5360) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5367);
      acc = acc + m_hist[idx] + 32'd5374;
      idx = (idx + acc + 32'd5381) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5388);
      acc = acc + m_hist[idx] + 32'd5395;
      idx = (idx + acc + 32'd5402) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5409);
      acc = acc + m_hist[idx] + 32'd5416;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5296);
      acc = acc + m_hist[idx] + 32'd5303;
      idx = (idx + acc + 32'd5310) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5317);
      acc = acc + m_hist[idx] + 32'd5324;
      idx = (idx + acc + 32'd5331) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5338);
      acc = acc + m_hist[idx] + 32'd5345;
      idx = (idx + acc + 32'd5352) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5359);
      acc = acc + m_hist[idx] + 32'd5366;
      idx = (idx + acc + 32'd5373) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5380);
      acc = acc + m_hist[idx] + 32'd5387;
      idx = (idx + acc + 32'd5394) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5401);
      acc = acc + m_hist[idx] + 32'd5408;
      idx = (idx + acc + 32'd5415) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5422);
      acc = acc + m_hist[idx] + 32'd5429;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_171 extends comp_base;
    function new(int unsigned id = 32'd171);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5301);
      acc = acc + m_hist[idx] + 32'd5308;
      idx = (idx + acc + 32'd5315) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5322);
      acc = acc + m_hist[idx] + 32'd5329;
      idx = (idx + acc + 32'd5336) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5343);
      acc = acc + m_hist[idx] + 32'd5350;
      idx = (idx + acc + 32'd5357) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5364);
      acc = acc + m_hist[idx] + 32'd5371;
      idx = (idx + acc + 32'd5378) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5385);
      acc = acc + m_hist[idx] + 32'd5392;
      idx = (idx + acc + 32'd5399) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5406);
      acc = acc + m_hist[idx] + 32'd5413;
      idx = (idx + acc + 32'd5420) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5427);
      acc = acc + m_hist[idx] + 32'd5434;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5314);
      acc = acc + m_hist[idx] + 32'd5321;
      idx = (idx + acc + 32'd5328) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5335);
      acc = acc + m_hist[idx] + 32'd5342;
      idx = (idx + acc + 32'd5349) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5356);
      acc = acc + m_hist[idx] + 32'd5363;
      idx = (idx + acc + 32'd5370) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5377);
      acc = acc + m_hist[idx] + 32'd5384;
      idx = (idx + acc + 32'd5391) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5398);
      acc = acc + m_hist[idx] + 32'd5405;
      idx = (idx + acc + 32'd5412) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5419);
      acc = acc + m_hist[idx] + 32'd5426;
      idx = (idx + acc + 32'd5433) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5440);
      acc = acc + m_hist[idx] + 32'd5447;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5327);
      acc = acc + m_hist[idx] + 32'd5334;
      idx = (idx + acc + 32'd5341) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5348);
      acc = acc + m_hist[idx] + 32'd5355;
      idx = (idx + acc + 32'd5362) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5369);
      acc = acc + m_hist[idx] + 32'd5376;
      idx = (idx + acc + 32'd5383) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5390);
      acc = acc + m_hist[idx] + 32'd5397;
      idx = (idx + acc + 32'd5404) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5411);
      acc = acc + m_hist[idx] + 32'd5418;
      idx = (idx + acc + 32'd5425) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5432);
      acc = acc + m_hist[idx] + 32'd5439;
      idx = (idx + acc + 32'd5446) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5453);
      acc = acc + m_hist[idx] + 32'd5460;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_172 extends comp_base;
    function new(int unsigned id = 32'd172);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5332);
      acc = acc + m_hist[idx] + 32'd5339;
      idx = (idx + acc + 32'd5346) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5353);
      acc = acc + m_hist[idx] + 32'd5360;
      idx = (idx + acc + 32'd5367) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5374);
      acc = acc + m_hist[idx] + 32'd5381;
      idx = (idx + acc + 32'd5388) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5395);
      acc = acc + m_hist[idx] + 32'd5402;
      idx = (idx + acc + 32'd5409) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5416);
      acc = acc + m_hist[idx] + 32'd5423;
      idx = (idx + acc + 32'd5430) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5437);
      acc = acc + m_hist[idx] + 32'd5444;
      idx = (idx + acc + 32'd5451) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5458);
      acc = acc + m_hist[idx] + 32'd5465;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5345);
      acc = acc + m_hist[idx] + 32'd5352;
      idx = (idx + acc + 32'd5359) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5366);
      acc = acc + m_hist[idx] + 32'd5373;
      idx = (idx + acc + 32'd5380) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5387);
      acc = acc + m_hist[idx] + 32'd5394;
      idx = (idx + acc + 32'd5401) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5408);
      acc = acc + m_hist[idx] + 32'd5415;
      idx = (idx + acc + 32'd5422) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5429);
      acc = acc + m_hist[idx] + 32'd5436;
      idx = (idx + acc + 32'd5443) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5450);
      acc = acc + m_hist[idx] + 32'd5457;
      idx = (idx + acc + 32'd5464) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5471);
      acc = acc + m_hist[idx] + 32'd5478;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5358);
      acc = acc + m_hist[idx] + 32'd5365;
      idx = (idx + acc + 32'd5372) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5379);
      acc = acc + m_hist[idx] + 32'd5386;
      idx = (idx + acc + 32'd5393) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5400);
      acc = acc + m_hist[idx] + 32'd5407;
      idx = (idx + acc + 32'd5414) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5421);
      acc = acc + m_hist[idx] + 32'd5428;
      idx = (idx + acc + 32'd5435) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5442);
      acc = acc + m_hist[idx] + 32'd5449;
      idx = (idx + acc + 32'd5456) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5463);
      acc = acc + m_hist[idx] + 32'd5470;
      idx = (idx + acc + 32'd5477) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5484);
      acc = acc + m_hist[idx] + 32'd5491;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_173 extends comp_base;
    function new(int unsigned id = 32'd173);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5363);
      acc = acc + m_hist[idx] + 32'd5370;
      idx = (idx + acc + 32'd5377) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5384);
      acc = acc + m_hist[idx] + 32'd5391;
      idx = (idx + acc + 32'd5398) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5405);
      acc = acc + m_hist[idx] + 32'd5412;
      idx = (idx + acc + 32'd5419) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5426);
      acc = acc + m_hist[idx] + 32'd5433;
      idx = (idx + acc + 32'd5440) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5447);
      acc = acc + m_hist[idx] + 32'd5454;
      idx = (idx + acc + 32'd5461) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5468);
      acc = acc + m_hist[idx] + 32'd5475;
      idx = (idx + acc + 32'd5482) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5489);
      acc = acc + m_hist[idx] + 32'd5496;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5376);
      acc = acc + m_hist[idx] + 32'd5383;
      idx = (idx + acc + 32'd5390) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5397);
      acc = acc + m_hist[idx] + 32'd5404;
      idx = (idx + acc + 32'd5411) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5418);
      acc = acc + m_hist[idx] + 32'd5425;
      idx = (idx + acc + 32'd5432) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5439);
      acc = acc + m_hist[idx] + 32'd5446;
      idx = (idx + acc + 32'd5453) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5460);
      acc = acc + m_hist[idx] + 32'd5467;
      idx = (idx + acc + 32'd5474) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5481);
      acc = acc + m_hist[idx] + 32'd5488;
      idx = (idx + acc + 32'd5495) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5502);
      acc = acc + m_hist[idx] + 32'd5509;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5389);
      acc = acc + m_hist[idx] + 32'd5396;
      idx = (idx + acc + 32'd5403) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5410);
      acc = acc + m_hist[idx] + 32'd5417;
      idx = (idx + acc + 32'd5424) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5431);
      acc = acc + m_hist[idx] + 32'd5438;
      idx = (idx + acc + 32'd5445) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5452);
      acc = acc + m_hist[idx] + 32'd5459;
      idx = (idx + acc + 32'd5466) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5473);
      acc = acc + m_hist[idx] + 32'd5480;
      idx = (idx + acc + 32'd5487) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5494);
      acc = acc + m_hist[idx] + 32'd5501;
      idx = (idx + acc + 32'd5508) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5515);
      acc = acc + m_hist[idx] + 32'd5522;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_174 extends comp_base;
    function new(int unsigned id = 32'd174);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5394);
      acc = acc + m_hist[idx] + 32'd5401;
      idx = (idx + acc + 32'd5408) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5415);
      acc = acc + m_hist[idx] + 32'd5422;
      idx = (idx + acc + 32'd5429) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5436);
      acc = acc + m_hist[idx] + 32'd5443;
      idx = (idx + acc + 32'd5450) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5457);
      acc = acc + m_hist[idx] + 32'd5464;
      idx = (idx + acc + 32'd5471) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5478);
      acc = acc + m_hist[idx] + 32'd5485;
      idx = (idx + acc + 32'd5492) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5499);
      acc = acc + m_hist[idx] + 32'd5506;
      idx = (idx + acc + 32'd5513) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5520);
      acc = acc + m_hist[idx] + 32'd5527;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5407);
      acc = acc + m_hist[idx] + 32'd5414;
      idx = (idx + acc + 32'd5421) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5428);
      acc = acc + m_hist[idx] + 32'd5435;
      idx = (idx + acc + 32'd5442) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5449);
      acc = acc + m_hist[idx] + 32'd5456;
      idx = (idx + acc + 32'd5463) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5470);
      acc = acc + m_hist[idx] + 32'd5477;
      idx = (idx + acc + 32'd5484) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5491);
      acc = acc + m_hist[idx] + 32'd5498;
      idx = (idx + acc + 32'd5505) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5512);
      acc = acc + m_hist[idx] + 32'd5519;
      idx = (idx + acc + 32'd5526) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5533);
      acc = acc + m_hist[idx] + 32'd5540;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5420);
      acc = acc + m_hist[idx] + 32'd5427;
      idx = (idx + acc + 32'd5434) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5441);
      acc = acc + m_hist[idx] + 32'd5448;
      idx = (idx + acc + 32'd5455) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5462);
      acc = acc + m_hist[idx] + 32'd5469;
      idx = (idx + acc + 32'd5476) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5483);
      acc = acc + m_hist[idx] + 32'd5490;
      idx = (idx + acc + 32'd5497) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5504);
      acc = acc + m_hist[idx] + 32'd5511;
      idx = (idx + acc + 32'd5518) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5525);
      acc = acc + m_hist[idx] + 32'd5532;
      idx = (idx + acc + 32'd5539) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5546);
      acc = acc + m_hist[idx] + 32'd5553;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_175 extends comp_base;
    function new(int unsigned id = 32'd175);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5425);
      acc = acc + m_hist[idx] + 32'd5432;
      idx = (idx + acc + 32'd5439) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5446);
      acc = acc + m_hist[idx] + 32'd5453;
      idx = (idx + acc + 32'd5460) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5467);
      acc = acc + m_hist[idx] + 32'd5474;
      idx = (idx + acc + 32'd5481) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5488);
      acc = acc + m_hist[idx] + 32'd5495;
      idx = (idx + acc + 32'd5502) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5509);
      acc = acc + m_hist[idx] + 32'd5516;
      idx = (idx + acc + 32'd5523) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5530);
      acc = acc + m_hist[idx] + 32'd5537;
      idx = (idx + acc + 32'd5544) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5551);
      acc = acc + m_hist[idx] + 32'd5558;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5438);
      acc = acc + m_hist[idx] + 32'd5445;
      idx = (idx + acc + 32'd5452) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5459);
      acc = acc + m_hist[idx] + 32'd5466;
      idx = (idx + acc + 32'd5473) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5480);
      acc = acc + m_hist[idx] + 32'd5487;
      idx = (idx + acc + 32'd5494) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5501);
      acc = acc + m_hist[idx] + 32'd5508;
      idx = (idx + acc + 32'd5515) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5522);
      acc = acc + m_hist[idx] + 32'd5529;
      idx = (idx + acc + 32'd5536) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5543);
      acc = acc + m_hist[idx] + 32'd5550;
      idx = (idx + acc + 32'd5557) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5564);
      acc = acc + m_hist[idx] + 32'd5571;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5451);
      acc = acc + m_hist[idx] + 32'd5458;
      idx = (idx + acc + 32'd5465) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5472);
      acc = acc + m_hist[idx] + 32'd5479;
      idx = (idx + acc + 32'd5486) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5493);
      acc = acc + m_hist[idx] + 32'd5500;
      idx = (idx + acc + 32'd5507) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5514);
      acc = acc + m_hist[idx] + 32'd5521;
      idx = (idx + acc + 32'd5528) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5535);
      acc = acc + m_hist[idx] + 32'd5542;
      idx = (idx + acc + 32'd5549) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5556);
      acc = acc + m_hist[idx] + 32'd5563;
      idx = (idx + acc + 32'd5570) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5577);
      acc = acc + m_hist[idx] + 32'd5584;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_176 extends comp_base;
    function new(int unsigned id = 32'd176);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5456);
      acc = acc + m_hist[idx] + 32'd5463;
      idx = (idx + acc + 32'd5470) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5477);
      acc = acc + m_hist[idx] + 32'd5484;
      idx = (idx + acc + 32'd5491) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5498);
      acc = acc + m_hist[idx] + 32'd5505;
      idx = (idx + acc + 32'd5512) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5519);
      acc = acc + m_hist[idx] + 32'd5526;
      idx = (idx + acc + 32'd5533) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5540);
      acc = acc + m_hist[idx] + 32'd5547;
      idx = (idx + acc + 32'd5554) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5561);
      acc = acc + m_hist[idx] + 32'd5568;
      idx = (idx + acc + 32'd5575) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5582);
      acc = acc + m_hist[idx] + 32'd5589;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5469);
      acc = acc + m_hist[idx] + 32'd5476;
      idx = (idx + acc + 32'd5483) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5490);
      acc = acc + m_hist[idx] + 32'd5497;
      idx = (idx + acc + 32'd5504) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5511);
      acc = acc + m_hist[idx] + 32'd5518;
      idx = (idx + acc + 32'd5525) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5532);
      acc = acc + m_hist[idx] + 32'd5539;
      idx = (idx + acc + 32'd5546) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5553);
      acc = acc + m_hist[idx] + 32'd5560;
      idx = (idx + acc + 32'd5567) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5574);
      acc = acc + m_hist[idx] + 32'd5581;
      idx = (idx + acc + 32'd5588) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5595);
      acc = acc + m_hist[idx] + 32'd5602;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5482);
      acc = acc + m_hist[idx] + 32'd5489;
      idx = (idx + acc + 32'd5496) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5503);
      acc = acc + m_hist[idx] + 32'd5510;
      idx = (idx + acc + 32'd5517) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5524);
      acc = acc + m_hist[idx] + 32'd5531;
      idx = (idx + acc + 32'd5538) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5545);
      acc = acc + m_hist[idx] + 32'd5552;
      idx = (idx + acc + 32'd5559) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5566);
      acc = acc + m_hist[idx] + 32'd5573;
      idx = (idx + acc + 32'd5580) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5587);
      acc = acc + m_hist[idx] + 32'd5594;
      idx = (idx + acc + 32'd5601) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5608);
      acc = acc + m_hist[idx] + 32'd5615;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_177 extends comp_base;
    function new(int unsigned id = 32'd177);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5487);
      acc = acc + m_hist[idx] + 32'd5494;
      idx = (idx + acc + 32'd5501) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5508);
      acc = acc + m_hist[idx] + 32'd5515;
      idx = (idx + acc + 32'd5522) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5529);
      acc = acc + m_hist[idx] + 32'd5536;
      idx = (idx + acc + 32'd5543) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5550);
      acc = acc + m_hist[idx] + 32'd5557;
      idx = (idx + acc + 32'd5564) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5571);
      acc = acc + m_hist[idx] + 32'd5578;
      idx = (idx + acc + 32'd5585) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5592);
      acc = acc + m_hist[idx] + 32'd5599;
      idx = (idx + acc + 32'd5606) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5613);
      acc = acc + m_hist[idx] + 32'd5620;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5500);
      acc = acc + m_hist[idx] + 32'd5507;
      idx = (idx + acc + 32'd5514) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5521);
      acc = acc + m_hist[idx] + 32'd5528;
      idx = (idx + acc + 32'd5535) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5542);
      acc = acc + m_hist[idx] + 32'd5549;
      idx = (idx + acc + 32'd5556) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5563);
      acc = acc + m_hist[idx] + 32'd5570;
      idx = (idx + acc + 32'd5577) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5584);
      acc = acc + m_hist[idx] + 32'd5591;
      idx = (idx + acc + 32'd5598) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5605);
      acc = acc + m_hist[idx] + 32'd5612;
      idx = (idx + acc + 32'd5619) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5626);
      acc = acc + m_hist[idx] + 32'd5633;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5513);
      acc = acc + m_hist[idx] + 32'd5520;
      idx = (idx + acc + 32'd5527) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5534);
      acc = acc + m_hist[idx] + 32'd5541;
      idx = (idx + acc + 32'd5548) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5555);
      acc = acc + m_hist[idx] + 32'd5562;
      idx = (idx + acc + 32'd5569) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5576);
      acc = acc + m_hist[idx] + 32'd5583;
      idx = (idx + acc + 32'd5590) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5597);
      acc = acc + m_hist[idx] + 32'd5604;
      idx = (idx + acc + 32'd5611) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5618);
      acc = acc + m_hist[idx] + 32'd5625;
      idx = (idx + acc + 32'd5632) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5639);
      acc = acc + m_hist[idx] + 32'd5646;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_178 extends comp_base;
    function new(int unsigned id = 32'd178);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5518);
      acc = acc + m_hist[idx] + 32'd5525;
      idx = (idx + acc + 32'd5532) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5539);
      acc = acc + m_hist[idx] + 32'd5546;
      idx = (idx + acc + 32'd5553) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5560);
      acc = acc + m_hist[idx] + 32'd5567;
      idx = (idx + acc + 32'd5574) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5581);
      acc = acc + m_hist[idx] + 32'd5588;
      idx = (idx + acc + 32'd5595) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5602);
      acc = acc + m_hist[idx] + 32'd5609;
      idx = (idx + acc + 32'd5616) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5623);
      acc = acc + m_hist[idx] + 32'd5630;
      idx = (idx + acc + 32'd5637) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5644);
      acc = acc + m_hist[idx] + 32'd5651;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5531);
      acc = acc + m_hist[idx] + 32'd5538;
      idx = (idx + acc + 32'd5545) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5552);
      acc = acc + m_hist[idx] + 32'd5559;
      idx = (idx + acc + 32'd5566) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5573);
      acc = acc + m_hist[idx] + 32'd5580;
      idx = (idx + acc + 32'd5587) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5594);
      acc = acc + m_hist[idx] + 32'd5601;
      idx = (idx + acc + 32'd5608) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5615);
      acc = acc + m_hist[idx] + 32'd5622;
      idx = (idx + acc + 32'd5629) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5636);
      acc = acc + m_hist[idx] + 32'd5643;
      idx = (idx + acc + 32'd5650) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5657);
      acc = acc + m_hist[idx] + 32'd5664;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5544);
      acc = acc + m_hist[idx] + 32'd5551;
      idx = (idx + acc + 32'd5558) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5565);
      acc = acc + m_hist[idx] + 32'd5572;
      idx = (idx + acc + 32'd5579) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5586);
      acc = acc + m_hist[idx] + 32'd5593;
      idx = (idx + acc + 32'd5600) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5607);
      acc = acc + m_hist[idx] + 32'd5614;
      idx = (idx + acc + 32'd5621) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5628);
      acc = acc + m_hist[idx] + 32'd5635;
      idx = (idx + acc + 32'd5642) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5649);
      acc = acc + m_hist[idx] + 32'd5656;
      idx = (idx + acc + 32'd5663) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5670);
      acc = acc + m_hist[idx] + 32'd5677;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_179 extends comp_base;
    function new(int unsigned id = 32'd179);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5549);
      acc = acc + m_hist[idx] + 32'd5556;
      idx = (idx + acc + 32'd5563) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5570);
      acc = acc + m_hist[idx] + 32'd5577;
      idx = (idx + acc + 32'd5584) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5591);
      acc = acc + m_hist[idx] + 32'd5598;
      idx = (idx + acc + 32'd5605) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5612);
      acc = acc + m_hist[idx] + 32'd5619;
      idx = (idx + acc + 32'd5626) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5633);
      acc = acc + m_hist[idx] + 32'd5640;
      idx = (idx + acc + 32'd5647) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5654);
      acc = acc + m_hist[idx] + 32'd5661;
      idx = (idx + acc + 32'd5668) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5675);
      acc = acc + m_hist[idx] + 32'd5682;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5562);
      acc = acc + m_hist[idx] + 32'd5569;
      idx = (idx + acc + 32'd5576) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5583);
      acc = acc + m_hist[idx] + 32'd5590;
      idx = (idx + acc + 32'd5597) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5604);
      acc = acc + m_hist[idx] + 32'd5611;
      idx = (idx + acc + 32'd5618) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5625);
      acc = acc + m_hist[idx] + 32'd5632;
      idx = (idx + acc + 32'd5639) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5646);
      acc = acc + m_hist[idx] + 32'd5653;
      idx = (idx + acc + 32'd5660) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5667);
      acc = acc + m_hist[idx] + 32'd5674;
      idx = (idx + acc + 32'd5681) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5688);
      acc = acc + m_hist[idx] + 32'd5695;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5575);
      acc = acc + m_hist[idx] + 32'd5582;
      idx = (idx + acc + 32'd5589) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5596);
      acc = acc + m_hist[idx] + 32'd5603;
      idx = (idx + acc + 32'd5610) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5617);
      acc = acc + m_hist[idx] + 32'd5624;
      idx = (idx + acc + 32'd5631) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5638);
      acc = acc + m_hist[idx] + 32'd5645;
      idx = (idx + acc + 32'd5652) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5659);
      acc = acc + m_hist[idx] + 32'd5666;
      idx = (idx + acc + 32'd5673) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5680);
      acc = acc + m_hist[idx] + 32'd5687;
      idx = (idx + acc + 32'd5694) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5701);
      acc = acc + m_hist[idx] + 32'd5708;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_180 extends comp_base;
    function new(int unsigned id = 32'd180);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5580);
      acc = acc + m_hist[idx] + 32'd5587;
      idx = (idx + acc + 32'd5594) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5601);
      acc = acc + m_hist[idx] + 32'd5608;
      idx = (idx + acc + 32'd5615) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5622);
      acc = acc + m_hist[idx] + 32'd5629;
      idx = (idx + acc + 32'd5636) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5643);
      acc = acc + m_hist[idx] + 32'd5650;
      idx = (idx + acc + 32'd5657) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5664);
      acc = acc + m_hist[idx] + 32'd5671;
      idx = (idx + acc + 32'd5678) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5685);
      acc = acc + m_hist[idx] + 32'd5692;
      idx = (idx + acc + 32'd5699) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5706);
      acc = acc + m_hist[idx] + 32'd5713;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5593);
      acc = acc + m_hist[idx] + 32'd5600;
      idx = (idx + acc + 32'd5607) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5614);
      acc = acc + m_hist[idx] + 32'd5621;
      idx = (idx + acc + 32'd5628) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5635);
      acc = acc + m_hist[idx] + 32'd5642;
      idx = (idx + acc + 32'd5649) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5656);
      acc = acc + m_hist[idx] + 32'd5663;
      idx = (idx + acc + 32'd5670) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5677);
      acc = acc + m_hist[idx] + 32'd5684;
      idx = (idx + acc + 32'd5691) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5698);
      acc = acc + m_hist[idx] + 32'd5705;
      idx = (idx + acc + 32'd5712) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5719);
      acc = acc + m_hist[idx] + 32'd5726;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5606);
      acc = acc + m_hist[idx] + 32'd5613;
      idx = (idx + acc + 32'd5620) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5627);
      acc = acc + m_hist[idx] + 32'd5634;
      idx = (idx + acc + 32'd5641) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5648);
      acc = acc + m_hist[idx] + 32'd5655;
      idx = (idx + acc + 32'd5662) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5669);
      acc = acc + m_hist[idx] + 32'd5676;
      idx = (idx + acc + 32'd5683) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5690);
      acc = acc + m_hist[idx] + 32'd5697;
      idx = (idx + acc + 32'd5704) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5711);
      acc = acc + m_hist[idx] + 32'd5718;
      idx = (idx + acc + 32'd5725) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5732);
      acc = acc + m_hist[idx] + 32'd5739;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_181 extends comp_base;
    function new(int unsigned id = 32'd181);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5611);
      acc = acc + m_hist[idx] + 32'd5618;
      idx = (idx + acc + 32'd5625) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5632);
      acc = acc + m_hist[idx] + 32'd5639;
      idx = (idx + acc + 32'd5646) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5653);
      acc = acc + m_hist[idx] + 32'd5660;
      idx = (idx + acc + 32'd5667) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5674);
      acc = acc + m_hist[idx] + 32'd5681;
      idx = (idx + acc + 32'd5688) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5695);
      acc = acc + m_hist[idx] + 32'd5702;
      idx = (idx + acc + 32'd5709) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5716);
      acc = acc + m_hist[idx] + 32'd5723;
      idx = (idx + acc + 32'd5730) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5737);
      acc = acc + m_hist[idx] + 32'd5744;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5624);
      acc = acc + m_hist[idx] + 32'd5631;
      idx = (idx + acc + 32'd5638) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5645);
      acc = acc + m_hist[idx] + 32'd5652;
      idx = (idx + acc + 32'd5659) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5666);
      acc = acc + m_hist[idx] + 32'd5673;
      idx = (idx + acc + 32'd5680) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5687);
      acc = acc + m_hist[idx] + 32'd5694;
      idx = (idx + acc + 32'd5701) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5708);
      acc = acc + m_hist[idx] + 32'd5715;
      idx = (idx + acc + 32'd5722) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5729);
      acc = acc + m_hist[idx] + 32'd5736;
      idx = (idx + acc + 32'd5743) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5750);
      acc = acc + m_hist[idx] + 32'd5757;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5637);
      acc = acc + m_hist[idx] + 32'd5644;
      idx = (idx + acc + 32'd5651) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5658);
      acc = acc + m_hist[idx] + 32'd5665;
      idx = (idx + acc + 32'd5672) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5679);
      acc = acc + m_hist[idx] + 32'd5686;
      idx = (idx + acc + 32'd5693) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5700);
      acc = acc + m_hist[idx] + 32'd5707;
      idx = (idx + acc + 32'd5714) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5721);
      acc = acc + m_hist[idx] + 32'd5728;
      idx = (idx + acc + 32'd5735) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5742);
      acc = acc + m_hist[idx] + 32'd5749;
      idx = (idx + acc + 32'd5756) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5763);
      acc = acc + m_hist[idx] + 32'd5770;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_182 extends comp_base;
    function new(int unsigned id = 32'd182);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5642);
      acc = acc + m_hist[idx] + 32'd5649;
      idx = (idx + acc + 32'd5656) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5663);
      acc = acc + m_hist[idx] + 32'd5670;
      idx = (idx + acc + 32'd5677) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5684);
      acc = acc + m_hist[idx] + 32'd5691;
      idx = (idx + acc + 32'd5698) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5705);
      acc = acc + m_hist[idx] + 32'd5712;
      idx = (idx + acc + 32'd5719) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5726);
      acc = acc + m_hist[idx] + 32'd5733;
      idx = (idx + acc + 32'd5740) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5747);
      acc = acc + m_hist[idx] + 32'd5754;
      idx = (idx + acc + 32'd5761) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5768);
      acc = acc + m_hist[idx] + 32'd5775;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5655);
      acc = acc + m_hist[idx] + 32'd5662;
      idx = (idx + acc + 32'd5669) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5676);
      acc = acc + m_hist[idx] + 32'd5683;
      idx = (idx + acc + 32'd5690) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5697);
      acc = acc + m_hist[idx] + 32'd5704;
      idx = (idx + acc + 32'd5711) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5718);
      acc = acc + m_hist[idx] + 32'd5725;
      idx = (idx + acc + 32'd5732) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5739);
      acc = acc + m_hist[idx] + 32'd5746;
      idx = (idx + acc + 32'd5753) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5760);
      acc = acc + m_hist[idx] + 32'd5767;
      idx = (idx + acc + 32'd5774) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5781);
      acc = acc + m_hist[idx] + 32'd5788;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5668);
      acc = acc + m_hist[idx] + 32'd5675;
      idx = (idx + acc + 32'd5682) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5689);
      acc = acc + m_hist[idx] + 32'd5696;
      idx = (idx + acc + 32'd5703) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5710);
      acc = acc + m_hist[idx] + 32'd5717;
      idx = (idx + acc + 32'd5724) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5731);
      acc = acc + m_hist[idx] + 32'd5738;
      idx = (idx + acc + 32'd5745) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5752);
      acc = acc + m_hist[idx] + 32'd5759;
      idx = (idx + acc + 32'd5766) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5773);
      acc = acc + m_hist[idx] + 32'd5780;
      idx = (idx + acc + 32'd5787) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5794);
      acc = acc + m_hist[idx] + 32'd5801;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_183 extends comp_base;
    function new(int unsigned id = 32'd183);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5673);
      acc = acc + m_hist[idx] + 32'd5680;
      idx = (idx + acc + 32'd5687) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5694);
      acc = acc + m_hist[idx] + 32'd5701;
      idx = (idx + acc + 32'd5708) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5715);
      acc = acc + m_hist[idx] + 32'd5722;
      idx = (idx + acc + 32'd5729) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5736);
      acc = acc + m_hist[idx] + 32'd5743;
      idx = (idx + acc + 32'd5750) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5757);
      acc = acc + m_hist[idx] + 32'd5764;
      idx = (idx + acc + 32'd5771) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5778);
      acc = acc + m_hist[idx] + 32'd5785;
      idx = (idx + acc + 32'd5792) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5799);
      acc = acc + m_hist[idx] + 32'd5806;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5686);
      acc = acc + m_hist[idx] + 32'd5693;
      idx = (idx + acc + 32'd5700) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5707);
      acc = acc + m_hist[idx] + 32'd5714;
      idx = (idx + acc + 32'd5721) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5728);
      acc = acc + m_hist[idx] + 32'd5735;
      idx = (idx + acc + 32'd5742) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5749);
      acc = acc + m_hist[idx] + 32'd5756;
      idx = (idx + acc + 32'd5763) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5770);
      acc = acc + m_hist[idx] + 32'd5777;
      idx = (idx + acc + 32'd5784) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5791);
      acc = acc + m_hist[idx] + 32'd5798;
      idx = (idx + acc + 32'd5805) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5812);
      acc = acc + m_hist[idx] + 32'd5819;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5699);
      acc = acc + m_hist[idx] + 32'd5706;
      idx = (idx + acc + 32'd5713) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5720);
      acc = acc + m_hist[idx] + 32'd5727;
      idx = (idx + acc + 32'd5734) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5741);
      acc = acc + m_hist[idx] + 32'd5748;
      idx = (idx + acc + 32'd5755) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5762);
      acc = acc + m_hist[idx] + 32'd5769;
      idx = (idx + acc + 32'd5776) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5783);
      acc = acc + m_hist[idx] + 32'd5790;
      idx = (idx + acc + 32'd5797) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5804);
      acc = acc + m_hist[idx] + 32'd5811;
      idx = (idx + acc + 32'd5818) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5825);
      acc = acc + m_hist[idx] + 32'd5832;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_184 extends comp_base;
    function new(int unsigned id = 32'd184);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5704);
      acc = acc + m_hist[idx] + 32'd5711;
      idx = (idx + acc + 32'd5718) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5725);
      acc = acc + m_hist[idx] + 32'd5732;
      idx = (idx + acc + 32'd5739) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5746);
      acc = acc + m_hist[idx] + 32'd5753;
      idx = (idx + acc + 32'd5760) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5767);
      acc = acc + m_hist[idx] + 32'd5774;
      idx = (idx + acc + 32'd5781) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5788);
      acc = acc + m_hist[idx] + 32'd5795;
      idx = (idx + acc + 32'd5802) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5809);
      acc = acc + m_hist[idx] + 32'd5816;
      idx = (idx + acc + 32'd5823) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5830);
      acc = acc + m_hist[idx] + 32'd5837;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5717);
      acc = acc + m_hist[idx] + 32'd5724;
      idx = (idx + acc + 32'd5731) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5738);
      acc = acc + m_hist[idx] + 32'd5745;
      idx = (idx + acc + 32'd5752) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5759);
      acc = acc + m_hist[idx] + 32'd5766;
      idx = (idx + acc + 32'd5773) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5780);
      acc = acc + m_hist[idx] + 32'd5787;
      idx = (idx + acc + 32'd5794) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5801);
      acc = acc + m_hist[idx] + 32'd5808;
      idx = (idx + acc + 32'd5815) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5822);
      acc = acc + m_hist[idx] + 32'd5829;
      idx = (idx + acc + 32'd5836) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5843);
      acc = acc + m_hist[idx] + 32'd5850;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5730);
      acc = acc + m_hist[idx] + 32'd5737;
      idx = (idx + acc + 32'd5744) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5751);
      acc = acc + m_hist[idx] + 32'd5758;
      idx = (idx + acc + 32'd5765) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5772);
      acc = acc + m_hist[idx] + 32'd5779;
      idx = (idx + acc + 32'd5786) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5793);
      acc = acc + m_hist[idx] + 32'd5800;
      idx = (idx + acc + 32'd5807) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5814);
      acc = acc + m_hist[idx] + 32'd5821;
      idx = (idx + acc + 32'd5828) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5835);
      acc = acc + m_hist[idx] + 32'd5842;
      idx = (idx + acc + 32'd5849) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5856);
      acc = acc + m_hist[idx] + 32'd5863;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_185 extends comp_base;
    function new(int unsigned id = 32'd185);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5735);
      acc = acc + m_hist[idx] + 32'd5742;
      idx = (idx + acc + 32'd5749) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5756);
      acc = acc + m_hist[idx] + 32'd5763;
      idx = (idx + acc + 32'd5770) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5777);
      acc = acc + m_hist[idx] + 32'd5784;
      idx = (idx + acc + 32'd5791) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5798);
      acc = acc + m_hist[idx] + 32'd5805;
      idx = (idx + acc + 32'd5812) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5819);
      acc = acc + m_hist[idx] + 32'd5826;
      idx = (idx + acc + 32'd5833) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5840);
      acc = acc + m_hist[idx] + 32'd5847;
      idx = (idx + acc + 32'd5854) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5861);
      acc = acc + m_hist[idx] + 32'd5868;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5748);
      acc = acc + m_hist[idx] + 32'd5755;
      idx = (idx + acc + 32'd5762) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5769);
      acc = acc + m_hist[idx] + 32'd5776;
      idx = (idx + acc + 32'd5783) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5790);
      acc = acc + m_hist[idx] + 32'd5797;
      idx = (idx + acc + 32'd5804) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5811);
      acc = acc + m_hist[idx] + 32'd5818;
      idx = (idx + acc + 32'd5825) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5832);
      acc = acc + m_hist[idx] + 32'd5839;
      idx = (idx + acc + 32'd5846) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5853);
      acc = acc + m_hist[idx] + 32'd5860;
      idx = (idx + acc + 32'd5867) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5874);
      acc = acc + m_hist[idx] + 32'd5881;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5761);
      acc = acc + m_hist[idx] + 32'd5768;
      idx = (idx + acc + 32'd5775) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5782);
      acc = acc + m_hist[idx] + 32'd5789;
      idx = (idx + acc + 32'd5796) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5803);
      acc = acc + m_hist[idx] + 32'd5810;
      idx = (idx + acc + 32'd5817) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5824);
      acc = acc + m_hist[idx] + 32'd5831;
      idx = (idx + acc + 32'd5838) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5845);
      acc = acc + m_hist[idx] + 32'd5852;
      idx = (idx + acc + 32'd5859) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5866);
      acc = acc + m_hist[idx] + 32'd5873;
      idx = (idx + acc + 32'd5880) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5887);
      acc = acc + m_hist[idx] + 32'd5894;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_186 extends comp_base;
    function new(int unsigned id = 32'd186);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5766);
      acc = acc + m_hist[idx] + 32'd5773;
      idx = (idx + acc + 32'd5780) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5787);
      acc = acc + m_hist[idx] + 32'd5794;
      idx = (idx + acc + 32'd5801) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5808);
      acc = acc + m_hist[idx] + 32'd5815;
      idx = (idx + acc + 32'd5822) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5829);
      acc = acc + m_hist[idx] + 32'd5836;
      idx = (idx + acc + 32'd5843) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5850);
      acc = acc + m_hist[idx] + 32'd5857;
      idx = (idx + acc + 32'd5864) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5871);
      acc = acc + m_hist[idx] + 32'd5878;
      idx = (idx + acc + 32'd5885) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5892);
      acc = acc + m_hist[idx] + 32'd5899;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5779);
      acc = acc + m_hist[idx] + 32'd5786;
      idx = (idx + acc + 32'd5793) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5800);
      acc = acc + m_hist[idx] + 32'd5807;
      idx = (idx + acc + 32'd5814) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5821);
      acc = acc + m_hist[idx] + 32'd5828;
      idx = (idx + acc + 32'd5835) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5842);
      acc = acc + m_hist[idx] + 32'd5849;
      idx = (idx + acc + 32'd5856) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5863);
      acc = acc + m_hist[idx] + 32'd5870;
      idx = (idx + acc + 32'd5877) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5884);
      acc = acc + m_hist[idx] + 32'd5891;
      idx = (idx + acc + 32'd5898) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5905);
      acc = acc + m_hist[idx] + 32'd5912;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5792);
      acc = acc + m_hist[idx] + 32'd5799;
      idx = (idx + acc + 32'd5806) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5813);
      acc = acc + m_hist[idx] + 32'd5820;
      idx = (idx + acc + 32'd5827) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5834);
      acc = acc + m_hist[idx] + 32'd5841;
      idx = (idx + acc + 32'd5848) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5855);
      acc = acc + m_hist[idx] + 32'd5862;
      idx = (idx + acc + 32'd5869) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5876);
      acc = acc + m_hist[idx] + 32'd5883;
      idx = (idx + acc + 32'd5890) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5897);
      acc = acc + m_hist[idx] + 32'd5904;
      idx = (idx + acc + 32'd5911) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5918);
      acc = acc + m_hist[idx] + 32'd5925;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_187 extends comp_base;
    function new(int unsigned id = 32'd187);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5797);
      acc = acc + m_hist[idx] + 32'd5804;
      idx = (idx + acc + 32'd5811) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5818);
      acc = acc + m_hist[idx] + 32'd5825;
      idx = (idx + acc + 32'd5832) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5839);
      acc = acc + m_hist[idx] + 32'd5846;
      idx = (idx + acc + 32'd5853) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5860);
      acc = acc + m_hist[idx] + 32'd5867;
      idx = (idx + acc + 32'd5874) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5881);
      acc = acc + m_hist[idx] + 32'd5888;
      idx = (idx + acc + 32'd5895) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5902);
      acc = acc + m_hist[idx] + 32'd5909;
      idx = (idx + acc + 32'd5916) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5923);
      acc = acc + m_hist[idx] + 32'd5930;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5810);
      acc = acc + m_hist[idx] + 32'd5817;
      idx = (idx + acc + 32'd5824) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5831);
      acc = acc + m_hist[idx] + 32'd5838;
      idx = (idx + acc + 32'd5845) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5852);
      acc = acc + m_hist[idx] + 32'd5859;
      idx = (idx + acc + 32'd5866) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5873);
      acc = acc + m_hist[idx] + 32'd5880;
      idx = (idx + acc + 32'd5887) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5894);
      acc = acc + m_hist[idx] + 32'd5901;
      idx = (idx + acc + 32'd5908) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5915);
      acc = acc + m_hist[idx] + 32'd5922;
      idx = (idx + acc + 32'd5929) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5936);
      acc = acc + m_hist[idx] + 32'd5943;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5823);
      acc = acc + m_hist[idx] + 32'd5830;
      idx = (idx + acc + 32'd5837) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5844);
      acc = acc + m_hist[idx] + 32'd5851;
      idx = (idx + acc + 32'd5858) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5865);
      acc = acc + m_hist[idx] + 32'd5872;
      idx = (idx + acc + 32'd5879) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5886);
      acc = acc + m_hist[idx] + 32'd5893;
      idx = (idx + acc + 32'd5900) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5907);
      acc = acc + m_hist[idx] + 32'd5914;
      idx = (idx + acc + 32'd5921) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5928);
      acc = acc + m_hist[idx] + 32'd5935;
      idx = (idx + acc + 32'd5942) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5949);
      acc = acc + m_hist[idx] + 32'd5956;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_188 extends comp_base;
    function new(int unsigned id = 32'd188);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5828);
      acc = acc + m_hist[idx] + 32'd5835;
      idx = (idx + acc + 32'd5842) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5849);
      acc = acc + m_hist[idx] + 32'd5856;
      idx = (idx + acc + 32'd5863) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5870);
      acc = acc + m_hist[idx] + 32'd5877;
      idx = (idx + acc + 32'd5884) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5891);
      acc = acc + m_hist[idx] + 32'd5898;
      idx = (idx + acc + 32'd5905) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5912);
      acc = acc + m_hist[idx] + 32'd5919;
      idx = (idx + acc + 32'd5926) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5933);
      acc = acc + m_hist[idx] + 32'd5940;
      idx = (idx + acc + 32'd5947) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5954);
      acc = acc + m_hist[idx] + 32'd5961;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5841);
      acc = acc + m_hist[idx] + 32'd5848;
      idx = (idx + acc + 32'd5855) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5862);
      acc = acc + m_hist[idx] + 32'd5869;
      idx = (idx + acc + 32'd5876) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5883);
      acc = acc + m_hist[idx] + 32'd5890;
      idx = (idx + acc + 32'd5897) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5904);
      acc = acc + m_hist[idx] + 32'd5911;
      idx = (idx + acc + 32'd5918) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5925);
      acc = acc + m_hist[idx] + 32'd5932;
      idx = (idx + acc + 32'd5939) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5946);
      acc = acc + m_hist[idx] + 32'd5953;
      idx = (idx + acc + 32'd5960) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5967);
      acc = acc + m_hist[idx] + 32'd5974;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5854);
      acc = acc + m_hist[idx] + 32'd5861;
      idx = (idx + acc + 32'd5868) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5875);
      acc = acc + m_hist[idx] + 32'd5882;
      idx = (idx + acc + 32'd5889) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5896);
      acc = acc + m_hist[idx] + 32'd5903;
      idx = (idx + acc + 32'd5910) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5917);
      acc = acc + m_hist[idx] + 32'd5924;
      idx = (idx + acc + 32'd5931) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5938);
      acc = acc + m_hist[idx] + 32'd5945;
      idx = (idx + acc + 32'd5952) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5959);
      acc = acc + m_hist[idx] + 32'd5966;
      idx = (idx + acc + 32'd5973) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5980);
      acc = acc + m_hist[idx] + 32'd5987;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_189 extends comp_base;
    function new(int unsigned id = 32'd189);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5859);
      acc = acc + m_hist[idx] + 32'd5866;
      idx = (idx + acc + 32'd5873) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5880);
      acc = acc + m_hist[idx] + 32'd5887;
      idx = (idx + acc + 32'd5894) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5901);
      acc = acc + m_hist[idx] + 32'd5908;
      idx = (idx + acc + 32'd5915) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5922);
      acc = acc + m_hist[idx] + 32'd5929;
      idx = (idx + acc + 32'd5936) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5943);
      acc = acc + m_hist[idx] + 32'd5950;
      idx = (idx + acc + 32'd5957) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5964);
      acc = acc + m_hist[idx] + 32'd5971;
      idx = (idx + acc + 32'd5978) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5985);
      acc = acc + m_hist[idx] + 32'd5992;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5872);
      acc = acc + m_hist[idx] + 32'd5879;
      idx = (idx + acc + 32'd5886) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5893);
      acc = acc + m_hist[idx] + 32'd5900;
      idx = (idx + acc + 32'd5907) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5914);
      acc = acc + m_hist[idx] + 32'd5921;
      idx = (idx + acc + 32'd5928) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5935);
      acc = acc + m_hist[idx] + 32'd5942;
      idx = (idx + acc + 32'd5949) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5956);
      acc = acc + m_hist[idx] + 32'd5963;
      idx = (idx + acc + 32'd5970) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5977);
      acc = acc + m_hist[idx] + 32'd5984;
      idx = (idx + acc + 32'd5991) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5998);
      acc = acc + m_hist[idx] + 32'd6005;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5885);
      acc = acc + m_hist[idx] + 32'd5892;
      idx = (idx + acc + 32'd5899) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5906);
      acc = acc + m_hist[idx] + 32'd5913;
      idx = (idx + acc + 32'd5920) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5927);
      acc = acc + m_hist[idx] + 32'd5934;
      idx = (idx + acc + 32'd5941) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5948);
      acc = acc + m_hist[idx] + 32'd5955;
      idx = (idx + acc + 32'd5962) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5969);
      acc = acc + m_hist[idx] + 32'd5976;
      idx = (idx + acc + 32'd5983) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5990);
      acc = acc + m_hist[idx] + 32'd5997;
      idx = (idx + acc + 32'd6004) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6011);
      acc = acc + m_hist[idx] + 32'd6018;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_190 extends comp_base;
    function new(int unsigned id = 32'd190);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5890);
      acc = acc + m_hist[idx] + 32'd5897;
      idx = (idx + acc + 32'd5904) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5911);
      acc = acc + m_hist[idx] + 32'd5918;
      idx = (idx + acc + 32'd5925) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5932);
      acc = acc + m_hist[idx] + 32'd5939;
      idx = (idx + acc + 32'd5946) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5953);
      acc = acc + m_hist[idx] + 32'd5960;
      idx = (idx + acc + 32'd5967) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5974);
      acc = acc + m_hist[idx] + 32'd5981;
      idx = (idx + acc + 32'd5988) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5995);
      acc = acc + m_hist[idx] + 32'd6002;
      idx = (idx + acc + 32'd6009) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6016);
      acc = acc + m_hist[idx] + 32'd6023;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5903);
      acc = acc + m_hist[idx] + 32'd5910;
      idx = (idx + acc + 32'd5917) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5924);
      acc = acc + m_hist[idx] + 32'd5931;
      idx = (idx + acc + 32'd5938) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5945);
      acc = acc + m_hist[idx] + 32'd5952;
      idx = (idx + acc + 32'd5959) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5966);
      acc = acc + m_hist[idx] + 32'd5973;
      idx = (idx + acc + 32'd5980) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5987);
      acc = acc + m_hist[idx] + 32'd5994;
      idx = (idx + acc + 32'd6001) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6008);
      acc = acc + m_hist[idx] + 32'd6015;
      idx = (idx + acc + 32'd6022) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6029);
      acc = acc + m_hist[idx] + 32'd6036;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5916);
      acc = acc + m_hist[idx] + 32'd5923;
      idx = (idx + acc + 32'd5930) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5937);
      acc = acc + m_hist[idx] + 32'd5944;
      idx = (idx + acc + 32'd5951) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5958);
      acc = acc + m_hist[idx] + 32'd5965;
      idx = (idx + acc + 32'd5972) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5979);
      acc = acc + m_hist[idx] + 32'd5986;
      idx = (idx + acc + 32'd5993) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6000);
      acc = acc + m_hist[idx] + 32'd6007;
      idx = (idx + acc + 32'd6014) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6021);
      acc = acc + m_hist[idx] + 32'd6028;
      idx = (idx + acc + 32'd6035) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6042);
      acc = acc + m_hist[idx] + 32'd6049;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_191 extends comp_base;
    function new(int unsigned id = 32'd191);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5921);
      acc = acc + m_hist[idx] + 32'd5928;
      idx = (idx + acc + 32'd5935) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5942);
      acc = acc + m_hist[idx] + 32'd5949;
      idx = (idx + acc + 32'd5956) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5963);
      acc = acc + m_hist[idx] + 32'd5970;
      idx = (idx + acc + 32'd5977) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5984);
      acc = acc + m_hist[idx] + 32'd5991;
      idx = (idx + acc + 32'd5998) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6005);
      acc = acc + m_hist[idx] + 32'd6012;
      idx = (idx + acc + 32'd6019) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6026);
      acc = acc + m_hist[idx] + 32'd6033;
      idx = (idx + acc + 32'd6040) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6047);
      acc = acc + m_hist[idx] + 32'd6054;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5934);
      acc = acc + m_hist[idx] + 32'd5941;
      idx = (idx + acc + 32'd5948) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5955);
      acc = acc + m_hist[idx] + 32'd5962;
      idx = (idx + acc + 32'd5969) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5976);
      acc = acc + m_hist[idx] + 32'd5983;
      idx = (idx + acc + 32'd5990) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5997);
      acc = acc + m_hist[idx] + 32'd6004;
      idx = (idx + acc + 32'd6011) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6018);
      acc = acc + m_hist[idx] + 32'd6025;
      idx = (idx + acc + 32'd6032) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6039);
      acc = acc + m_hist[idx] + 32'd6046;
      idx = (idx + acc + 32'd6053) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6060);
      acc = acc + m_hist[idx] + 32'd6067;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5947);
      acc = acc + m_hist[idx] + 32'd5954;
      idx = (idx + acc + 32'd5961) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5968);
      acc = acc + m_hist[idx] + 32'd5975;
      idx = (idx + acc + 32'd5982) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5989);
      acc = acc + m_hist[idx] + 32'd5996;
      idx = (idx + acc + 32'd6003) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6010);
      acc = acc + m_hist[idx] + 32'd6017;
      idx = (idx + acc + 32'd6024) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6031);
      acc = acc + m_hist[idx] + 32'd6038;
      idx = (idx + acc + 32'd6045) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6052);
      acc = acc + m_hist[idx] + 32'd6059;
      idx = (idx + acc + 32'd6066) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6073);
      acc = acc + m_hist[idx] + 32'd6080;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_192 extends comp_base;
    function new(int unsigned id = 32'd192);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5952);
      acc = acc + m_hist[idx] + 32'd5959;
      idx = (idx + acc + 32'd5966) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5973);
      acc = acc + m_hist[idx] + 32'd5980;
      idx = (idx + acc + 32'd5987) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5994);
      acc = acc + m_hist[idx] + 32'd6001;
      idx = (idx + acc + 32'd6008) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6015);
      acc = acc + m_hist[idx] + 32'd6022;
      idx = (idx + acc + 32'd6029) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6036);
      acc = acc + m_hist[idx] + 32'd6043;
      idx = (idx + acc + 32'd6050) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6057);
      acc = acc + m_hist[idx] + 32'd6064;
      idx = (idx + acc + 32'd6071) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6078);
      acc = acc + m_hist[idx] + 32'd6085;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5965);
      acc = acc + m_hist[idx] + 32'd5972;
      idx = (idx + acc + 32'd5979) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5986);
      acc = acc + m_hist[idx] + 32'd5993;
      idx = (idx + acc + 32'd6000) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6007);
      acc = acc + m_hist[idx] + 32'd6014;
      idx = (idx + acc + 32'd6021) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6028);
      acc = acc + m_hist[idx] + 32'd6035;
      idx = (idx + acc + 32'd6042) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6049);
      acc = acc + m_hist[idx] + 32'd6056;
      idx = (idx + acc + 32'd6063) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6070);
      acc = acc + m_hist[idx] + 32'd6077;
      idx = (idx + acc + 32'd6084) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6091);
      acc = acc + m_hist[idx] + 32'd6098;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5978);
      acc = acc + m_hist[idx] + 32'd5985;
      idx = (idx + acc + 32'd5992) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5999);
      acc = acc + m_hist[idx] + 32'd6006;
      idx = (idx + acc + 32'd6013) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6020);
      acc = acc + m_hist[idx] + 32'd6027;
      idx = (idx + acc + 32'd6034) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6041);
      acc = acc + m_hist[idx] + 32'd6048;
      idx = (idx + acc + 32'd6055) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6062);
      acc = acc + m_hist[idx] + 32'd6069;
      idx = (idx + acc + 32'd6076) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6083);
      acc = acc + m_hist[idx] + 32'd6090;
      idx = (idx + acc + 32'd6097) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6104);
      acc = acc + m_hist[idx] + 32'd6111;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_193 extends comp_base;
    function new(int unsigned id = 32'd193);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5983);
      acc = acc + m_hist[idx] + 32'd5990;
      idx = (idx + acc + 32'd5997) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6004);
      acc = acc + m_hist[idx] + 32'd6011;
      idx = (idx + acc + 32'd6018) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6025);
      acc = acc + m_hist[idx] + 32'd6032;
      idx = (idx + acc + 32'd6039) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6046);
      acc = acc + m_hist[idx] + 32'd6053;
      idx = (idx + acc + 32'd6060) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6067);
      acc = acc + m_hist[idx] + 32'd6074;
      idx = (idx + acc + 32'd6081) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6088);
      acc = acc + m_hist[idx] + 32'd6095;
      idx = (idx + acc + 32'd6102) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6109);
      acc = acc + m_hist[idx] + 32'd6116;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd5996);
      acc = acc + m_hist[idx] + 32'd6003;
      idx = (idx + acc + 32'd6010) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6017);
      acc = acc + m_hist[idx] + 32'd6024;
      idx = (idx + acc + 32'd6031) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6038);
      acc = acc + m_hist[idx] + 32'd6045;
      idx = (idx + acc + 32'd6052) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6059);
      acc = acc + m_hist[idx] + 32'd6066;
      idx = (idx + acc + 32'd6073) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6080);
      acc = acc + m_hist[idx] + 32'd6087;
      idx = (idx + acc + 32'd6094) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6101);
      acc = acc + m_hist[idx] + 32'd6108;
      idx = (idx + acc + 32'd6115) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6122);
      acc = acc + m_hist[idx] + 32'd6129;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6009);
      acc = acc + m_hist[idx] + 32'd6016;
      idx = (idx + acc + 32'd6023) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6030);
      acc = acc + m_hist[idx] + 32'd6037;
      idx = (idx + acc + 32'd6044) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6051);
      acc = acc + m_hist[idx] + 32'd6058;
      idx = (idx + acc + 32'd6065) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6072);
      acc = acc + m_hist[idx] + 32'd6079;
      idx = (idx + acc + 32'd6086) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6093);
      acc = acc + m_hist[idx] + 32'd6100;
      idx = (idx + acc + 32'd6107) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6114);
      acc = acc + m_hist[idx] + 32'd6121;
      idx = (idx + acc + 32'd6128) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6135);
      acc = acc + m_hist[idx] + 32'd6142;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_194 extends comp_base;
    function new(int unsigned id = 32'd194);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6014);
      acc = acc + m_hist[idx] + 32'd6021;
      idx = (idx + acc + 32'd6028) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6035);
      acc = acc + m_hist[idx] + 32'd6042;
      idx = (idx + acc + 32'd6049) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6056);
      acc = acc + m_hist[idx] + 32'd6063;
      idx = (idx + acc + 32'd6070) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6077);
      acc = acc + m_hist[idx] + 32'd6084;
      idx = (idx + acc + 32'd6091) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6098);
      acc = acc + m_hist[idx] + 32'd6105;
      idx = (idx + acc + 32'd6112) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6119);
      acc = acc + m_hist[idx] + 32'd6126;
      idx = (idx + acc + 32'd6133) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6140);
      acc = acc + m_hist[idx] + 32'd6147;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6027);
      acc = acc + m_hist[idx] + 32'd6034;
      idx = (idx + acc + 32'd6041) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6048);
      acc = acc + m_hist[idx] + 32'd6055;
      idx = (idx + acc + 32'd6062) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6069);
      acc = acc + m_hist[idx] + 32'd6076;
      idx = (idx + acc + 32'd6083) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6090);
      acc = acc + m_hist[idx] + 32'd6097;
      idx = (idx + acc + 32'd6104) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6111);
      acc = acc + m_hist[idx] + 32'd6118;
      idx = (idx + acc + 32'd6125) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6132);
      acc = acc + m_hist[idx] + 32'd6139;
      idx = (idx + acc + 32'd6146) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6153);
      acc = acc + m_hist[idx] + 32'd6160;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6040);
      acc = acc + m_hist[idx] + 32'd6047;
      idx = (idx + acc + 32'd6054) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6061);
      acc = acc + m_hist[idx] + 32'd6068;
      idx = (idx + acc + 32'd6075) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6082);
      acc = acc + m_hist[idx] + 32'd6089;
      idx = (idx + acc + 32'd6096) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6103);
      acc = acc + m_hist[idx] + 32'd6110;
      idx = (idx + acc + 32'd6117) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6124);
      acc = acc + m_hist[idx] + 32'd6131;
      idx = (idx + acc + 32'd6138) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6145);
      acc = acc + m_hist[idx] + 32'd6152;
      idx = (idx + acc + 32'd6159) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6166);
      acc = acc + m_hist[idx] + 32'd6173;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_195 extends comp_base;
    function new(int unsigned id = 32'd195);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6045);
      acc = acc + m_hist[idx] + 32'd6052;
      idx = (idx + acc + 32'd6059) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6066);
      acc = acc + m_hist[idx] + 32'd6073;
      idx = (idx + acc + 32'd6080) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6087);
      acc = acc + m_hist[idx] + 32'd6094;
      idx = (idx + acc + 32'd6101) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6108);
      acc = acc + m_hist[idx] + 32'd6115;
      idx = (idx + acc + 32'd6122) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6129);
      acc = acc + m_hist[idx] + 32'd6136;
      idx = (idx + acc + 32'd6143) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6150);
      acc = acc + m_hist[idx] + 32'd6157;
      idx = (idx + acc + 32'd6164) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6171);
      acc = acc + m_hist[idx] + 32'd6178;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6058);
      acc = acc + m_hist[idx] + 32'd6065;
      idx = (idx + acc + 32'd6072) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6079);
      acc = acc + m_hist[idx] + 32'd6086;
      idx = (idx + acc + 32'd6093) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6100);
      acc = acc + m_hist[idx] + 32'd6107;
      idx = (idx + acc + 32'd6114) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6121);
      acc = acc + m_hist[idx] + 32'd6128;
      idx = (idx + acc + 32'd6135) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6142);
      acc = acc + m_hist[idx] + 32'd6149;
      idx = (idx + acc + 32'd6156) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6163);
      acc = acc + m_hist[idx] + 32'd6170;
      idx = (idx + acc + 32'd6177) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6184);
      acc = acc + m_hist[idx] + 32'd6191;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6071);
      acc = acc + m_hist[idx] + 32'd6078;
      idx = (idx + acc + 32'd6085) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6092);
      acc = acc + m_hist[idx] + 32'd6099;
      idx = (idx + acc + 32'd6106) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6113);
      acc = acc + m_hist[idx] + 32'd6120;
      idx = (idx + acc + 32'd6127) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6134);
      acc = acc + m_hist[idx] + 32'd6141;
      idx = (idx + acc + 32'd6148) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6155);
      acc = acc + m_hist[idx] + 32'd6162;
      idx = (idx + acc + 32'd6169) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6176);
      acc = acc + m_hist[idx] + 32'd6183;
      idx = (idx + acc + 32'd6190) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6197);
      acc = acc + m_hist[idx] + 32'd6204;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_196 extends comp_base;
    function new(int unsigned id = 32'd196);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6076);
      acc = acc + m_hist[idx] + 32'd6083;
      idx = (idx + acc + 32'd6090) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6097);
      acc = acc + m_hist[idx] + 32'd6104;
      idx = (idx + acc + 32'd6111) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6118);
      acc = acc + m_hist[idx] + 32'd6125;
      idx = (idx + acc + 32'd6132) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6139);
      acc = acc + m_hist[idx] + 32'd6146;
      idx = (idx + acc + 32'd6153) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6160);
      acc = acc + m_hist[idx] + 32'd6167;
      idx = (idx + acc + 32'd6174) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6181);
      acc = acc + m_hist[idx] + 32'd6188;
      idx = (idx + acc + 32'd6195) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6202);
      acc = acc + m_hist[idx] + 32'd6209;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6089);
      acc = acc + m_hist[idx] + 32'd6096;
      idx = (idx + acc + 32'd6103) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6110);
      acc = acc + m_hist[idx] + 32'd6117;
      idx = (idx + acc + 32'd6124) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6131);
      acc = acc + m_hist[idx] + 32'd6138;
      idx = (idx + acc + 32'd6145) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6152);
      acc = acc + m_hist[idx] + 32'd6159;
      idx = (idx + acc + 32'd6166) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6173);
      acc = acc + m_hist[idx] + 32'd6180;
      idx = (idx + acc + 32'd6187) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6194);
      acc = acc + m_hist[idx] + 32'd6201;
      idx = (idx + acc + 32'd6208) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6215);
      acc = acc + m_hist[idx] + 32'd6222;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6102);
      acc = acc + m_hist[idx] + 32'd6109;
      idx = (idx + acc + 32'd6116) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6123);
      acc = acc + m_hist[idx] + 32'd6130;
      idx = (idx + acc + 32'd6137) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6144);
      acc = acc + m_hist[idx] + 32'd6151;
      idx = (idx + acc + 32'd6158) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6165);
      acc = acc + m_hist[idx] + 32'd6172;
      idx = (idx + acc + 32'd6179) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6186);
      acc = acc + m_hist[idx] + 32'd6193;
      idx = (idx + acc + 32'd6200) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6207);
      acc = acc + m_hist[idx] + 32'd6214;
      idx = (idx + acc + 32'd6221) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6228);
      acc = acc + m_hist[idx] + 32'd6235;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_197 extends comp_base;
    function new(int unsigned id = 32'd197);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6107);
      acc = acc + m_hist[idx] + 32'd6114;
      idx = (idx + acc + 32'd6121) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6128);
      acc = acc + m_hist[idx] + 32'd6135;
      idx = (idx + acc + 32'd6142) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6149);
      acc = acc + m_hist[idx] + 32'd6156;
      idx = (idx + acc + 32'd6163) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6170);
      acc = acc + m_hist[idx] + 32'd6177;
      idx = (idx + acc + 32'd6184) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6191);
      acc = acc + m_hist[idx] + 32'd6198;
      idx = (idx + acc + 32'd6205) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6212);
      acc = acc + m_hist[idx] + 32'd6219;
      idx = (idx + acc + 32'd6226) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6233);
      acc = acc + m_hist[idx] + 32'd6240;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6120);
      acc = acc + m_hist[idx] + 32'd6127;
      idx = (idx + acc + 32'd6134) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6141);
      acc = acc + m_hist[idx] + 32'd6148;
      idx = (idx + acc + 32'd6155) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6162);
      acc = acc + m_hist[idx] + 32'd6169;
      idx = (idx + acc + 32'd6176) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6183);
      acc = acc + m_hist[idx] + 32'd6190;
      idx = (idx + acc + 32'd6197) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6204);
      acc = acc + m_hist[idx] + 32'd6211;
      idx = (idx + acc + 32'd6218) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6225);
      acc = acc + m_hist[idx] + 32'd6232;
      idx = (idx + acc + 32'd6239) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6246);
      acc = acc + m_hist[idx] + 32'd6253;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6133);
      acc = acc + m_hist[idx] + 32'd6140;
      idx = (idx + acc + 32'd6147) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6154);
      acc = acc + m_hist[idx] + 32'd6161;
      idx = (idx + acc + 32'd6168) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6175);
      acc = acc + m_hist[idx] + 32'd6182;
      idx = (idx + acc + 32'd6189) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6196);
      acc = acc + m_hist[idx] + 32'd6203;
      idx = (idx + acc + 32'd6210) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6217);
      acc = acc + m_hist[idx] + 32'd6224;
      idx = (idx + acc + 32'd6231) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6238);
      acc = acc + m_hist[idx] + 32'd6245;
      idx = (idx + acc + 32'd6252) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6259);
      acc = acc + m_hist[idx] + 32'd6266;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_198 extends comp_base;
    function new(int unsigned id = 32'd198);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6138);
      acc = acc + m_hist[idx] + 32'd6145;
      idx = (idx + acc + 32'd6152) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6159);
      acc = acc + m_hist[idx] + 32'd6166;
      idx = (idx + acc + 32'd6173) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6180);
      acc = acc + m_hist[idx] + 32'd6187;
      idx = (idx + acc + 32'd6194) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6201);
      acc = acc + m_hist[idx] + 32'd6208;
      idx = (idx + acc + 32'd6215) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6222);
      acc = acc + m_hist[idx] + 32'd6229;
      idx = (idx + acc + 32'd6236) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6243);
      acc = acc + m_hist[idx] + 32'd6250;
      idx = (idx + acc + 32'd6257) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6264);
      acc = acc + m_hist[idx] + 32'd6271;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6151);
      acc = acc + m_hist[idx] + 32'd6158;
      idx = (idx + acc + 32'd6165) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6172);
      acc = acc + m_hist[idx] + 32'd6179;
      idx = (idx + acc + 32'd6186) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6193);
      acc = acc + m_hist[idx] + 32'd6200;
      idx = (idx + acc + 32'd6207) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6214);
      acc = acc + m_hist[idx] + 32'd6221;
      idx = (idx + acc + 32'd6228) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6235);
      acc = acc + m_hist[idx] + 32'd6242;
      idx = (idx + acc + 32'd6249) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6256);
      acc = acc + m_hist[idx] + 32'd6263;
      idx = (idx + acc + 32'd6270) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6277);
      acc = acc + m_hist[idx] + 32'd6284;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6164);
      acc = acc + m_hist[idx] + 32'd6171;
      idx = (idx + acc + 32'd6178) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6185);
      acc = acc + m_hist[idx] + 32'd6192;
      idx = (idx + acc + 32'd6199) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6206);
      acc = acc + m_hist[idx] + 32'd6213;
      idx = (idx + acc + 32'd6220) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6227);
      acc = acc + m_hist[idx] + 32'd6234;
      idx = (idx + acc + 32'd6241) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6248);
      acc = acc + m_hist[idx] + 32'd6255;
      idx = (idx + acc + 32'd6262) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6269);
      acc = acc + m_hist[idx] + 32'd6276;
      idx = (idx + acc + 32'd6283) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6290);
      acc = acc + m_hist[idx] + 32'd6297;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class comp_199 extends comp_base;
    function new(int unsigned id = 32'd199);
      super.new(id);
    endfunction

    virtual function int unsigned step(int unsigned seed);
      int unsigned acc;
      acc = seed;
      acc = op0(acc);
      acc = op1(acc);
      acc = op2(acc);
      return acc;
    endfunction

    function int unsigned op0(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 0) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6169);
      acc = acc + m_hist[idx] + 32'd6176;
      idx = (idx + acc + 32'd6183) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6190);
      acc = acc + m_hist[idx] + 32'd6197;
      idx = (idx + acc + 32'd6204) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6211);
      acc = acc + m_hist[idx] + 32'd6218;
      idx = (idx + acc + 32'd6225) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6232);
      acc = acc + m_hist[idx] + 32'd6239;
      idx = (idx + acc + 32'd6246) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6253);
      acc = acc + m_hist[idx] + 32'd6260;
      idx = (idx + acc + 32'd6267) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6274);
      acc = acc + m_hist[idx] + 32'd6281;
      idx = (idx + acc + 32'd6288) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6295);
      acc = acc + m_hist[idx] + 32'd6302;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op1(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 1) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6182);
      acc = acc + m_hist[idx] + 32'd6189;
      idx = (idx + acc + 32'd6196) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6203);
      acc = acc + m_hist[idx] + 32'd6210;
      idx = (idx + acc + 32'd6217) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6224);
      acc = acc + m_hist[idx] + 32'd6231;
      idx = (idx + acc + 32'd6238) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6245);
      acc = acc + m_hist[idx] + 32'd6252;
      idx = (idx + acc + 32'd6259) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6266);
      acc = acc + m_hist[idx] + 32'd6273;
      idx = (idx + acc + 32'd6280) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6287);
      acc = acc + m_hist[idx] + 32'd6294;
      idx = (idx + acc + 32'd6301) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6308);
      acc = acc + m_hist[idx] + 32'd6315;
      m_seed = acc;
      return acc;
    endfunction

    function int unsigned op2(int unsigned seed);
      int unsigned acc;
      int unsigned idx;
      acc = seed ^ m_seed;
      idx = (seed + 2) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6195);
      acc = acc + m_hist[idx] + 32'd6202;
      idx = (idx + acc + 32'd6209) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6216);
      acc = acc + m_hist[idx] + 32'd6223;
      idx = (idx + acc + 32'd6230) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6237);
      acc = acc + m_hist[idx] + 32'd6244;
      idx = (idx + acc + 32'd6251) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6258);
      acc = acc + m_hist[idx] + 32'd6265;
      idx = (idx + acc + 32'd6272) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6279);
      acc = acc + m_hist[idx] + 32'd6286;
      idx = (idx + acc + 32'd6293) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6300);
      acc = acc + m_hist[idx] + 32'd6307;
      idx = (idx + acc + 32'd6314) % HIST_DEPTH;
      m_hist[idx] = m_hist[idx] ^ (acc + 32'd6321);
      acc = acc + m_hist[idx] + 32'd6328;
      m_seed = acc;
      return acc;
    endfunction
  endclass

  class registry;
    comp_base comps[$];

    function void build();
      begin comp_0 c; c = new(32'd0); comps.push_back(c); end
      begin comp_1 c; c = new(32'd1); comps.push_back(c); end
      begin comp_2 c; c = new(32'd2); comps.push_back(c); end
      begin comp_3 c; c = new(32'd3); comps.push_back(c); end
      begin comp_4 c; c = new(32'd4); comps.push_back(c); end
      begin comp_5 c; c = new(32'd5); comps.push_back(c); end
      begin comp_6 c; c = new(32'd6); comps.push_back(c); end
      begin comp_7 c; c = new(32'd7); comps.push_back(c); end
      begin comp_8 c; c = new(32'd8); comps.push_back(c); end
      begin comp_9 c; c = new(32'd9); comps.push_back(c); end
      begin comp_10 c; c = new(32'd10); comps.push_back(c); end
      begin comp_11 c; c = new(32'd11); comps.push_back(c); end
      begin comp_12 c; c = new(32'd12); comps.push_back(c); end
      begin comp_13 c; c = new(32'd13); comps.push_back(c); end
      begin comp_14 c; c = new(32'd14); comps.push_back(c); end
      begin comp_15 c; c = new(32'd15); comps.push_back(c); end
      begin comp_16 c; c = new(32'd16); comps.push_back(c); end
      begin comp_17 c; c = new(32'd17); comps.push_back(c); end
      begin comp_18 c; c = new(32'd18); comps.push_back(c); end
      begin comp_19 c; c = new(32'd19); comps.push_back(c); end
      begin comp_20 c; c = new(32'd20); comps.push_back(c); end
      begin comp_21 c; c = new(32'd21); comps.push_back(c); end
      begin comp_22 c; c = new(32'd22); comps.push_back(c); end
      begin comp_23 c; c = new(32'd23); comps.push_back(c); end
      begin comp_24 c; c = new(32'd24); comps.push_back(c); end
      begin comp_25 c; c = new(32'd25); comps.push_back(c); end
      begin comp_26 c; c = new(32'd26); comps.push_back(c); end
      begin comp_27 c; c = new(32'd27); comps.push_back(c); end
      begin comp_28 c; c = new(32'd28); comps.push_back(c); end
      begin comp_29 c; c = new(32'd29); comps.push_back(c); end
      begin comp_30 c; c = new(32'd30); comps.push_back(c); end
      begin comp_31 c; c = new(32'd31); comps.push_back(c); end
      begin comp_32 c; c = new(32'd32); comps.push_back(c); end
      begin comp_33 c; c = new(32'd33); comps.push_back(c); end
      begin comp_34 c; c = new(32'd34); comps.push_back(c); end
      begin comp_35 c; c = new(32'd35); comps.push_back(c); end
      begin comp_36 c; c = new(32'd36); comps.push_back(c); end
      begin comp_37 c; c = new(32'd37); comps.push_back(c); end
      begin comp_38 c; c = new(32'd38); comps.push_back(c); end
      begin comp_39 c; c = new(32'd39); comps.push_back(c); end
      begin comp_40 c; c = new(32'd40); comps.push_back(c); end
      begin comp_41 c; c = new(32'd41); comps.push_back(c); end
      begin comp_42 c; c = new(32'd42); comps.push_back(c); end
      begin comp_43 c; c = new(32'd43); comps.push_back(c); end
      begin comp_44 c; c = new(32'd44); comps.push_back(c); end
      begin comp_45 c; c = new(32'd45); comps.push_back(c); end
      begin comp_46 c; c = new(32'd46); comps.push_back(c); end
      begin comp_47 c; c = new(32'd47); comps.push_back(c); end
      begin comp_48 c; c = new(32'd48); comps.push_back(c); end
      begin comp_49 c; c = new(32'd49); comps.push_back(c); end
      begin comp_50 c; c = new(32'd50); comps.push_back(c); end
      begin comp_51 c; c = new(32'd51); comps.push_back(c); end
      begin comp_52 c; c = new(32'd52); comps.push_back(c); end
      begin comp_53 c; c = new(32'd53); comps.push_back(c); end
      begin comp_54 c; c = new(32'd54); comps.push_back(c); end
      begin comp_55 c; c = new(32'd55); comps.push_back(c); end
      begin comp_56 c; c = new(32'd56); comps.push_back(c); end
      begin comp_57 c; c = new(32'd57); comps.push_back(c); end
      begin comp_58 c; c = new(32'd58); comps.push_back(c); end
      begin comp_59 c; c = new(32'd59); comps.push_back(c); end
      begin comp_60 c; c = new(32'd60); comps.push_back(c); end
      begin comp_61 c; c = new(32'd61); comps.push_back(c); end
      begin comp_62 c; c = new(32'd62); comps.push_back(c); end
      begin comp_63 c; c = new(32'd63); comps.push_back(c); end
      begin comp_64 c; c = new(32'd64); comps.push_back(c); end
      begin comp_65 c; c = new(32'd65); comps.push_back(c); end
      begin comp_66 c; c = new(32'd66); comps.push_back(c); end
      begin comp_67 c; c = new(32'd67); comps.push_back(c); end
      begin comp_68 c; c = new(32'd68); comps.push_back(c); end
      begin comp_69 c; c = new(32'd69); comps.push_back(c); end
      begin comp_70 c; c = new(32'd70); comps.push_back(c); end
      begin comp_71 c; c = new(32'd71); comps.push_back(c); end
      begin comp_72 c; c = new(32'd72); comps.push_back(c); end
      begin comp_73 c; c = new(32'd73); comps.push_back(c); end
      begin comp_74 c; c = new(32'd74); comps.push_back(c); end
      begin comp_75 c; c = new(32'd75); comps.push_back(c); end
      begin comp_76 c; c = new(32'd76); comps.push_back(c); end
      begin comp_77 c; c = new(32'd77); comps.push_back(c); end
      begin comp_78 c; c = new(32'd78); comps.push_back(c); end
      begin comp_79 c; c = new(32'd79); comps.push_back(c); end
      begin comp_80 c; c = new(32'd80); comps.push_back(c); end
      begin comp_81 c; c = new(32'd81); comps.push_back(c); end
      begin comp_82 c; c = new(32'd82); comps.push_back(c); end
      begin comp_83 c; c = new(32'd83); comps.push_back(c); end
      begin comp_84 c; c = new(32'd84); comps.push_back(c); end
      begin comp_85 c; c = new(32'd85); comps.push_back(c); end
      begin comp_86 c; c = new(32'd86); comps.push_back(c); end
      begin comp_87 c; c = new(32'd87); comps.push_back(c); end
      begin comp_88 c; c = new(32'd88); comps.push_back(c); end
      begin comp_89 c; c = new(32'd89); comps.push_back(c); end
      begin comp_90 c; c = new(32'd90); comps.push_back(c); end
      begin comp_91 c; c = new(32'd91); comps.push_back(c); end
      begin comp_92 c; c = new(32'd92); comps.push_back(c); end
      begin comp_93 c; c = new(32'd93); comps.push_back(c); end
      begin comp_94 c; c = new(32'd94); comps.push_back(c); end
      begin comp_95 c; c = new(32'd95); comps.push_back(c); end
      begin comp_96 c; c = new(32'd96); comps.push_back(c); end
      begin comp_97 c; c = new(32'd97); comps.push_back(c); end
      begin comp_98 c; c = new(32'd98); comps.push_back(c); end
      begin comp_99 c; c = new(32'd99); comps.push_back(c); end
      begin comp_100 c; c = new(32'd100); comps.push_back(c); end
      begin comp_101 c; c = new(32'd101); comps.push_back(c); end
      begin comp_102 c; c = new(32'd102); comps.push_back(c); end
      begin comp_103 c; c = new(32'd103); comps.push_back(c); end
      begin comp_104 c; c = new(32'd104); comps.push_back(c); end
      begin comp_105 c; c = new(32'd105); comps.push_back(c); end
      begin comp_106 c; c = new(32'd106); comps.push_back(c); end
      begin comp_107 c; c = new(32'd107); comps.push_back(c); end
      begin comp_108 c; c = new(32'd108); comps.push_back(c); end
      begin comp_109 c; c = new(32'd109); comps.push_back(c); end
      begin comp_110 c; c = new(32'd110); comps.push_back(c); end
      begin comp_111 c; c = new(32'd111); comps.push_back(c); end
      begin comp_112 c; c = new(32'd112); comps.push_back(c); end
      begin comp_113 c; c = new(32'd113); comps.push_back(c); end
      begin comp_114 c; c = new(32'd114); comps.push_back(c); end
      begin comp_115 c; c = new(32'd115); comps.push_back(c); end
      begin comp_116 c; c = new(32'd116); comps.push_back(c); end
      begin comp_117 c; c = new(32'd117); comps.push_back(c); end
      begin comp_118 c; c = new(32'd118); comps.push_back(c); end
      begin comp_119 c; c = new(32'd119); comps.push_back(c); end
      begin comp_120 c; c = new(32'd120); comps.push_back(c); end
      begin comp_121 c; c = new(32'd121); comps.push_back(c); end
      begin comp_122 c; c = new(32'd122); comps.push_back(c); end
      begin comp_123 c; c = new(32'd123); comps.push_back(c); end
      begin comp_124 c; c = new(32'd124); comps.push_back(c); end
      begin comp_125 c; c = new(32'd125); comps.push_back(c); end
      begin comp_126 c; c = new(32'd126); comps.push_back(c); end
      begin comp_127 c; c = new(32'd127); comps.push_back(c); end
      begin comp_128 c; c = new(32'd128); comps.push_back(c); end
      begin comp_129 c; c = new(32'd129); comps.push_back(c); end
      begin comp_130 c; c = new(32'd130); comps.push_back(c); end
      begin comp_131 c; c = new(32'd131); comps.push_back(c); end
      begin comp_132 c; c = new(32'd132); comps.push_back(c); end
      begin comp_133 c; c = new(32'd133); comps.push_back(c); end
      begin comp_134 c; c = new(32'd134); comps.push_back(c); end
      begin comp_135 c; c = new(32'd135); comps.push_back(c); end
      begin comp_136 c; c = new(32'd136); comps.push_back(c); end
      begin comp_137 c; c = new(32'd137); comps.push_back(c); end
      begin comp_138 c; c = new(32'd138); comps.push_back(c); end
      begin comp_139 c; c = new(32'd139); comps.push_back(c); end
      begin comp_140 c; c = new(32'd140); comps.push_back(c); end
      begin comp_141 c; c = new(32'd141); comps.push_back(c); end
      begin comp_142 c; c = new(32'd142); comps.push_back(c); end
      begin comp_143 c; c = new(32'd143); comps.push_back(c); end
      begin comp_144 c; c = new(32'd144); comps.push_back(c); end
      begin comp_145 c; c = new(32'd145); comps.push_back(c); end
      begin comp_146 c; c = new(32'd146); comps.push_back(c); end
      begin comp_147 c; c = new(32'd147); comps.push_back(c); end
      begin comp_148 c; c = new(32'd148); comps.push_back(c); end
      begin comp_149 c; c = new(32'd149); comps.push_back(c); end
      begin comp_150 c; c = new(32'd150); comps.push_back(c); end
      begin comp_151 c; c = new(32'd151); comps.push_back(c); end
      begin comp_152 c; c = new(32'd152); comps.push_back(c); end
      begin comp_153 c; c = new(32'd153); comps.push_back(c); end
      begin comp_154 c; c = new(32'd154); comps.push_back(c); end
      begin comp_155 c; c = new(32'd155); comps.push_back(c); end
      begin comp_156 c; c = new(32'd156); comps.push_back(c); end
      begin comp_157 c; c = new(32'd157); comps.push_back(c); end
      begin comp_158 c; c = new(32'd158); comps.push_back(c); end
      begin comp_159 c; c = new(32'd159); comps.push_back(c); end
      begin comp_160 c; c = new(32'd160); comps.push_back(c); end
      begin comp_161 c; c = new(32'd161); comps.push_back(c); end
      begin comp_162 c; c = new(32'd162); comps.push_back(c); end
      begin comp_163 c; c = new(32'd163); comps.push_back(c); end
      begin comp_164 c; c = new(32'd164); comps.push_back(c); end
      begin comp_165 c; c = new(32'd165); comps.push_back(c); end
      begin comp_166 c; c = new(32'd166); comps.push_back(c); end
      begin comp_167 c; c = new(32'd167); comps.push_back(c); end
      begin comp_168 c; c = new(32'd168); comps.push_back(c); end
      begin comp_169 c; c = new(32'd169); comps.push_back(c); end
      begin comp_170 c; c = new(32'd170); comps.push_back(c); end
      begin comp_171 c; c = new(32'd171); comps.push_back(c); end
      begin comp_172 c; c = new(32'd172); comps.push_back(c); end
      begin comp_173 c; c = new(32'd173); comps.push_back(c); end
      begin comp_174 c; c = new(32'd174); comps.push_back(c); end
      begin comp_175 c; c = new(32'd175); comps.push_back(c); end
      begin comp_176 c; c = new(32'd176); comps.push_back(c); end
      begin comp_177 c; c = new(32'd177); comps.push_back(c); end
      begin comp_178 c; c = new(32'd178); comps.push_back(c); end
      begin comp_179 c; c = new(32'd179); comps.push_back(c); end
      begin comp_180 c; c = new(32'd180); comps.push_back(c); end
      begin comp_181 c; c = new(32'd181); comps.push_back(c); end
      begin comp_182 c; c = new(32'd182); comps.push_back(c); end
      begin comp_183 c; c = new(32'd183); comps.push_back(c); end
      begin comp_184 c; c = new(32'd184); comps.push_back(c); end
      begin comp_185 c; c = new(32'd185); comps.push_back(c); end
      begin comp_186 c; c = new(32'd186); comps.push_back(c); end
      begin comp_187 c; c = new(32'd187); comps.push_back(c); end
      begin comp_188 c; c = new(32'd188); comps.push_back(c); end
      begin comp_189 c; c = new(32'd189); comps.push_back(c); end
      begin comp_190 c; c = new(32'd190); comps.push_back(c); end
      begin comp_191 c; c = new(32'd191); comps.push_back(c); end
      begin comp_192 c; c = new(32'd192); comps.push_back(c); end
      begin comp_193 c; c = new(32'd193); comps.push_back(c); end
      begin comp_194 c; c = new(32'd194); comps.push_back(c); end
      begin comp_195 c; c = new(32'd195); comps.push_back(c); end
      begin comp_196 c; c = new(32'd196); comps.push_back(c); end
      begin comp_197 c; c = new(32'd197); comps.push_back(c); end
      begin comp_198 c; c = new(32'd198); comps.push_back(c); end
      begin comp_199 c; c = new(32'd199); comps.push_back(c); end
    endfunction

    function int unsigned run(int unsigned seed);
      int unsigned acc;
      acc = seed;
      foreach (comps[i]) acc = acc + comps[i].digest(acc);
      return acc;
    endfunction
  endclass

endpackage

module top;
  import many_pkg::*;
  registry r;
  int unsigned acc;

  initial begin
    r = new;
    r.build();
    acc = r.run(32'd1);
    $display("digest=%0d", acc);
    $finish;
  end
endmodule
