// Generated stress design: many SystemVerilog classes.
//
// This is an INCLUDE FRAGMENT, not a compilation unit: it declares classes
// only, with no package or module wrapper, so it can be `include'd inside an
// existing package.  Names are prefixed mc_ and the depth is a localparam so
// nothing collides with the including package.
//
// The tool emits one .cpp pair per class, so the class count -- not
// --output-split -- drives the number of compilation units.  Grouping needs
// at least 4 concatenable files per bucket, so 200 classes supports
// --output-groups up to roughly 50.
//
// Every statement depends on a runtime value (an argument, a member, or an
// array element at a computed index), so none of it folds away.

localparam int MC_HIST_DEPTH = 64;

virtual class mc_base;
  int unsigned m_id;
  int unsigned m_seed;
  int unsigned m_hist[MC_HIST_DEPTH];

  function new(int unsigned id = 0);
    m_id = id;
    m_seed = id + 32'd1;
  endfunction

  pure virtual function int unsigned step(int unsigned seed);

  virtual function int unsigned digest(int unsigned seed);
    int unsigned acc;
    acc = step(seed);
    return acc ^ m_hist[acc % MC_HIST_DEPTH];
  endfunction
endclass

class mc_comp_0 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd0);
    acc = acc + m_hist[idx] + 32'd7;
    idx = (idx + acc + 32'd14) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd21);
    acc = acc + m_hist[idx] + 32'd28;
    idx = (idx + acc + 32'd35) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd42);
    acc = acc + m_hist[idx] + 32'd49;
    idx = (idx + acc + 32'd56) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd63);
    acc = acc + m_hist[idx] + 32'd70;
    idx = (idx + acc + 32'd77) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd84);
    acc = acc + m_hist[idx] + 32'd91;
    idx = (idx + acc + 32'd98) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd105);
    acc = acc + m_hist[idx] + 32'd112;
    idx = (idx + acc + 32'd119) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd126);
    acc = acc + m_hist[idx] + 32'd133;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd13);
    acc = acc + m_hist[idx] + 32'd20;
    idx = (idx + acc + 32'd27) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd34);
    acc = acc + m_hist[idx] + 32'd41;
    idx = (idx + acc + 32'd48) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd55);
    acc = acc + m_hist[idx] + 32'd62;
    idx = (idx + acc + 32'd69) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd76);
    acc = acc + m_hist[idx] + 32'd83;
    idx = (idx + acc + 32'd90) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd97);
    acc = acc + m_hist[idx] + 32'd104;
    idx = (idx + acc + 32'd111) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd118);
    acc = acc + m_hist[idx] + 32'd125;
    idx = (idx + acc + 32'd132) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd139);
    acc = acc + m_hist[idx] + 32'd146;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd26);
    acc = acc + m_hist[idx] + 32'd33;
    idx = (idx + acc + 32'd40) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd47);
    acc = acc + m_hist[idx] + 32'd54;
    idx = (idx + acc + 32'd61) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd68);
    acc = acc + m_hist[idx] + 32'd75;
    idx = (idx + acc + 32'd82) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd89);
    acc = acc + m_hist[idx] + 32'd96;
    idx = (idx + acc + 32'd103) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd110);
    acc = acc + m_hist[idx] + 32'd117;
    idx = (idx + acc + 32'd124) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd131);
    acc = acc + m_hist[idx] + 32'd138;
    idx = (idx + acc + 32'd145) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd152);
    acc = acc + m_hist[idx] + 32'd159;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_1 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd31);
    acc = acc + m_hist[idx] + 32'd38;
    idx = (idx + acc + 32'd45) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd52);
    acc = acc + m_hist[idx] + 32'd59;
    idx = (idx + acc + 32'd66) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd73);
    acc = acc + m_hist[idx] + 32'd80;
    idx = (idx + acc + 32'd87) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd94);
    acc = acc + m_hist[idx] + 32'd101;
    idx = (idx + acc + 32'd108) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd115);
    acc = acc + m_hist[idx] + 32'd122;
    idx = (idx + acc + 32'd129) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd136);
    acc = acc + m_hist[idx] + 32'd143;
    idx = (idx + acc + 32'd150) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd157);
    acc = acc + m_hist[idx] + 32'd164;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd44);
    acc = acc + m_hist[idx] + 32'd51;
    idx = (idx + acc + 32'd58) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd65);
    acc = acc + m_hist[idx] + 32'd72;
    idx = (idx + acc + 32'd79) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd86);
    acc = acc + m_hist[idx] + 32'd93;
    idx = (idx + acc + 32'd100) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd107);
    acc = acc + m_hist[idx] + 32'd114;
    idx = (idx + acc + 32'd121) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd128);
    acc = acc + m_hist[idx] + 32'd135;
    idx = (idx + acc + 32'd142) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd149);
    acc = acc + m_hist[idx] + 32'd156;
    idx = (idx + acc + 32'd163) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd170);
    acc = acc + m_hist[idx] + 32'd177;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd57);
    acc = acc + m_hist[idx] + 32'd64;
    idx = (idx + acc + 32'd71) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd78);
    acc = acc + m_hist[idx] + 32'd85;
    idx = (idx + acc + 32'd92) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd99);
    acc = acc + m_hist[idx] + 32'd106;
    idx = (idx + acc + 32'd113) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd120);
    acc = acc + m_hist[idx] + 32'd127;
    idx = (idx + acc + 32'd134) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd141);
    acc = acc + m_hist[idx] + 32'd148;
    idx = (idx + acc + 32'd155) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd162);
    acc = acc + m_hist[idx] + 32'd169;
    idx = (idx + acc + 32'd176) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd183);
    acc = acc + m_hist[idx] + 32'd190;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_2 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd62);
    acc = acc + m_hist[idx] + 32'd69;
    idx = (idx + acc + 32'd76) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd83);
    acc = acc + m_hist[idx] + 32'd90;
    idx = (idx + acc + 32'd97) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd104);
    acc = acc + m_hist[idx] + 32'd111;
    idx = (idx + acc + 32'd118) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd125);
    acc = acc + m_hist[idx] + 32'd132;
    idx = (idx + acc + 32'd139) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd146);
    acc = acc + m_hist[idx] + 32'd153;
    idx = (idx + acc + 32'd160) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd167);
    acc = acc + m_hist[idx] + 32'd174;
    idx = (idx + acc + 32'd181) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd188);
    acc = acc + m_hist[idx] + 32'd195;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd75);
    acc = acc + m_hist[idx] + 32'd82;
    idx = (idx + acc + 32'd89) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd96);
    acc = acc + m_hist[idx] + 32'd103;
    idx = (idx + acc + 32'd110) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd117);
    acc = acc + m_hist[idx] + 32'd124;
    idx = (idx + acc + 32'd131) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd138);
    acc = acc + m_hist[idx] + 32'd145;
    idx = (idx + acc + 32'd152) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd159);
    acc = acc + m_hist[idx] + 32'd166;
    idx = (idx + acc + 32'd173) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd180);
    acc = acc + m_hist[idx] + 32'd187;
    idx = (idx + acc + 32'd194) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd201);
    acc = acc + m_hist[idx] + 32'd208;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd88);
    acc = acc + m_hist[idx] + 32'd95;
    idx = (idx + acc + 32'd102) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd109);
    acc = acc + m_hist[idx] + 32'd116;
    idx = (idx + acc + 32'd123) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd130);
    acc = acc + m_hist[idx] + 32'd137;
    idx = (idx + acc + 32'd144) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd151);
    acc = acc + m_hist[idx] + 32'd158;
    idx = (idx + acc + 32'd165) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd172);
    acc = acc + m_hist[idx] + 32'd179;
    idx = (idx + acc + 32'd186) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd193);
    acc = acc + m_hist[idx] + 32'd200;
    idx = (idx + acc + 32'd207) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd214);
    acc = acc + m_hist[idx] + 32'd221;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_3 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd93);
    acc = acc + m_hist[idx] + 32'd100;
    idx = (idx + acc + 32'd107) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd114);
    acc = acc + m_hist[idx] + 32'd121;
    idx = (idx + acc + 32'd128) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd135);
    acc = acc + m_hist[idx] + 32'd142;
    idx = (idx + acc + 32'd149) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd156);
    acc = acc + m_hist[idx] + 32'd163;
    idx = (idx + acc + 32'd170) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd177);
    acc = acc + m_hist[idx] + 32'd184;
    idx = (idx + acc + 32'd191) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd198);
    acc = acc + m_hist[idx] + 32'd205;
    idx = (idx + acc + 32'd212) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd219);
    acc = acc + m_hist[idx] + 32'd226;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd106);
    acc = acc + m_hist[idx] + 32'd113;
    idx = (idx + acc + 32'd120) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd127);
    acc = acc + m_hist[idx] + 32'd134;
    idx = (idx + acc + 32'd141) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd148);
    acc = acc + m_hist[idx] + 32'd155;
    idx = (idx + acc + 32'd162) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd169);
    acc = acc + m_hist[idx] + 32'd176;
    idx = (idx + acc + 32'd183) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd190);
    acc = acc + m_hist[idx] + 32'd197;
    idx = (idx + acc + 32'd204) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd211);
    acc = acc + m_hist[idx] + 32'd218;
    idx = (idx + acc + 32'd225) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd232);
    acc = acc + m_hist[idx] + 32'd239;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd119);
    acc = acc + m_hist[idx] + 32'd126;
    idx = (idx + acc + 32'd133) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd140);
    acc = acc + m_hist[idx] + 32'd147;
    idx = (idx + acc + 32'd154) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd161);
    acc = acc + m_hist[idx] + 32'd168;
    idx = (idx + acc + 32'd175) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd182);
    acc = acc + m_hist[idx] + 32'd189;
    idx = (idx + acc + 32'd196) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd203);
    acc = acc + m_hist[idx] + 32'd210;
    idx = (idx + acc + 32'd217) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd224);
    acc = acc + m_hist[idx] + 32'd231;
    idx = (idx + acc + 32'd238) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd245);
    acc = acc + m_hist[idx] + 32'd252;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_4 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd124);
    acc = acc + m_hist[idx] + 32'd131;
    idx = (idx + acc + 32'd138) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd145);
    acc = acc + m_hist[idx] + 32'd152;
    idx = (idx + acc + 32'd159) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd166);
    acc = acc + m_hist[idx] + 32'd173;
    idx = (idx + acc + 32'd180) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd187);
    acc = acc + m_hist[idx] + 32'd194;
    idx = (idx + acc + 32'd201) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd208);
    acc = acc + m_hist[idx] + 32'd215;
    idx = (idx + acc + 32'd222) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd229);
    acc = acc + m_hist[idx] + 32'd236;
    idx = (idx + acc + 32'd243) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd250);
    acc = acc + m_hist[idx] + 32'd257;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd137);
    acc = acc + m_hist[idx] + 32'd144;
    idx = (idx + acc + 32'd151) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd158);
    acc = acc + m_hist[idx] + 32'd165;
    idx = (idx + acc + 32'd172) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd179);
    acc = acc + m_hist[idx] + 32'd186;
    idx = (idx + acc + 32'd193) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd200);
    acc = acc + m_hist[idx] + 32'd207;
    idx = (idx + acc + 32'd214) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd221);
    acc = acc + m_hist[idx] + 32'd228;
    idx = (idx + acc + 32'd235) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd242);
    acc = acc + m_hist[idx] + 32'd249;
    idx = (idx + acc + 32'd256) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd263);
    acc = acc + m_hist[idx] + 32'd270;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd150);
    acc = acc + m_hist[idx] + 32'd157;
    idx = (idx + acc + 32'd164) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd171);
    acc = acc + m_hist[idx] + 32'd178;
    idx = (idx + acc + 32'd185) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd192);
    acc = acc + m_hist[idx] + 32'd199;
    idx = (idx + acc + 32'd206) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd213);
    acc = acc + m_hist[idx] + 32'd220;
    idx = (idx + acc + 32'd227) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd234);
    acc = acc + m_hist[idx] + 32'd241;
    idx = (idx + acc + 32'd248) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd255);
    acc = acc + m_hist[idx] + 32'd262;
    idx = (idx + acc + 32'd269) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd276);
    acc = acc + m_hist[idx] + 32'd283;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_5 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd155);
    acc = acc + m_hist[idx] + 32'd162;
    idx = (idx + acc + 32'd169) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd176);
    acc = acc + m_hist[idx] + 32'd183;
    idx = (idx + acc + 32'd190) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd197);
    acc = acc + m_hist[idx] + 32'd204;
    idx = (idx + acc + 32'd211) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd218);
    acc = acc + m_hist[idx] + 32'd225;
    idx = (idx + acc + 32'd232) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd239);
    acc = acc + m_hist[idx] + 32'd246;
    idx = (idx + acc + 32'd253) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd260);
    acc = acc + m_hist[idx] + 32'd267;
    idx = (idx + acc + 32'd274) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd281);
    acc = acc + m_hist[idx] + 32'd288;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd168);
    acc = acc + m_hist[idx] + 32'd175;
    idx = (idx + acc + 32'd182) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd189);
    acc = acc + m_hist[idx] + 32'd196;
    idx = (idx + acc + 32'd203) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd210);
    acc = acc + m_hist[idx] + 32'd217;
    idx = (idx + acc + 32'd224) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd231);
    acc = acc + m_hist[idx] + 32'd238;
    idx = (idx + acc + 32'd245) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd252);
    acc = acc + m_hist[idx] + 32'd259;
    idx = (idx + acc + 32'd266) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd273);
    acc = acc + m_hist[idx] + 32'd280;
    idx = (idx + acc + 32'd287) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd294);
    acc = acc + m_hist[idx] + 32'd301;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd181);
    acc = acc + m_hist[idx] + 32'd188;
    idx = (idx + acc + 32'd195) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd202);
    acc = acc + m_hist[idx] + 32'd209;
    idx = (idx + acc + 32'd216) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd223);
    acc = acc + m_hist[idx] + 32'd230;
    idx = (idx + acc + 32'd237) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd244);
    acc = acc + m_hist[idx] + 32'd251;
    idx = (idx + acc + 32'd258) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd265);
    acc = acc + m_hist[idx] + 32'd272;
    idx = (idx + acc + 32'd279) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd286);
    acc = acc + m_hist[idx] + 32'd293;
    idx = (idx + acc + 32'd300) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd307);
    acc = acc + m_hist[idx] + 32'd314;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_6 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd186);
    acc = acc + m_hist[idx] + 32'd193;
    idx = (idx + acc + 32'd200) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd207);
    acc = acc + m_hist[idx] + 32'd214;
    idx = (idx + acc + 32'd221) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd228);
    acc = acc + m_hist[idx] + 32'd235;
    idx = (idx + acc + 32'd242) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd249);
    acc = acc + m_hist[idx] + 32'd256;
    idx = (idx + acc + 32'd263) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd270);
    acc = acc + m_hist[idx] + 32'd277;
    idx = (idx + acc + 32'd284) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd291);
    acc = acc + m_hist[idx] + 32'd298;
    idx = (idx + acc + 32'd305) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd312);
    acc = acc + m_hist[idx] + 32'd319;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd199);
    acc = acc + m_hist[idx] + 32'd206;
    idx = (idx + acc + 32'd213) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd220);
    acc = acc + m_hist[idx] + 32'd227;
    idx = (idx + acc + 32'd234) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd241);
    acc = acc + m_hist[idx] + 32'd248;
    idx = (idx + acc + 32'd255) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd262);
    acc = acc + m_hist[idx] + 32'd269;
    idx = (idx + acc + 32'd276) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd283);
    acc = acc + m_hist[idx] + 32'd290;
    idx = (idx + acc + 32'd297) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd304);
    acc = acc + m_hist[idx] + 32'd311;
    idx = (idx + acc + 32'd318) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd325);
    acc = acc + m_hist[idx] + 32'd332;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd212);
    acc = acc + m_hist[idx] + 32'd219;
    idx = (idx + acc + 32'd226) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd233);
    acc = acc + m_hist[idx] + 32'd240;
    idx = (idx + acc + 32'd247) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd254);
    acc = acc + m_hist[idx] + 32'd261;
    idx = (idx + acc + 32'd268) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd275);
    acc = acc + m_hist[idx] + 32'd282;
    idx = (idx + acc + 32'd289) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd296);
    acc = acc + m_hist[idx] + 32'd303;
    idx = (idx + acc + 32'd310) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd317);
    acc = acc + m_hist[idx] + 32'd324;
    idx = (idx + acc + 32'd331) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd338);
    acc = acc + m_hist[idx] + 32'd345;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_7 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd217);
    acc = acc + m_hist[idx] + 32'd224;
    idx = (idx + acc + 32'd231) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd238);
    acc = acc + m_hist[idx] + 32'd245;
    idx = (idx + acc + 32'd252) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd259);
    acc = acc + m_hist[idx] + 32'd266;
    idx = (idx + acc + 32'd273) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd280);
    acc = acc + m_hist[idx] + 32'd287;
    idx = (idx + acc + 32'd294) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd301);
    acc = acc + m_hist[idx] + 32'd308;
    idx = (idx + acc + 32'd315) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd322);
    acc = acc + m_hist[idx] + 32'd329;
    idx = (idx + acc + 32'd336) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd343);
    acc = acc + m_hist[idx] + 32'd350;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd230);
    acc = acc + m_hist[idx] + 32'd237;
    idx = (idx + acc + 32'd244) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd251);
    acc = acc + m_hist[idx] + 32'd258;
    idx = (idx + acc + 32'd265) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd272);
    acc = acc + m_hist[idx] + 32'd279;
    idx = (idx + acc + 32'd286) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd293);
    acc = acc + m_hist[idx] + 32'd300;
    idx = (idx + acc + 32'd307) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd314);
    acc = acc + m_hist[idx] + 32'd321;
    idx = (idx + acc + 32'd328) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd335);
    acc = acc + m_hist[idx] + 32'd342;
    idx = (idx + acc + 32'd349) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd356);
    acc = acc + m_hist[idx] + 32'd363;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd243);
    acc = acc + m_hist[idx] + 32'd250;
    idx = (idx + acc + 32'd257) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd264);
    acc = acc + m_hist[idx] + 32'd271;
    idx = (idx + acc + 32'd278) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd285);
    acc = acc + m_hist[idx] + 32'd292;
    idx = (idx + acc + 32'd299) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd306);
    acc = acc + m_hist[idx] + 32'd313;
    idx = (idx + acc + 32'd320) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd327);
    acc = acc + m_hist[idx] + 32'd334;
    idx = (idx + acc + 32'd341) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd348);
    acc = acc + m_hist[idx] + 32'd355;
    idx = (idx + acc + 32'd362) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd369);
    acc = acc + m_hist[idx] + 32'd376;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_8 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd248);
    acc = acc + m_hist[idx] + 32'd255;
    idx = (idx + acc + 32'd262) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd269);
    acc = acc + m_hist[idx] + 32'd276;
    idx = (idx + acc + 32'd283) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd290);
    acc = acc + m_hist[idx] + 32'd297;
    idx = (idx + acc + 32'd304) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd311);
    acc = acc + m_hist[idx] + 32'd318;
    idx = (idx + acc + 32'd325) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd332);
    acc = acc + m_hist[idx] + 32'd339;
    idx = (idx + acc + 32'd346) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd353);
    acc = acc + m_hist[idx] + 32'd360;
    idx = (idx + acc + 32'd367) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd374);
    acc = acc + m_hist[idx] + 32'd381;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd261);
    acc = acc + m_hist[idx] + 32'd268;
    idx = (idx + acc + 32'd275) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd282);
    acc = acc + m_hist[idx] + 32'd289;
    idx = (idx + acc + 32'd296) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd303);
    acc = acc + m_hist[idx] + 32'd310;
    idx = (idx + acc + 32'd317) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd324);
    acc = acc + m_hist[idx] + 32'd331;
    idx = (idx + acc + 32'd338) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd345);
    acc = acc + m_hist[idx] + 32'd352;
    idx = (idx + acc + 32'd359) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd366);
    acc = acc + m_hist[idx] + 32'd373;
    idx = (idx + acc + 32'd380) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd387);
    acc = acc + m_hist[idx] + 32'd394;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd274);
    acc = acc + m_hist[idx] + 32'd281;
    idx = (idx + acc + 32'd288) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd295);
    acc = acc + m_hist[idx] + 32'd302;
    idx = (idx + acc + 32'd309) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd316);
    acc = acc + m_hist[idx] + 32'd323;
    idx = (idx + acc + 32'd330) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd337);
    acc = acc + m_hist[idx] + 32'd344;
    idx = (idx + acc + 32'd351) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd358);
    acc = acc + m_hist[idx] + 32'd365;
    idx = (idx + acc + 32'd372) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd379);
    acc = acc + m_hist[idx] + 32'd386;
    idx = (idx + acc + 32'd393) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd400);
    acc = acc + m_hist[idx] + 32'd407;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_9 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd279);
    acc = acc + m_hist[idx] + 32'd286;
    idx = (idx + acc + 32'd293) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd300);
    acc = acc + m_hist[idx] + 32'd307;
    idx = (idx + acc + 32'd314) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd321);
    acc = acc + m_hist[idx] + 32'd328;
    idx = (idx + acc + 32'd335) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd342);
    acc = acc + m_hist[idx] + 32'd349;
    idx = (idx + acc + 32'd356) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd363);
    acc = acc + m_hist[idx] + 32'd370;
    idx = (idx + acc + 32'd377) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd384);
    acc = acc + m_hist[idx] + 32'd391;
    idx = (idx + acc + 32'd398) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd405);
    acc = acc + m_hist[idx] + 32'd412;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd292);
    acc = acc + m_hist[idx] + 32'd299;
    idx = (idx + acc + 32'd306) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd313);
    acc = acc + m_hist[idx] + 32'd320;
    idx = (idx + acc + 32'd327) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd334);
    acc = acc + m_hist[idx] + 32'd341;
    idx = (idx + acc + 32'd348) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd355);
    acc = acc + m_hist[idx] + 32'd362;
    idx = (idx + acc + 32'd369) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd376);
    acc = acc + m_hist[idx] + 32'd383;
    idx = (idx + acc + 32'd390) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd397);
    acc = acc + m_hist[idx] + 32'd404;
    idx = (idx + acc + 32'd411) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd418);
    acc = acc + m_hist[idx] + 32'd425;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd305);
    acc = acc + m_hist[idx] + 32'd312;
    idx = (idx + acc + 32'd319) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd326);
    acc = acc + m_hist[idx] + 32'd333;
    idx = (idx + acc + 32'd340) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd347);
    acc = acc + m_hist[idx] + 32'd354;
    idx = (idx + acc + 32'd361) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd368);
    acc = acc + m_hist[idx] + 32'd375;
    idx = (idx + acc + 32'd382) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd389);
    acc = acc + m_hist[idx] + 32'd396;
    idx = (idx + acc + 32'd403) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd410);
    acc = acc + m_hist[idx] + 32'd417;
    idx = (idx + acc + 32'd424) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd431);
    acc = acc + m_hist[idx] + 32'd438;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_10 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd310);
    acc = acc + m_hist[idx] + 32'd317;
    idx = (idx + acc + 32'd324) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd331);
    acc = acc + m_hist[idx] + 32'd338;
    idx = (idx + acc + 32'd345) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd352);
    acc = acc + m_hist[idx] + 32'd359;
    idx = (idx + acc + 32'd366) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd373);
    acc = acc + m_hist[idx] + 32'd380;
    idx = (idx + acc + 32'd387) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd394);
    acc = acc + m_hist[idx] + 32'd401;
    idx = (idx + acc + 32'd408) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd415);
    acc = acc + m_hist[idx] + 32'd422;
    idx = (idx + acc + 32'd429) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd436);
    acc = acc + m_hist[idx] + 32'd443;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd323);
    acc = acc + m_hist[idx] + 32'd330;
    idx = (idx + acc + 32'd337) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd344);
    acc = acc + m_hist[idx] + 32'd351;
    idx = (idx + acc + 32'd358) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd365);
    acc = acc + m_hist[idx] + 32'd372;
    idx = (idx + acc + 32'd379) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd386);
    acc = acc + m_hist[idx] + 32'd393;
    idx = (idx + acc + 32'd400) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd407);
    acc = acc + m_hist[idx] + 32'd414;
    idx = (idx + acc + 32'd421) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd428);
    acc = acc + m_hist[idx] + 32'd435;
    idx = (idx + acc + 32'd442) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd449);
    acc = acc + m_hist[idx] + 32'd456;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd336);
    acc = acc + m_hist[idx] + 32'd343;
    idx = (idx + acc + 32'd350) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd357);
    acc = acc + m_hist[idx] + 32'd364;
    idx = (idx + acc + 32'd371) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd378);
    acc = acc + m_hist[idx] + 32'd385;
    idx = (idx + acc + 32'd392) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd399);
    acc = acc + m_hist[idx] + 32'd406;
    idx = (idx + acc + 32'd413) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd420);
    acc = acc + m_hist[idx] + 32'd427;
    idx = (idx + acc + 32'd434) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd441);
    acc = acc + m_hist[idx] + 32'd448;
    idx = (idx + acc + 32'd455) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd462);
    acc = acc + m_hist[idx] + 32'd469;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_11 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd341);
    acc = acc + m_hist[idx] + 32'd348;
    idx = (idx + acc + 32'd355) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd362);
    acc = acc + m_hist[idx] + 32'd369;
    idx = (idx + acc + 32'd376) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd383);
    acc = acc + m_hist[idx] + 32'd390;
    idx = (idx + acc + 32'd397) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd404);
    acc = acc + m_hist[idx] + 32'd411;
    idx = (idx + acc + 32'd418) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd425);
    acc = acc + m_hist[idx] + 32'd432;
    idx = (idx + acc + 32'd439) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd446);
    acc = acc + m_hist[idx] + 32'd453;
    idx = (idx + acc + 32'd460) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd467);
    acc = acc + m_hist[idx] + 32'd474;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd354);
    acc = acc + m_hist[idx] + 32'd361;
    idx = (idx + acc + 32'd368) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd375);
    acc = acc + m_hist[idx] + 32'd382;
    idx = (idx + acc + 32'd389) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd396);
    acc = acc + m_hist[idx] + 32'd403;
    idx = (idx + acc + 32'd410) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd417);
    acc = acc + m_hist[idx] + 32'd424;
    idx = (idx + acc + 32'd431) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd438);
    acc = acc + m_hist[idx] + 32'd445;
    idx = (idx + acc + 32'd452) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd459);
    acc = acc + m_hist[idx] + 32'd466;
    idx = (idx + acc + 32'd473) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd480);
    acc = acc + m_hist[idx] + 32'd487;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd367);
    acc = acc + m_hist[idx] + 32'd374;
    idx = (idx + acc + 32'd381) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd388);
    acc = acc + m_hist[idx] + 32'd395;
    idx = (idx + acc + 32'd402) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd409);
    acc = acc + m_hist[idx] + 32'd416;
    idx = (idx + acc + 32'd423) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd430);
    acc = acc + m_hist[idx] + 32'd437;
    idx = (idx + acc + 32'd444) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd451);
    acc = acc + m_hist[idx] + 32'd458;
    idx = (idx + acc + 32'd465) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd472);
    acc = acc + m_hist[idx] + 32'd479;
    idx = (idx + acc + 32'd486) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd493);
    acc = acc + m_hist[idx] + 32'd500;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_12 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd372);
    acc = acc + m_hist[idx] + 32'd379;
    idx = (idx + acc + 32'd386) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd393);
    acc = acc + m_hist[idx] + 32'd400;
    idx = (idx + acc + 32'd407) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd414);
    acc = acc + m_hist[idx] + 32'd421;
    idx = (idx + acc + 32'd428) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd435);
    acc = acc + m_hist[idx] + 32'd442;
    idx = (idx + acc + 32'd449) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd456);
    acc = acc + m_hist[idx] + 32'd463;
    idx = (idx + acc + 32'd470) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd477);
    acc = acc + m_hist[idx] + 32'd484;
    idx = (idx + acc + 32'd491) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd498);
    acc = acc + m_hist[idx] + 32'd505;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd385);
    acc = acc + m_hist[idx] + 32'd392;
    idx = (idx + acc + 32'd399) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd406);
    acc = acc + m_hist[idx] + 32'd413;
    idx = (idx + acc + 32'd420) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd427);
    acc = acc + m_hist[idx] + 32'd434;
    idx = (idx + acc + 32'd441) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd448);
    acc = acc + m_hist[idx] + 32'd455;
    idx = (idx + acc + 32'd462) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd469);
    acc = acc + m_hist[idx] + 32'd476;
    idx = (idx + acc + 32'd483) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd490);
    acc = acc + m_hist[idx] + 32'd497;
    idx = (idx + acc + 32'd504) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd511);
    acc = acc + m_hist[idx] + 32'd518;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd398);
    acc = acc + m_hist[idx] + 32'd405;
    idx = (idx + acc + 32'd412) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd419);
    acc = acc + m_hist[idx] + 32'd426;
    idx = (idx + acc + 32'd433) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd440);
    acc = acc + m_hist[idx] + 32'd447;
    idx = (idx + acc + 32'd454) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd461);
    acc = acc + m_hist[idx] + 32'd468;
    idx = (idx + acc + 32'd475) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd482);
    acc = acc + m_hist[idx] + 32'd489;
    idx = (idx + acc + 32'd496) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd503);
    acc = acc + m_hist[idx] + 32'd510;
    idx = (idx + acc + 32'd517) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd524);
    acc = acc + m_hist[idx] + 32'd531;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_13 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd403);
    acc = acc + m_hist[idx] + 32'd410;
    idx = (idx + acc + 32'd417) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd424);
    acc = acc + m_hist[idx] + 32'd431;
    idx = (idx + acc + 32'd438) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd445);
    acc = acc + m_hist[idx] + 32'd452;
    idx = (idx + acc + 32'd459) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd466);
    acc = acc + m_hist[idx] + 32'd473;
    idx = (idx + acc + 32'd480) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd487);
    acc = acc + m_hist[idx] + 32'd494;
    idx = (idx + acc + 32'd501) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd508);
    acc = acc + m_hist[idx] + 32'd515;
    idx = (idx + acc + 32'd522) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd529);
    acc = acc + m_hist[idx] + 32'd536;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd416);
    acc = acc + m_hist[idx] + 32'd423;
    idx = (idx + acc + 32'd430) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd437);
    acc = acc + m_hist[idx] + 32'd444;
    idx = (idx + acc + 32'd451) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd458);
    acc = acc + m_hist[idx] + 32'd465;
    idx = (idx + acc + 32'd472) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd479);
    acc = acc + m_hist[idx] + 32'd486;
    idx = (idx + acc + 32'd493) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd500);
    acc = acc + m_hist[idx] + 32'd507;
    idx = (idx + acc + 32'd514) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd521);
    acc = acc + m_hist[idx] + 32'd528;
    idx = (idx + acc + 32'd535) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd542);
    acc = acc + m_hist[idx] + 32'd549;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd429);
    acc = acc + m_hist[idx] + 32'd436;
    idx = (idx + acc + 32'd443) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd450);
    acc = acc + m_hist[idx] + 32'd457;
    idx = (idx + acc + 32'd464) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd471);
    acc = acc + m_hist[idx] + 32'd478;
    idx = (idx + acc + 32'd485) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd492);
    acc = acc + m_hist[idx] + 32'd499;
    idx = (idx + acc + 32'd506) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd513);
    acc = acc + m_hist[idx] + 32'd520;
    idx = (idx + acc + 32'd527) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd534);
    acc = acc + m_hist[idx] + 32'd541;
    idx = (idx + acc + 32'd548) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd555);
    acc = acc + m_hist[idx] + 32'd562;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_14 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd434);
    acc = acc + m_hist[idx] + 32'd441;
    idx = (idx + acc + 32'd448) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd455);
    acc = acc + m_hist[idx] + 32'd462;
    idx = (idx + acc + 32'd469) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd476);
    acc = acc + m_hist[idx] + 32'd483;
    idx = (idx + acc + 32'd490) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd497);
    acc = acc + m_hist[idx] + 32'd504;
    idx = (idx + acc + 32'd511) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd518);
    acc = acc + m_hist[idx] + 32'd525;
    idx = (idx + acc + 32'd532) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd539);
    acc = acc + m_hist[idx] + 32'd546;
    idx = (idx + acc + 32'd553) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd560);
    acc = acc + m_hist[idx] + 32'd567;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd447);
    acc = acc + m_hist[idx] + 32'd454;
    idx = (idx + acc + 32'd461) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd468);
    acc = acc + m_hist[idx] + 32'd475;
    idx = (idx + acc + 32'd482) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd489);
    acc = acc + m_hist[idx] + 32'd496;
    idx = (idx + acc + 32'd503) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd510);
    acc = acc + m_hist[idx] + 32'd517;
    idx = (idx + acc + 32'd524) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd531);
    acc = acc + m_hist[idx] + 32'd538;
    idx = (idx + acc + 32'd545) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd552);
    acc = acc + m_hist[idx] + 32'd559;
    idx = (idx + acc + 32'd566) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd573);
    acc = acc + m_hist[idx] + 32'd580;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd460);
    acc = acc + m_hist[idx] + 32'd467;
    idx = (idx + acc + 32'd474) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd481);
    acc = acc + m_hist[idx] + 32'd488;
    idx = (idx + acc + 32'd495) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd502);
    acc = acc + m_hist[idx] + 32'd509;
    idx = (idx + acc + 32'd516) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd523);
    acc = acc + m_hist[idx] + 32'd530;
    idx = (idx + acc + 32'd537) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd544);
    acc = acc + m_hist[idx] + 32'd551;
    idx = (idx + acc + 32'd558) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd565);
    acc = acc + m_hist[idx] + 32'd572;
    idx = (idx + acc + 32'd579) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd586);
    acc = acc + m_hist[idx] + 32'd593;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_15 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd465);
    acc = acc + m_hist[idx] + 32'd472;
    idx = (idx + acc + 32'd479) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd486);
    acc = acc + m_hist[idx] + 32'd493;
    idx = (idx + acc + 32'd500) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd507);
    acc = acc + m_hist[idx] + 32'd514;
    idx = (idx + acc + 32'd521) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd528);
    acc = acc + m_hist[idx] + 32'd535;
    idx = (idx + acc + 32'd542) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd549);
    acc = acc + m_hist[idx] + 32'd556;
    idx = (idx + acc + 32'd563) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd570);
    acc = acc + m_hist[idx] + 32'd577;
    idx = (idx + acc + 32'd584) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd591);
    acc = acc + m_hist[idx] + 32'd598;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd478);
    acc = acc + m_hist[idx] + 32'd485;
    idx = (idx + acc + 32'd492) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd499);
    acc = acc + m_hist[idx] + 32'd506;
    idx = (idx + acc + 32'd513) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd520);
    acc = acc + m_hist[idx] + 32'd527;
    idx = (idx + acc + 32'd534) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd541);
    acc = acc + m_hist[idx] + 32'd548;
    idx = (idx + acc + 32'd555) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd562);
    acc = acc + m_hist[idx] + 32'd569;
    idx = (idx + acc + 32'd576) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd583);
    acc = acc + m_hist[idx] + 32'd590;
    idx = (idx + acc + 32'd597) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd604);
    acc = acc + m_hist[idx] + 32'd611;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd491);
    acc = acc + m_hist[idx] + 32'd498;
    idx = (idx + acc + 32'd505) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd512);
    acc = acc + m_hist[idx] + 32'd519;
    idx = (idx + acc + 32'd526) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd533);
    acc = acc + m_hist[idx] + 32'd540;
    idx = (idx + acc + 32'd547) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd554);
    acc = acc + m_hist[idx] + 32'd561;
    idx = (idx + acc + 32'd568) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd575);
    acc = acc + m_hist[idx] + 32'd582;
    idx = (idx + acc + 32'd589) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd596);
    acc = acc + m_hist[idx] + 32'd603;
    idx = (idx + acc + 32'd610) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd617);
    acc = acc + m_hist[idx] + 32'd624;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_16 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd496);
    acc = acc + m_hist[idx] + 32'd503;
    idx = (idx + acc + 32'd510) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd517);
    acc = acc + m_hist[idx] + 32'd524;
    idx = (idx + acc + 32'd531) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd538);
    acc = acc + m_hist[idx] + 32'd545;
    idx = (idx + acc + 32'd552) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd559);
    acc = acc + m_hist[idx] + 32'd566;
    idx = (idx + acc + 32'd573) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd580);
    acc = acc + m_hist[idx] + 32'd587;
    idx = (idx + acc + 32'd594) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd601);
    acc = acc + m_hist[idx] + 32'd608;
    idx = (idx + acc + 32'd615) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd622);
    acc = acc + m_hist[idx] + 32'd629;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd509);
    acc = acc + m_hist[idx] + 32'd516;
    idx = (idx + acc + 32'd523) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd530);
    acc = acc + m_hist[idx] + 32'd537;
    idx = (idx + acc + 32'd544) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd551);
    acc = acc + m_hist[idx] + 32'd558;
    idx = (idx + acc + 32'd565) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd572);
    acc = acc + m_hist[idx] + 32'd579;
    idx = (idx + acc + 32'd586) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd593);
    acc = acc + m_hist[idx] + 32'd600;
    idx = (idx + acc + 32'd607) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd614);
    acc = acc + m_hist[idx] + 32'd621;
    idx = (idx + acc + 32'd628) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd635);
    acc = acc + m_hist[idx] + 32'd642;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd522);
    acc = acc + m_hist[idx] + 32'd529;
    idx = (idx + acc + 32'd536) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd543);
    acc = acc + m_hist[idx] + 32'd550;
    idx = (idx + acc + 32'd557) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd564);
    acc = acc + m_hist[idx] + 32'd571;
    idx = (idx + acc + 32'd578) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd585);
    acc = acc + m_hist[idx] + 32'd592;
    idx = (idx + acc + 32'd599) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd606);
    acc = acc + m_hist[idx] + 32'd613;
    idx = (idx + acc + 32'd620) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd627);
    acc = acc + m_hist[idx] + 32'd634;
    idx = (idx + acc + 32'd641) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd648);
    acc = acc + m_hist[idx] + 32'd655;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_17 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd527);
    acc = acc + m_hist[idx] + 32'd534;
    idx = (idx + acc + 32'd541) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd548);
    acc = acc + m_hist[idx] + 32'd555;
    idx = (idx + acc + 32'd562) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd569);
    acc = acc + m_hist[idx] + 32'd576;
    idx = (idx + acc + 32'd583) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd590);
    acc = acc + m_hist[idx] + 32'd597;
    idx = (idx + acc + 32'd604) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd611);
    acc = acc + m_hist[idx] + 32'd618;
    idx = (idx + acc + 32'd625) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd632);
    acc = acc + m_hist[idx] + 32'd639;
    idx = (idx + acc + 32'd646) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd653);
    acc = acc + m_hist[idx] + 32'd660;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd540);
    acc = acc + m_hist[idx] + 32'd547;
    idx = (idx + acc + 32'd554) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd561);
    acc = acc + m_hist[idx] + 32'd568;
    idx = (idx + acc + 32'd575) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd582);
    acc = acc + m_hist[idx] + 32'd589;
    idx = (idx + acc + 32'd596) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd603);
    acc = acc + m_hist[idx] + 32'd610;
    idx = (idx + acc + 32'd617) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd624);
    acc = acc + m_hist[idx] + 32'd631;
    idx = (idx + acc + 32'd638) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd645);
    acc = acc + m_hist[idx] + 32'd652;
    idx = (idx + acc + 32'd659) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd666);
    acc = acc + m_hist[idx] + 32'd673;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd553);
    acc = acc + m_hist[idx] + 32'd560;
    idx = (idx + acc + 32'd567) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd574);
    acc = acc + m_hist[idx] + 32'd581;
    idx = (idx + acc + 32'd588) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd595);
    acc = acc + m_hist[idx] + 32'd602;
    idx = (idx + acc + 32'd609) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd616);
    acc = acc + m_hist[idx] + 32'd623;
    idx = (idx + acc + 32'd630) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd637);
    acc = acc + m_hist[idx] + 32'd644;
    idx = (idx + acc + 32'd651) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd658);
    acc = acc + m_hist[idx] + 32'd665;
    idx = (idx + acc + 32'd672) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd679);
    acc = acc + m_hist[idx] + 32'd686;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_18 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd558);
    acc = acc + m_hist[idx] + 32'd565;
    idx = (idx + acc + 32'd572) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd579);
    acc = acc + m_hist[idx] + 32'd586;
    idx = (idx + acc + 32'd593) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd600);
    acc = acc + m_hist[idx] + 32'd607;
    idx = (idx + acc + 32'd614) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd621);
    acc = acc + m_hist[idx] + 32'd628;
    idx = (idx + acc + 32'd635) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd642);
    acc = acc + m_hist[idx] + 32'd649;
    idx = (idx + acc + 32'd656) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd663);
    acc = acc + m_hist[idx] + 32'd670;
    idx = (idx + acc + 32'd677) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd684);
    acc = acc + m_hist[idx] + 32'd691;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd571);
    acc = acc + m_hist[idx] + 32'd578;
    idx = (idx + acc + 32'd585) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd592);
    acc = acc + m_hist[idx] + 32'd599;
    idx = (idx + acc + 32'd606) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd613);
    acc = acc + m_hist[idx] + 32'd620;
    idx = (idx + acc + 32'd627) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd634);
    acc = acc + m_hist[idx] + 32'd641;
    idx = (idx + acc + 32'd648) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd655);
    acc = acc + m_hist[idx] + 32'd662;
    idx = (idx + acc + 32'd669) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd676);
    acc = acc + m_hist[idx] + 32'd683;
    idx = (idx + acc + 32'd690) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd697);
    acc = acc + m_hist[idx] + 32'd704;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd584);
    acc = acc + m_hist[idx] + 32'd591;
    idx = (idx + acc + 32'd598) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd605);
    acc = acc + m_hist[idx] + 32'd612;
    idx = (idx + acc + 32'd619) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd626);
    acc = acc + m_hist[idx] + 32'd633;
    idx = (idx + acc + 32'd640) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd647);
    acc = acc + m_hist[idx] + 32'd654;
    idx = (idx + acc + 32'd661) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd668);
    acc = acc + m_hist[idx] + 32'd675;
    idx = (idx + acc + 32'd682) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd689);
    acc = acc + m_hist[idx] + 32'd696;
    idx = (idx + acc + 32'd703) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd710);
    acc = acc + m_hist[idx] + 32'd717;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_19 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd589);
    acc = acc + m_hist[idx] + 32'd596;
    idx = (idx + acc + 32'd603) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd610);
    acc = acc + m_hist[idx] + 32'd617;
    idx = (idx + acc + 32'd624) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd631);
    acc = acc + m_hist[idx] + 32'd638;
    idx = (idx + acc + 32'd645) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd652);
    acc = acc + m_hist[idx] + 32'd659;
    idx = (idx + acc + 32'd666) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd673);
    acc = acc + m_hist[idx] + 32'd680;
    idx = (idx + acc + 32'd687) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd694);
    acc = acc + m_hist[idx] + 32'd701;
    idx = (idx + acc + 32'd708) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd715);
    acc = acc + m_hist[idx] + 32'd722;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd602);
    acc = acc + m_hist[idx] + 32'd609;
    idx = (idx + acc + 32'd616) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd623);
    acc = acc + m_hist[idx] + 32'd630;
    idx = (idx + acc + 32'd637) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd644);
    acc = acc + m_hist[idx] + 32'd651;
    idx = (idx + acc + 32'd658) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd665);
    acc = acc + m_hist[idx] + 32'd672;
    idx = (idx + acc + 32'd679) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd686);
    acc = acc + m_hist[idx] + 32'd693;
    idx = (idx + acc + 32'd700) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd707);
    acc = acc + m_hist[idx] + 32'd714;
    idx = (idx + acc + 32'd721) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd728);
    acc = acc + m_hist[idx] + 32'd735;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd615);
    acc = acc + m_hist[idx] + 32'd622;
    idx = (idx + acc + 32'd629) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd636);
    acc = acc + m_hist[idx] + 32'd643;
    idx = (idx + acc + 32'd650) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd657);
    acc = acc + m_hist[idx] + 32'd664;
    idx = (idx + acc + 32'd671) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd678);
    acc = acc + m_hist[idx] + 32'd685;
    idx = (idx + acc + 32'd692) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd699);
    acc = acc + m_hist[idx] + 32'd706;
    idx = (idx + acc + 32'd713) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd720);
    acc = acc + m_hist[idx] + 32'd727;
    idx = (idx + acc + 32'd734) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd741);
    acc = acc + m_hist[idx] + 32'd748;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_20 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd620);
    acc = acc + m_hist[idx] + 32'd627;
    idx = (idx + acc + 32'd634) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd641);
    acc = acc + m_hist[idx] + 32'd648;
    idx = (idx + acc + 32'd655) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd662);
    acc = acc + m_hist[idx] + 32'd669;
    idx = (idx + acc + 32'd676) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd683);
    acc = acc + m_hist[idx] + 32'd690;
    idx = (idx + acc + 32'd697) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd704);
    acc = acc + m_hist[idx] + 32'd711;
    idx = (idx + acc + 32'd718) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd725);
    acc = acc + m_hist[idx] + 32'd732;
    idx = (idx + acc + 32'd739) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd746);
    acc = acc + m_hist[idx] + 32'd753;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd633);
    acc = acc + m_hist[idx] + 32'd640;
    idx = (idx + acc + 32'd647) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd654);
    acc = acc + m_hist[idx] + 32'd661;
    idx = (idx + acc + 32'd668) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd675);
    acc = acc + m_hist[idx] + 32'd682;
    idx = (idx + acc + 32'd689) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd696);
    acc = acc + m_hist[idx] + 32'd703;
    idx = (idx + acc + 32'd710) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd717);
    acc = acc + m_hist[idx] + 32'd724;
    idx = (idx + acc + 32'd731) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd738);
    acc = acc + m_hist[idx] + 32'd745;
    idx = (idx + acc + 32'd752) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd759);
    acc = acc + m_hist[idx] + 32'd766;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd646);
    acc = acc + m_hist[idx] + 32'd653;
    idx = (idx + acc + 32'd660) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd667);
    acc = acc + m_hist[idx] + 32'd674;
    idx = (idx + acc + 32'd681) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd688);
    acc = acc + m_hist[idx] + 32'd695;
    idx = (idx + acc + 32'd702) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd709);
    acc = acc + m_hist[idx] + 32'd716;
    idx = (idx + acc + 32'd723) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd730);
    acc = acc + m_hist[idx] + 32'd737;
    idx = (idx + acc + 32'd744) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd751);
    acc = acc + m_hist[idx] + 32'd758;
    idx = (idx + acc + 32'd765) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd772);
    acc = acc + m_hist[idx] + 32'd779;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_21 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd651);
    acc = acc + m_hist[idx] + 32'd658;
    idx = (idx + acc + 32'd665) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd672);
    acc = acc + m_hist[idx] + 32'd679;
    idx = (idx + acc + 32'd686) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd693);
    acc = acc + m_hist[idx] + 32'd700;
    idx = (idx + acc + 32'd707) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd714);
    acc = acc + m_hist[idx] + 32'd721;
    idx = (idx + acc + 32'd728) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd735);
    acc = acc + m_hist[idx] + 32'd742;
    idx = (idx + acc + 32'd749) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd756);
    acc = acc + m_hist[idx] + 32'd763;
    idx = (idx + acc + 32'd770) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd777);
    acc = acc + m_hist[idx] + 32'd784;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd664);
    acc = acc + m_hist[idx] + 32'd671;
    idx = (idx + acc + 32'd678) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd685);
    acc = acc + m_hist[idx] + 32'd692;
    idx = (idx + acc + 32'd699) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd706);
    acc = acc + m_hist[idx] + 32'd713;
    idx = (idx + acc + 32'd720) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd727);
    acc = acc + m_hist[idx] + 32'd734;
    idx = (idx + acc + 32'd741) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd748);
    acc = acc + m_hist[idx] + 32'd755;
    idx = (idx + acc + 32'd762) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd769);
    acc = acc + m_hist[idx] + 32'd776;
    idx = (idx + acc + 32'd783) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd790);
    acc = acc + m_hist[idx] + 32'd797;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd677);
    acc = acc + m_hist[idx] + 32'd684;
    idx = (idx + acc + 32'd691) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd698);
    acc = acc + m_hist[idx] + 32'd705;
    idx = (idx + acc + 32'd712) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd719);
    acc = acc + m_hist[idx] + 32'd726;
    idx = (idx + acc + 32'd733) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd740);
    acc = acc + m_hist[idx] + 32'd747;
    idx = (idx + acc + 32'd754) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd761);
    acc = acc + m_hist[idx] + 32'd768;
    idx = (idx + acc + 32'd775) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd782);
    acc = acc + m_hist[idx] + 32'd789;
    idx = (idx + acc + 32'd796) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd803);
    acc = acc + m_hist[idx] + 32'd810;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_22 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd682);
    acc = acc + m_hist[idx] + 32'd689;
    idx = (idx + acc + 32'd696) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd703);
    acc = acc + m_hist[idx] + 32'd710;
    idx = (idx + acc + 32'd717) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd724);
    acc = acc + m_hist[idx] + 32'd731;
    idx = (idx + acc + 32'd738) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd745);
    acc = acc + m_hist[idx] + 32'd752;
    idx = (idx + acc + 32'd759) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd766);
    acc = acc + m_hist[idx] + 32'd773;
    idx = (idx + acc + 32'd780) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd787);
    acc = acc + m_hist[idx] + 32'd794;
    idx = (idx + acc + 32'd801) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd808);
    acc = acc + m_hist[idx] + 32'd815;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd695);
    acc = acc + m_hist[idx] + 32'd702;
    idx = (idx + acc + 32'd709) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd716);
    acc = acc + m_hist[idx] + 32'd723;
    idx = (idx + acc + 32'd730) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd737);
    acc = acc + m_hist[idx] + 32'd744;
    idx = (idx + acc + 32'd751) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd758);
    acc = acc + m_hist[idx] + 32'd765;
    idx = (idx + acc + 32'd772) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd779);
    acc = acc + m_hist[idx] + 32'd786;
    idx = (idx + acc + 32'd793) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd800);
    acc = acc + m_hist[idx] + 32'd807;
    idx = (idx + acc + 32'd814) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd821);
    acc = acc + m_hist[idx] + 32'd828;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd708);
    acc = acc + m_hist[idx] + 32'd715;
    idx = (idx + acc + 32'd722) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd729);
    acc = acc + m_hist[idx] + 32'd736;
    idx = (idx + acc + 32'd743) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd750);
    acc = acc + m_hist[idx] + 32'd757;
    idx = (idx + acc + 32'd764) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd771);
    acc = acc + m_hist[idx] + 32'd778;
    idx = (idx + acc + 32'd785) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd792);
    acc = acc + m_hist[idx] + 32'd799;
    idx = (idx + acc + 32'd806) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd813);
    acc = acc + m_hist[idx] + 32'd820;
    idx = (idx + acc + 32'd827) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd834);
    acc = acc + m_hist[idx] + 32'd841;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_23 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd713);
    acc = acc + m_hist[idx] + 32'd720;
    idx = (idx + acc + 32'd727) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd734);
    acc = acc + m_hist[idx] + 32'd741;
    idx = (idx + acc + 32'd748) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd755);
    acc = acc + m_hist[idx] + 32'd762;
    idx = (idx + acc + 32'd769) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd776);
    acc = acc + m_hist[idx] + 32'd783;
    idx = (idx + acc + 32'd790) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd797);
    acc = acc + m_hist[idx] + 32'd804;
    idx = (idx + acc + 32'd811) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd818);
    acc = acc + m_hist[idx] + 32'd825;
    idx = (idx + acc + 32'd832) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd839);
    acc = acc + m_hist[idx] + 32'd846;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd726);
    acc = acc + m_hist[idx] + 32'd733;
    idx = (idx + acc + 32'd740) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd747);
    acc = acc + m_hist[idx] + 32'd754;
    idx = (idx + acc + 32'd761) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd768);
    acc = acc + m_hist[idx] + 32'd775;
    idx = (idx + acc + 32'd782) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd789);
    acc = acc + m_hist[idx] + 32'd796;
    idx = (idx + acc + 32'd803) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd810);
    acc = acc + m_hist[idx] + 32'd817;
    idx = (idx + acc + 32'd824) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd831);
    acc = acc + m_hist[idx] + 32'd838;
    idx = (idx + acc + 32'd845) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd852);
    acc = acc + m_hist[idx] + 32'd859;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd739);
    acc = acc + m_hist[idx] + 32'd746;
    idx = (idx + acc + 32'd753) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd760);
    acc = acc + m_hist[idx] + 32'd767;
    idx = (idx + acc + 32'd774) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd781);
    acc = acc + m_hist[idx] + 32'd788;
    idx = (idx + acc + 32'd795) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd802);
    acc = acc + m_hist[idx] + 32'd809;
    idx = (idx + acc + 32'd816) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd823);
    acc = acc + m_hist[idx] + 32'd830;
    idx = (idx + acc + 32'd837) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd844);
    acc = acc + m_hist[idx] + 32'd851;
    idx = (idx + acc + 32'd858) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd865);
    acc = acc + m_hist[idx] + 32'd872;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_24 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd744);
    acc = acc + m_hist[idx] + 32'd751;
    idx = (idx + acc + 32'd758) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd765);
    acc = acc + m_hist[idx] + 32'd772;
    idx = (idx + acc + 32'd779) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd786);
    acc = acc + m_hist[idx] + 32'd793;
    idx = (idx + acc + 32'd800) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd807);
    acc = acc + m_hist[idx] + 32'd814;
    idx = (idx + acc + 32'd821) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd828);
    acc = acc + m_hist[idx] + 32'd835;
    idx = (idx + acc + 32'd842) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd849);
    acc = acc + m_hist[idx] + 32'd856;
    idx = (idx + acc + 32'd863) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd870);
    acc = acc + m_hist[idx] + 32'd877;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd757);
    acc = acc + m_hist[idx] + 32'd764;
    idx = (idx + acc + 32'd771) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd778);
    acc = acc + m_hist[idx] + 32'd785;
    idx = (idx + acc + 32'd792) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd799);
    acc = acc + m_hist[idx] + 32'd806;
    idx = (idx + acc + 32'd813) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd820);
    acc = acc + m_hist[idx] + 32'd827;
    idx = (idx + acc + 32'd834) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd841);
    acc = acc + m_hist[idx] + 32'd848;
    idx = (idx + acc + 32'd855) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd862);
    acc = acc + m_hist[idx] + 32'd869;
    idx = (idx + acc + 32'd876) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd883);
    acc = acc + m_hist[idx] + 32'd890;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd770);
    acc = acc + m_hist[idx] + 32'd777;
    idx = (idx + acc + 32'd784) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd791);
    acc = acc + m_hist[idx] + 32'd798;
    idx = (idx + acc + 32'd805) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd812);
    acc = acc + m_hist[idx] + 32'd819;
    idx = (idx + acc + 32'd826) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd833);
    acc = acc + m_hist[idx] + 32'd840;
    idx = (idx + acc + 32'd847) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd854);
    acc = acc + m_hist[idx] + 32'd861;
    idx = (idx + acc + 32'd868) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd875);
    acc = acc + m_hist[idx] + 32'd882;
    idx = (idx + acc + 32'd889) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd896);
    acc = acc + m_hist[idx] + 32'd903;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_25 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd775);
    acc = acc + m_hist[idx] + 32'd782;
    idx = (idx + acc + 32'd789) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd796);
    acc = acc + m_hist[idx] + 32'd803;
    idx = (idx + acc + 32'd810) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd817);
    acc = acc + m_hist[idx] + 32'd824;
    idx = (idx + acc + 32'd831) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd838);
    acc = acc + m_hist[idx] + 32'd845;
    idx = (idx + acc + 32'd852) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd859);
    acc = acc + m_hist[idx] + 32'd866;
    idx = (idx + acc + 32'd873) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd880);
    acc = acc + m_hist[idx] + 32'd887;
    idx = (idx + acc + 32'd894) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd901);
    acc = acc + m_hist[idx] + 32'd908;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd788);
    acc = acc + m_hist[idx] + 32'd795;
    idx = (idx + acc + 32'd802) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd809);
    acc = acc + m_hist[idx] + 32'd816;
    idx = (idx + acc + 32'd823) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd830);
    acc = acc + m_hist[idx] + 32'd837;
    idx = (idx + acc + 32'd844) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd851);
    acc = acc + m_hist[idx] + 32'd858;
    idx = (idx + acc + 32'd865) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd872);
    acc = acc + m_hist[idx] + 32'd879;
    idx = (idx + acc + 32'd886) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd893);
    acc = acc + m_hist[idx] + 32'd900;
    idx = (idx + acc + 32'd907) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd914);
    acc = acc + m_hist[idx] + 32'd921;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd801);
    acc = acc + m_hist[idx] + 32'd808;
    idx = (idx + acc + 32'd815) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd822);
    acc = acc + m_hist[idx] + 32'd829;
    idx = (idx + acc + 32'd836) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd843);
    acc = acc + m_hist[idx] + 32'd850;
    idx = (idx + acc + 32'd857) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd864);
    acc = acc + m_hist[idx] + 32'd871;
    idx = (idx + acc + 32'd878) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd885);
    acc = acc + m_hist[idx] + 32'd892;
    idx = (idx + acc + 32'd899) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd906);
    acc = acc + m_hist[idx] + 32'd913;
    idx = (idx + acc + 32'd920) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd927);
    acc = acc + m_hist[idx] + 32'd934;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_26 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd806);
    acc = acc + m_hist[idx] + 32'd813;
    idx = (idx + acc + 32'd820) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd827);
    acc = acc + m_hist[idx] + 32'd834;
    idx = (idx + acc + 32'd841) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd848);
    acc = acc + m_hist[idx] + 32'd855;
    idx = (idx + acc + 32'd862) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd869);
    acc = acc + m_hist[idx] + 32'd876;
    idx = (idx + acc + 32'd883) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd890);
    acc = acc + m_hist[idx] + 32'd897;
    idx = (idx + acc + 32'd904) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd911);
    acc = acc + m_hist[idx] + 32'd918;
    idx = (idx + acc + 32'd925) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd932);
    acc = acc + m_hist[idx] + 32'd939;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd819);
    acc = acc + m_hist[idx] + 32'd826;
    idx = (idx + acc + 32'd833) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd840);
    acc = acc + m_hist[idx] + 32'd847;
    idx = (idx + acc + 32'd854) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd861);
    acc = acc + m_hist[idx] + 32'd868;
    idx = (idx + acc + 32'd875) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd882);
    acc = acc + m_hist[idx] + 32'd889;
    idx = (idx + acc + 32'd896) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd903);
    acc = acc + m_hist[idx] + 32'd910;
    idx = (idx + acc + 32'd917) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd924);
    acc = acc + m_hist[idx] + 32'd931;
    idx = (idx + acc + 32'd938) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd945);
    acc = acc + m_hist[idx] + 32'd952;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd832);
    acc = acc + m_hist[idx] + 32'd839;
    idx = (idx + acc + 32'd846) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd853);
    acc = acc + m_hist[idx] + 32'd860;
    idx = (idx + acc + 32'd867) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd874);
    acc = acc + m_hist[idx] + 32'd881;
    idx = (idx + acc + 32'd888) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd895);
    acc = acc + m_hist[idx] + 32'd902;
    idx = (idx + acc + 32'd909) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd916);
    acc = acc + m_hist[idx] + 32'd923;
    idx = (idx + acc + 32'd930) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd937);
    acc = acc + m_hist[idx] + 32'd944;
    idx = (idx + acc + 32'd951) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd958);
    acc = acc + m_hist[idx] + 32'd965;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_27 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd837);
    acc = acc + m_hist[idx] + 32'd844;
    idx = (idx + acc + 32'd851) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd858);
    acc = acc + m_hist[idx] + 32'd865;
    idx = (idx + acc + 32'd872) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd879);
    acc = acc + m_hist[idx] + 32'd886;
    idx = (idx + acc + 32'd893) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd900);
    acc = acc + m_hist[idx] + 32'd907;
    idx = (idx + acc + 32'd914) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd921);
    acc = acc + m_hist[idx] + 32'd928;
    idx = (idx + acc + 32'd935) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd942);
    acc = acc + m_hist[idx] + 32'd949;
    idx = (idx + acc + 32'd956) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd963);
    acc = acc + m_hist[idx] + 32'd970;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd850);
    acc = acc + m_hist[idx] + 32'd857;
    idx = (idx + acc + 32'd864) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd871);
    acc = acc + m_hist[idx] + 32'd878;
    idx = (idx + acc + 32'd885) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd892);
    acc = acc + m_hist[idx] + 32'd899;
    idx = (idx + acc + 32'd906) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd913);
    acc = acc + m_hist[idx] + 32'd920;
    idx = (idx + acc + 32'd927) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd934);
    acc = acc + m_hist[idx] + 32'd941;
    idx = (idx + acc + 32'd948) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd955);
    acc = acc + m_hist[idx] + 32'd962;
    idx = (idx + acc + 32'd969) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd976);
    acc = acc + m_hist[idx] + 32'd983;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd863);
    acc = acc + m_hist[idx] + 32'd870;
    idx = (idx + acc + 32'd877) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd884);
    acc = acc + m_hist[idx] + 32'd891;
    idx = (idx + acc + 32'd898) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd905);
    acc = acc + m_hist[idx] + 32'd912;
    idx = (idx + acc + 32'd919) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd926);
    acc = acc + m_hist[idx] + 32'd933;
    idx = (idx + acc + 32'd940) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd947);
    acc = acc + m_hist[idx] + 32'd954;
    idx = (idx + acc + 32'd961) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd968);
    acc = acc + m_hist[idx] + 32'd975;
    idx = (idx + acc + 32'd982) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd989);
    acc = acc + m_hist[idx] + 32'd996;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_28 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd868);
    acc = acc + m_hist[idx] + 32'd875;
    idx = (idx + acc + 32'd882) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd889);
    acc = acc + m_hist[idx] + 32'd896;
    idx = (idx + acc + 32'd903) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd910);
    acc = acc + m_hist[idx] + 32'd917;
    idx = (idx + acc + 32'd924) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd931);
    acc = acc + m_hist[idx] + 32'd938;
    idx = (idx + acc + 32'd945) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd952);
    acc = acc + m_hist[idx] + 32'd959;
    idx = (idx + acc + 32'd966) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd973);
    acc = acc + m_hist[idx] + 32'd980;
    idx = (idx + acc + 32'd987) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd994);
    acc = acc + m_hist[idx] + 32'd1001;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd881);
    acc = acc + m_hist[idx] + 32'd888;
    idx = (idx + acc + 32'd895) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd902);
    acc = acc + m_hist[idx] + 32'd909;
    idx = (idx + acc + 32'd916) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd923);
    acc = acc + m_hist[idx] + 32'd930;
    idx = (idx + acc + 32'd937) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd944);
    acc = acc + m_hist[idx] + 32'd951;
    idx = (idx + acc + 32'd958) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd965);
    acc = acc + m_hist[idx] + 32'd972;
    idx = (idx + acc + 32'd979) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd986);
    acc = acc + m_hist[idx] + 32'd993;
    idx = (idx + acc + 32'd1000) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1007);
    acc = acc + m_hist[idx] + 32'd1014;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd894);
    acc = acc + m_hist[idx] + 32'd901;
    idx = (idx + acc + 32'd908) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd915);
    acc = acc + m_hist[idx] + 32'd922;
    idx = (idx + acc + 32'd929) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd936);
    acc = acc + m_hist[idx] + 32'd943;
    idx = (idx + acc + 32'd950) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd957);
    acc = acc + m_hist[idx] + 32'd964;
    idx = (idx + acc + 32'd971) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd978);
    acc = acc + m_hist[idx] + 32'd985;
    idx = (idx + acc + 32'd992) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd999);
    acc = acc + m_hist[idx] + 32'd1006;
    idx = (idx + acc + 32'd1013) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1020);
    acc = acc + m_hist[idx] + 32'd1027;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_29 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd899);
    acc = acc + m_hist[idx] + 32'd906;
    idx = (idx + acc + 32'd913) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd920);
    acc = acc + m_hist[idx] + 32'd927;
    idx = (idx + acc + 32'd934) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd941);
    acc = acc + m_hist[idx] + 32'd948;
    idx = (idx + acc + 32'd955) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd962);
    acc = acc + m_hist[idx] + 32'd969;
    idx = (idx + acc + 32'd976) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd983);
    acc = acc + m_hist[idx] + 32'd990;
    idx = (idx + acc + 32'd997) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1004);
    acc = acc + m_hist[idx] + 32'd1011;
    idx = (idx + acc + 32'd1018) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1025);
    acc = acc + m_hist[idx] + 32'd1032;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd912);
    acc = acc + m_hist[idx] + 32'd919;
    idx = (idx + acc + 32'd926) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd933);
    acc = acc + m_hist[idx] + 32'd940;
    idx = (idx + acc + 32'd947) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd954);
    acc = acc + m_hist[idx] + 32'd961;
    idx = (idx + acc + 32'd968) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd975);
    acc = acc + m_hist[idx] + 32'd982;
    idx = (idx + acc + 32'd989) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd996);
    acc = acc + m_hist[idx] + 32'd1003;
    idx = (idx + acc + 32'd1010) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1017);
    acc = acc + m_hist[idx] + 32'd1024;
    idx = (idx + acc + 32'd1031) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1038);
    acc = acc + m_hist[idx] + 32'd1045;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd925);
    acc = acc + m_hist[idx] + 32'd932;
    idx = (idx + acc + 32'd939) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd946);
    acc = acc + m_hist[idx] + 32'd953;
    idx = (idx + acc + 32'd960) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd967);
    acc = acc + m_hist[idx] + 32'd974;
    idx = (idx + acc + 32'd981) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd988);
    acc = acc + m_hist[idx] + 32'd995;
    idx = (idx + acc + 32'd1002) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1009);
    acc = acc + m_hist[idx] + 32'd1016;
    idx = (idx + acc + 32'd1023) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1030);
    acc = acc + m_hist[idx] + 32'd1037;
    idx = (idx + acc + 32'd1044) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1051);
    acc = acc + m_hist[idx] + 32'd1058;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_30 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd930);
    acc = acc + m_hist[idx] + 32'd937;
    idx = (idx + acc + 32'd944) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd951);
    acc = acc + m_hist[idx] + 32'd958;
    idx = (idx + acc + 32'd965) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd972);
    acc = acc + m_hist[idx] + 32'd979;
    idx = (idx + acc + 32'd986) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd993);
    acc = acc + m_hist[idx] + 32'd1000;
    idx = (idx + acc + 32'd1007) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1014);
    acc = acc + m_hist[idx] + 32'd1021;
    idx = (idx + acc + 32'd1028) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1035);
    acc = acc + m_hist[idx] + 32'd1042;
    idx = (idx + acc + 32'd1049) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1056);
    acc = acc + m_hist[idx] + 32'd1063;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd943);
    acc = acc + m_hist[idx] + 32'd950;
    idx = (idx + acc + 32'd957) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd964);
    acc = acc + m_hist[idx] + 32'd971;
    idx = (idx + acc + 32'd978) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd985);
    acc = acc + m_hist[idx] + 32'd992;
    idx = (idx + acc + 32'd999) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1006);
    acc = acc + m_hist[idx] + 32'd1013;
    idx = (idx + acc + 32'd1020) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1027);
    acc = acc + m_hist[idx] + 32'd1034;
    idx = (idx + acc + 32'd1041) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1048);
    acc = acc + m_hist[idx] + 32'd1055;
    idx = (idx + acc + 32'd1062) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1069);
    acc = acc + m_hist[idx] + 32'd1076;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd956);
    acc = acc + m_hist[idx] + 32'd963;
    idx = (idx + acc + 32'd970) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd977);
    acc = acc + m_hist[idx] + 32'd984;
    idx = (idx + acc + 32'd991) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd998);
    acc = acc + m_hist[idx] + 32'd1005;
    idx = (idx + acc + 32'd1012) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1019);
    acc = acc + m_hist[idx] + 32'd1026;
    idx = (idx + acc + 32'd1033) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1040);
    acc = acc + m_hist[idx] + 32'd1047;
    idx = (idx + acc + 32'd1054) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1061);
    acc = acc + m_hist[idx] + 32'd1068;
    idx = (idx + acc + 32'd1075) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1082);
    acc = acc + m_hist[idx] + 32'd1089;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_31 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd961);
    acc = acc + m_hist[idx] + 32'd968;
    idx = (idx + acc + 32'd975) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd982);
    acc = acc + m_hist[idx] + 32'd989;
    idx = (idx + acc + 32'd996) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1003);
    acc = acc + m_hist[idx] + 32'd1010;
    idx = (idx + acc + 32'd1017) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1024);
    acc = acc + m_hist[idx] + 32'd1031;
    idx = (idx + acc + 32'd1038) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1045);
    acc = acc + m_hist[idx] + 32'd1052;
    idx = (idx + acc + 32'd1059) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1066);
    acc = acc + m_hist[idx] + 32'd1073;
    idx = (idx + acc + 32'd1080) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1087);
    acc = acc + m_hist[idx] + 32'd1094;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd974);
    acc = acc + m_hist[idx] + 32'd981;
    idx = (idx + acc + 32'd988) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd995);
    acc = acc + m_hist[idx] + 32'd1002;
    idx = (idx + acc + 32'd1009) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1016);
    acc = acc + m_hist[idx] + 32'd1023;
    idx = (idx + acc + 32'd1030) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1037);
    acc = acc + m_hist[idx] + 32'd1044;
    idx = (idx + acc + 32'd1051) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1058);
    acc = acc + m_hist[idx] + 32'd1065;
    idx = (idx + acc + 32'd1072) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1079);
    acc = acc + m_hist[idx] + 32'd1086;
    idx = (idx + acc + 32'd1093) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1100);
    acc = acc + m_hist[idx] + 32'd1107;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd987);
    acc = acc + m_hist[idx] + 32'd994;
    idx = (idx + acc + 32'd1001) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1008);
    acc = acc + m_hist[idx] + 32'd1015;
    idx = (idx + acc + 32'd1022) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1029);
    acc = acc + m_hist[idx] + 32'd1036;
    idx = (idx + acc + 32'd1043) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1050);
    acc = acc + m_hist[idx] + 32'd1057;
    idx = (idx + acc + 32'd1064) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1071);
    acc = acc + m_hist[idx] + 32'd1078;
    idx = (idx + acc + 32'd1085) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1092);
    acc = acc + m_hist[idx] + 32'd1099;
    idx = (idx + acc + 32'd1106) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1113);
    acc = acc + m_hist[idx] + 32'd1120;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_32 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd992);
    acc = acc + m_hist[idx] + 32'd999;
    idx = (idx + acc + 32'd1006) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1013);
    acc = acc + m_hist[idx] + 32'd1020;
    idx = (idx + acc + 32'd1027) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1034);
    acc = acc + m_hist[idx] + 32'd1041;
    idx = (idx + acc + 32'd1048) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1055);
    acc = acc + m_hist[idx] + 32'd1062;
    idx = (idx + acc + 32'd1069) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1076);
    acc = acc + m_hist[idx] + 32'd1083;
    idx = (idx + acc + 32'd1090) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1097);
    acc = acc + m_hist[idx] + 32'd1104;
    idx = (idx + acc + 32'd1111) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1118);
    acc = acc + m_hist[idx] + 32'd1125;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1005);
    acc = acc + m_hist[idx] + 32'd1012;
    idx = (idx + acc + 32'd1019) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1026);
    acc = acc + m_hist[idx] + 32'd1033;
    idx = (idx + acc + 32'd1040) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1047);
    acc = acc + m_hist[idx] + 32'd1054;
    idx = (idx + acc + 32'd1061) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1068);
    acc = acc + m_hist[idx] + 32'd1075;
    idx = (idx + acc + 32'd1082) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1089);
    acc = acc + m_hist[idx] + 32'd1096;
    idx = (idx + acc + 32'd1103) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1110);
    acc = acc + m_hist[idx] + 32'd1117;
    idx = (idx + acc + 32'd1124) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1131);
    acc = acc + m_hist[idx] + 32'd1138;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1018);
    acc = acc + m_hist[idx] + 32'd1025;
    idx = (idx + acc + 32'd1032) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1039);
    acc = acc + m_hist[idx] + 32'd1046;
    idx = (idx + acc + 32'd1053) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1060);
    acc = acc + m_hist[idx] + 32'd1067;
    idx = (idx + acc + 32'd1074) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1081);
    acc = acc + m_hist[idx] + 32'd1088;
    idx = (idx + acc + 32'd1095) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1102);
    acc = acc + m_hist[idx] + 32'd1109;
    idx = (idx + acc + 32'd1116) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1123);
    acc = acc + m_hist[idx] + 32'd1130;
    idx = (idx + acc + 32'd1137) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1144);
    acc = acc + m_hist[idx] + 32'd1151;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_33 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1023);
    acc = acc + m_hist[idx] + 32'd1030;
    idx = (idx + acc + 32'd1037) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1044);
    acc = acc + m_hist[idx] + 32'd1051;
    idx = (idx + acc + 32'd1058) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1065);
    acc = acc + m_hist[idx] + 32'd1072;
    idx = (idx + acc + 32'd1079) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1086);
    acc = acc + m_hist[idx] + 32'd1093;
    idx = (idx + acc + 32'd1100) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1107);
    acc = acc + m_hist[idx] + 32'd1114;
    idx = (idx + acc + 32'd1121) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1128);
    acc = acc + m_hist[idx] + 32'd1135;
    idx = (idx + acc + 32'd1142) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1149);
    acc = acc + m_hist[idx] + 32'd1156;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1036);
    acc = acc + m_hist[idx] + 32'd1043;
    idx = (idx + acc + 32'd1050) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1057);
    acc = acc + m_hist[idx] + 32'd1064;
    idx = (idx + acc + 32'd1071) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1078);
    acc = acc + m_hist[idx] + 32'd1085;
    idx = (idx + acc + 32'd1092) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1099);
    acc = acc + m_hist[idx] + 32'd1106;
    idx = (idx + acc + 32'd1113) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1120);
    acc = acc + m_hist[idx] + 32'd1127;
    idx = (idx + acc + 32'd1134) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1141);
    acc = acc + m_hist[idx] + 32'd1148;
    idx = (idx + acc + 32'd1155) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1162);
    acc = acc + m_hist[idx] + 32'd1169;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1049);
    acc = acc + m_hist[idx] + 32'd1056;
    idx = (idx + acc + 32'd1063) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1070);
    acc = acc + m_hist[idx] + 32'd1077;
    idx = (idx + acc + 32'd1084) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1091);
    acc = acc + m_hist[idx] + 32'd1098;
    idx = (idx + acc + 32'd1105) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1112);
    acc = acc + m_hist[idx] + 32'd1119;
    idx = (idx + acc + 32'd1126) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1133);
    acc = acc + m_hist[idx] + 32'd1140;
    idx = (idx + acc + 32'd1147) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1154);
    acc = acc + m_hist[idx] + 32'd1161;
    idx = (idx + acc + 32'd1168) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1175);
    acc = acc + m_hist[idx] + 32'd1182;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_34 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1054);
    acc = acc + m_hist[idx] + 32'd1061;
    idx = (idx + acc + 32'd1068) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1075);
    acc = acc + m_hist[idx] + 32'd1082;
    idx = (idx + acc + 32'd1089) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1096);
    acc = acc + m_hist[idx] + 32'd1103;
    idx = (idx + acc + 32'd1110) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1117);
    acc = acc + m_hist[idx] + 32'd1124;
    idx = (idx + acc + 32'd1131) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1138);
    acc = acc + m_hist[idx] + 32'd1145;
    idx = (idx + acc + 32'd1152) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1159);
    acc = acc + m_hist[idx] + 32'd1166;
    idx = (idx + acc + 32'd1173) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1180);
    acc = acc + m_hist[idx] + 32'd1187;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1067);
    acc = acc + m_hist[idx] + 32'd1074;
    idx = (idx + acc + 32'd1081) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1088);
    acc = acc + m_hist[idx] + 32'd1095;
    idx = (idx + acc + 32'd1102) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1109);
    acc = acc + m_hist[idx] + 32'd1116;
    idx = (idx + acc + 32'd1123) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1130);
    acc = acc + m_hist[idx] + 32'd1137;
    idx = (idx + acc + 32'd1144) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1151);
    acc = acc + m_hist[idx] + 32'd1158;
    idx = (idx + acc + 32'd1165) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1172);
    acc = acc + m_hist[idx] + 32'd1179;
    idx = (idx + acc + 32'd1186) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1193);
    acc = acc + m_hist[idx] + 32'd1200;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1080);
    acc = acc + m_hist[idx] + 32'd1087;
    idx = (idx + acc + 32'd1094) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1101);
    acc = acc + m_hist[idx] + 32'd1108;
    idx = (idx + acc + 32'd1115) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1122);
    acc = acc + m_hist[idx] + 32'd1129;
    idx = (idx + acc + 32'd1136) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1143);
    acc = acc + m_hist[idx] + 32'd1150;
    idx = (idx + acc + 32'd1157) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1164);
    acc = acc + m_hist[idx] + 32'd1171;
    idx = (idx + acc + 32'd1178) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1185);
    acc = acc + m_hist[idx] + 32'd1192;
    idx = (idx + acc + 32'd1199) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1206);
    acc = acc + m_hist[idx] + 32'd1213;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_35 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1085);
    acc = acc + m_hist[idx] + 32'd1092;
    idx = (idx + acc + 32'd1099) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1106);
    acc = acc + m_hist[idx] + 32'd1113;
    idx = (idx + acc + 32'd1120) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1127);
    acc = acc + m_hist[idx] + 32'd1134;
    idx = (idx + acc + 32'd1141) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1148);
    acc = acc + m_hist[idx] + 32'd1155;
    idx = (idx + acc + 32'd1162) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1169);
    acc = acc + m_hist[idx] + 32'd1176;
    idx = (idx + acc + 32'd1183) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1190);
    acc = acc + m_hist[idx] + 32'd1197;
    idx = (idx + acc + 32'd1204) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1211);
    acc = acc + m_hist[idx] + 32'd1218;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1098);
    acc = acc + m_hist[idx] + 32'd1105;
    idx = (idx + acc + 32'd1112) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1119);
    acc = acc + m_hist[idx] + 32'd1126;
    idx = (idx + acc + 32'd1133) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1140);
    acc = acc + m_hist[idx] + 32'd1147;
    idx = (idx + acc + 32'd1154) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1161);
    acc = acc + m_hist[idx] + 32'd1168;
    idx = (idx + acc + 32'd1175) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1182);
    acc = acc + m_hist[idx] + 32'd1189;
    idx = (idx + acc + 32'd1196) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1203);
    acc = acc + m_hist[idx] + 32'd1210;
    idx = (idx + acc + 32'd1217) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1224);
    acc = acc + m_hist[idx] + 32'd1231;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1111);
    acc = acc + m_hist[idx] + 32'd1118;
    idx = (idx + acc + 32'd1125) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1132);
    acc = acc + m_hist[idx] + 32'd1139;
    idx = (idx + acc + 32'd1146) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1153);
    acc = acc + m_hist[idx] + 32'd1160;
    idx = (idx + acc + 32'd1167) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1174);
    acc = acc + m_hist[idx] + 32'd1181;
    idx = (idx + acc + 32'd1188) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1195);
    acc = acc + m_hist[idx] + 32'd1202;
    idx = (idx + acc + 32'd1209) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1216);
    acc = acc + m_hist[idx] + 32'd1223;
    idx = (idx + acc + 32'd1230) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1237);
    acc = acc + m_hist[idx] + 32'd1244;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_36 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1116);
    acc = acc + m_hist[idx] + 32'd1123;
    idx = (idx + acc + 32'd1130) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1137);
    acc = acc + m_hist[idx] + 32'd1144;
    idx = (idx + acc + 32'd1151) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1158);
    acc = acc + m_hist[idx] + 32'd1165;
    idx = (idx + acc + 32'd1172) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1179);
    acc = acc + m_hist[idx] + 32'd1186;
    idx = (idx + acc + 32'd1193) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1200);
    acc = acc + m_hist[idx] + 32'd1207;
    idx = (idx + acc + 32'd1214) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1221);
    acc = acc + m_hist[idx] + 32'd1228;
    idx = (idx + acc + 32'd1235) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1242);
    acc = acc + m_hist[idx] + 32'd1249;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1129);
    acc = acc + m_hist[idx] + 32'd1136;
    idx = (idx + acc + 32'd1143) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1150);
    acc = acc + m_hist[idx] + 32'd1157;
    idx = (idx + acc + 32'd1164) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1171);
    acc = acc + m_hist[idx] + 32'd1178;
    idx = (idx + acc + 32'd1185) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1192);
    acc = acc + m_hist[idx] + 32'd1199;
    idx = (idx + acc + 32'd1206) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1213);
    acc = acc + m_hist[idx] + 32'd1220;
    idx = (idx + acc + 32'd1227) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1234);
    acc = acc + m_hist[idx] + 32'd1241;
    idx = (idx + acc + 32'd1248) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1255);
    acc = acc + m_hist[idx] + 32'd1262;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1142);
    acc = acc + m_hist[idx] + 32'd1149;
    idx = (idx + acc + 32'd1156) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1163);
    acc = acc + m_hist[idx] + 32'd1170;
    idx = (idx + acc + 32'd1177) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1184);
    acc = acc + m_hist[idx] + 32'd1191;
    idx = (idx + acc + 32'd1198) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1205);
    acc = acc + m_hist[idx] + 32'd1212;
    idx = (idx + acc + 32'd1219) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1226);
    acc = acc + m_hist[idx] + 32'd1233;
    idx = (idx + acc + 32'd1240) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1247);
    acc = acc + m_hist[idx] + 32'd1254;
    idx = (idx + acc + 32'd1261) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1268);
    acc = acc + m_hist[idx] + 32'd1275;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_37 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1147);
    acc = acc + m_hist[idx] + 32'd1154;
    idx = (idx + acc + 32'd1161) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1168);
    acc = acc + m_hist[idx] + 32'd1175;
    idx = (idx + acc + 32'd1182) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1189);
    acc = acc + m_hist[idx] + 32'd1196;
    idx = (idx + acc + 32'd1203) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1210);
    acc = acc + m_hist[idx] + 32'd1217;
    idx = (idx + acc + 32'd1224) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1231);
    acc = acc + m_hist[idx] + 32'd1238;
    idx = (idx + acc + 32'd1245) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1252);
    acc = acc + m_hist[idx] + 32'd1259;
    idx = (idx + acc + 32'd1266) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1273);
    acc = acc + m_hist[idx] + 32'd1280;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1160);
    acc = acc + m_hist[idx] + 32'd1167;
    idx = (idx + acc + 32'd1174) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1181);
    acc = acc + m_hist[idx] + 32'd1188;
    idx = (idx + acc + 32'd1195) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1202);
    acc = acc + m_hist[idx] + 32'd1209;
    idx = (idx + acc + 32'd1216) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1223);
    acc = acc + m_hist[idx] + 32'd1230;
    idx = (idx + acc + 32'd1237) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1244);
    acc = acc + m_hist[idx] + 32'd1251;
    idx = (idx + acc + 32'd1258) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1265);
    acc = acc + m_hist[idx] + 32'd1272;
    idx = (idx + acc + 32'd1279) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1286);
    acc = acc + m_hist[idx] + 32'd1293;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1173);
    acc = acc + m_hist[idx] + 32'd1180;
    idx = (idx + acc + 32'd1187) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1194);
    acc = acc + m_hist[idx] + 32'd1201;
    idx = (idx + acc + 32'd1208) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1215);
    acc = acc + m_hist[idx] + 32'd1222;
    idx = (idx + acc + 32'd1229) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1236);
    acc = acc + m_hist[idx] + 32'd1243;
    idx = (idx + acc + 32'd1250) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1257);
    acc = acc + m_hist[idx] + 32'd1264;
    idx = (idx + acc + 32'd1271) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1278);
    acc = acc + m_hist[idx] + 32'd1285;
    idx = (idx + acc + 32'd1292) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1299);
    acc = acc + m_hist[idx] + 32'd1306;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_38 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1178);
    acc = acc + m_hist[idx] + 32'd1185;
    idx = (idx + acc + 32'd1192) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1199);
    acc = acc + m_hist[idx] + 32'd1206;
    idx = (idx + acc + 32'd1213) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1220);
    acc = acc + m_hist[idx] + 32'd1227;
    idx = (idx + acc + 32'd1234) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1241);
    acc = acc + m_hist[idx] + 32'd1248;
    idx = (idx + acc + 32'd1255) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1262);
    acc = acc + m_hist[idx] + 32'd1269;
    idx = (idx + acc + 32'd1276) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1283);
    acc = acc + m_hist[idx] + 32'd1290;
    idx = (idx + acc + 32'd1297) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1304);
    acc = acc + m_hist[idx] + 32'd1311;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1191);
    acc = acc + m_hist[idx] + 32'd1198;
    idx = (idx + acc + 32'd1205) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1212);
    acc = acc + m_hist[idx] + 32'd1219;
    idx = (idx + acc + 32'd1226) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1233);
    acc = acc + m_hist[idx] + 32'd1240;
    idx = (idx + acc + 32'd1247) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1254);
    acc = acc + m_hist[idx] + 32'd1261;
    idx = (idx + acc + 32'd1268) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1275);
    acc = acc + m_hist[idx] + 32'd1282;
    idx = (idx + acc + 32'd1289) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1296);
    acc = acc + m_hist[idx] + 32'd1303;
    idx = (idx + acc + 32'd1310) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1317);
    acc = acc + m_hist[idx] + 32'd1324;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1204);
    acc = acc + m_hist[idx] + 32'd1211;
    idx = (idx + acc + 32'd1218) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1225);
    acc = acc + m_hist[idx] + 32'd1232;
    idx = (idx + acc + 32'd1239) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1246);
    acc = acc + m_hist[idx] + 32'd1253;
    idx = (idx + acc + 32'd1260) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1267);
    acc = acc + m_hist[idx] + 32'd1274;
    idx = (idx + acc + 32'd1281) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1288);
    acc = acc + m_hist[idx] + 32'd1295;
    idx = (idx + acc + 32'd1302) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1309);
    acc = acc + m_hist[idx] + 32'd1316;
    idx = (idx + acc + 32'd1323) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1330);
    acc = acc + m_hist[idx] + 32'd1337;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_39 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1209);
    acc = acc + m_hist[idx] + 32'd1216;
    idx = (idx + acc + 32'd1223) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1230);
    acc = acc + m_hist[idx] + 32'd1237;
    idx = (idx + acc + 32'd1244) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1251);
    acc = acc + m_hist[idx] + 32'd1258;
    idx = (idx + acc + 32'd1265) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1272);
    acc = acc + m_hist[idx] + 32'd1279;
    idx = (idx + acc + 32'd1286) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1293);
    acc = acc + m_hist[idx] + 32'd1300;
    idx = (idx + acc + 32'd1307) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1314);
    acc = acc + m_hist[idx] + 32'd1321;
    idx = (idx + acc + 32'd1328) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1335);
    acc = acc + m_hist[idx] + 32'd1342;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1222);
    acc = acc + m_hist[idx] + 32'd1229;
    idx = (idx + acc + 32'd1236) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1243);
    acc = acc + m_hist[idx] + 32'd1250;
    idx = (idx + acc + 32'd1257) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1264);
    acc = acc + m_hist[idx] + 32'd1271;
    idx = (idx + acc + 32'd1278) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1285);
    acc = acc + m_hist[idx] + 32'd1292;
    idx = (idx + acc + 32'd1299) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1306);
    acc = acc + m_hist[idx] + 32'd1313;
    idx = (idx + acc + 32'd1320) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1327);
    acc = acc + m_hist[idx] + 32'd1334;
    idx = (idx + acc + 32'd1341) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1348);
    acc = acc + m_hist[idx] + 32'd1355;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1235);
    acc = acc + m_hist[idx] + 32'd1242;
    idx = (idx + acc + 32'd1249) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1256);
    acc = acc + m_hist[idx] + 32'd1263;
    idx = (idx + acc + 32'd1270) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1277);
    acc = acc + m_hist[idx] + 32'd1284;
    idx = (idx + acc + 32'd1291) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1298);
    acc = acc + m_hist[idx] + 32'd1305;
    idx = (idx + acc + 32'd1312) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1319);
    acc = acc + m_hist[idx] + 32'd1326;
    idx = (idx + acc + 32'd1333) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1340);
    acc = acc + m_hist[idx] + 32'd1347;
    idx = (idx + acc + 32'd1354) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1361);
    acc = acc + m_hist[idx] + 32'd1368;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_40 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1240);
    acc = acc + m_hist[idx] + 32'd1247;
    idx = (idx + acc + 32'd1254) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1261);
    acc = acc + m_hist[idx] + 32'd1268;
    idx = (idx + acc + 32'd1275) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1282);
    acc = acc + m_hist[idx] + 32'd1289;
    idx = (idx + acc + 32'd1296) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1303);
    acc = acc + m_hist[idx] + 32'd1310;
    idx = (idx + acc + 32'd1317) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1324);
    acc = acc + m_hist[idx] + 32'd1331;
    idx = (idx + acc + 32'd1338) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1345);
    acc = acc + m_hist[idx] + 32'd1352;
    idx = (idx + acc + 32'd1359) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1366);
    acc = acc + m_hist[idx] + 32'd1373;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1253);
    acc = acc + m_hist[idx] + 32'd1260;
    idx = (idx + acc + 32'd1267) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1274);
    acc = acc + m_hist[idx] + 32'd1281;
    idx = (idx + acc + 32'd1288) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1295);
    acc = acc + m_hist[idx] + 32'd1302;
    idx = (idx + acc + 32'd1309) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1316);
    acc = acc + m_hist[idx] + 32'd1323;
    idx = (idx + acc + 32'd1330) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1337);
    acc = acc + m_hist[idx] + 32'd1344;
    idx = (idx + acc + 32'd1351) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1358);
    acc = acc + m_hist[idx] + 32'd1365;
    idx = (idx + acc + 32'd1372) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1379);
    acc = acc + m_hist[idx] + 32'd1386;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1266);
    acc = acc + m_hist[idx] + 32'd1273;
    idx = (idx + acc + 32'd1280) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1287);
    acc = acc + m_hist[idx] + 32'd1294;
    idx = (idx + acc + 32'd1301) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1308);
    acc = acc + m_hist[idx] + 32'd1315;
    idx = (idx + acc + 32'd1322) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1329);
    acc = acc + m_hist[idx] + 32'd1336;
    idx = (idx + acc + 32'd1343) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1350);
    acc = acc + m_hist[idx] + 32'd1357;
    idx = (idx + acc + 32'd1364) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1371);
    acc = acc + m_hist[idx] + 32'd1378;
    idx = (idx + acc + 32'd1385) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1392);
    acc = acc + m_hist[idx] + 32'd1399;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_41 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1271);
    acc = acc + m_hist[idx] + 32'd1278;
    idx = (idx + acc + 32'd1285) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1292);
    acc = acc + m_hist[idx] + 32'd1299;
    idx = (idx + acc + 32'd1306) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1313);
    acc = acc + m_hist[idx] + 32'd1320;
    idx = (idx + acc + 32'd1327) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1334);
    acc = acc + m_hist[idx] + 32'd1341;
    idx = (idx + acc + 32'd1348) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1355);
    acc = acc + m_hist[idx] + 32'd1362;
    idx = (idx + acc + 32'd1369) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1376);
    acc = acc + m_hist[idx] + 32'd1383;
    idx = (idx + acc + 32'd1390) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1397);
    acc = acc + m_hist[idx] + 32'd1404;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1284);
    acc = acc + m_hist[idx] + 32'd1291;
    idx = (idx + acc + 32'd1298) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1305);
    acc = acc + m_hist[idx] + 32'd1312;
    idx = (idx + acc + 32'd1319) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1326);
    acc = acc + m_hist[idx] + 32'd1333;
    idx = (idx + acc + 32'd1340) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1347);
    acc = acc + m_hist[idx] + 32'd1354;
    idx = (idx + acc + 32'd1361) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1368);
    acc = acc + m_hist[idx] + 32'd1375;
    idx = (idx + acc + 32'd1382) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1389);
    acc = acc + m_hist[idx] + 32'd1396;
    idx = (idx + acc + 32'd1403) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1410);
    acc = acc + m_hist[idx] + 32'd1417;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1297);
    acc = acc + m_hist[idx] + 32'd1304;
    idx = (idx + acc + 32'd1311) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1318);
    acc = acc + m_hist[idx] + 32'd1325;
    idx = (idx + acc + 32'd1332) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1339);
    acc = acc + m_hist[idx] + 32'd1346;
    idx = (idx + acc + 32'd1353) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1360);
    acc = acc + m_hist[idx] + 32'd1367;
    idx = (idx + acc + 32'd1374) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1381);
    acc = acc + m_hist[idx] + 32'd1388;
    idx = (idx + acc + 32'd1395) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1402);
    acc = acc + m_hist[idx] + 32'd1409;
    idx = (idx + acc + 32'd1416) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1423);
    acc = acc + m_hist[idx] + 32'd1430;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_42 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1302);
    acc = acc + m_hist[idx] + 32'd1309;
    idx = (idx + acc + 32'd1316) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1323);
    acc = acc + m_hist[idx] + 32'd1330;
    idx = (idx + acc + 32'd1337) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1344);
    acc = acc + m_hist[idx] + 32'd1351;
    idx = (idx + acc + 32'd1358) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1365);
    acc = acc + m_hist[idx] + 32'd1372;
    idx = (idx + acc + 32'd1379) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1386);
    acc = acc + m_hist[idx] + 32'd1393;
    idx = (idx + acc + 32'd1400) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1407);
    acc = acc + m_hist[idx] + 32'd1414;
    idx = (idx + acc + 32'd1421) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1428);
    acc = acc + m_hist[idx] + 32'd1435;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1315);
    acc = acc + m_hist[idx] + 32'd1322;
    idx = (idx + acc + 32'd1329) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1336);
    acc = acc + m_hist[idx] + 32'd1343;
    idx = (idx + acc + 32'd1350) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1357);
    acc = acc + m_hist[idx] + 32'd1364;
    idx = (idx + acc + 32'd1371) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1378);
    acc = acc + m_hist[idx] + 32'd1385;
    idx = (idx + acc + 32'd1392) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1399);
    acc = acc + m_hist[idx] + 32'd1406;
    idx = (idx + acc + 32'd1413) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1420);
    acc = acc + m_hist[idx] + 32'd1427;
    idx = (idx + acc + 32'd1434) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1441);
    acc = acc + m_hist[idx] + 32'd1448;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1328);
    acc = acc + m_hist[idx] + 32'd1335;
    idx = (idx + acc + 32'd1342) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1349);
    acc = acc + m_hist[idx] + 32'd1356;
    idx = (idx + acc + 32'd1363) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1370);
    acc = acc + m_hist[idx] + 32'd1377;
    idx = (idx + acc + 32'd1384) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1391);
    acc = acc + m_hist[idx] + 32'd1398;
    idx = (idx + acc + 32'd1405) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1412);
    acc = acc + m_hist[idx] + 32'd1419;
    idx = (idx + acc + 32'd1426) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1433);
    acc = acc + m_hist[idx] + 32'd1440;
    idx = (idx + acc + 32'd1447) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1454);
    acc = acc + m_hist[idx] + 32'd1461;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_43 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1333);
    acc = acc + m_hist[idx] + 32'd1340;
    idx = (idx + acc + 32'd1347) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1354);
    acc = acc + m_hist[idx] + 32'd1361;
    idx = (idx + acc + 32'd1368) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1375);
    acc = acc + m_hist[idx] + 32'd1382;
    idx = (idx + acc + 32'd1389) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1396);
    acc = acc + m_hist[idx] + 32'd1403;
    idx = (idx + acc + 32'd1410) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1417);
    acc = acc + m_hist[idx] + 32'd1424;
    idx = (idx + acc + 32'd1431) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1438);
    acc = acc + m_hist[idx] + 32'd1445;
    idx = (idx + acc + 32'd1452) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1459);
    acc = acc + m_hist[idx] + 32'd1466;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1346);
    acc = acc + m_hist[idx] + 32'd1353;
    idx = (idx + acc + 32'd1360) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1367);
    acc = acc + m_hist[idx] + 32'd1374;
    idx = (idx + acc + 32'd1381) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1388);
    acc = acc + m_hist[idx] + 32'd1395;
    idx = (idx + acc + 32'd1402) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1409);
    acc = acc + m_hist[idx] + 32'd1416;
    idx = (idx + acc + 32'd1423) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1430);
    acc = acc + m_hist[idx] + 32'd1437;
    idx = (idx + acc + 32'd1444) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1451);
    acc = acc + m_hist[idx] + 32'd1458;
    idx = (idx + acc + 32'd1465) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1472);
    acc = acc + m_hist[idx] + 32'd1479;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1359);
    acc = acc + m_hist[idx] + 32'd1366;
    idx = (idx + acc + 32'd1373) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1380);
    acc = acc + m_hist[idx] + 32'd1387;
    idx = (idx + acc + 32'd1394) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1401);
    acc = acc + m_hist[idx] + 32'd1408;
    idx = (idx + acc + 32'd1415) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1422);
    acc = acc + m_hist[idx] + 32'd1429;
    idx = (idx + acc + 32'd1436) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1443);
    acc = acc + m_hist[idx] + 32'd1450;
    idx = (idx + acc + 32'd1457) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1464);
    acc = acc + m_hist[idx] + 32'd1471;
    idx = (idx + acc + 32'd1478) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1485);
    acc = acc + m_hist[idx] + 32'd1492;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_44 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1364);
    acc = acc + m_hist[idx] + 32'd1371;
    idx = (idx + acc + 32'd1378) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1385);
    acc = acc + m_hist[idx] + 32'd1392;
    idx = (idx + acc + 32'd1399) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1406);
    acc = acc + m_hist[idx] + 32'd1413;
    idx = (idx + acc + 32'd1420) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1427);
    acc = acc + m_hist[idx] + 32'd1434;
    idx = (idx + acc + 32'd1441) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1448);
    acc = acc + m_hist[idx] + 32'd1455;
    idx = (idx + acc + 32'd1462) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1469);
    acc = acc + m_hist[idx] + 32'd1476;
    idx = (idx + acc + 32'd1483) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1490);
    acc = acc + m_hist[idx] + 32'd1497;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1377);
    acc = acc + m_hist[idx] + 32'd1384;
    idx = (idx + acc + 32'd1391) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1398);
    acc = acc + m_hist[idx] + 32'd1405;
    idx = (idx + acc + 32'd1412) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1419);
    acc = acc + m_hist[idx] + 32'd1426;
    idx = (idx + acc + 32'd1433) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1440);
    acc = acc + m_hist[idx] + 32'd1447;
    idx = (idx + acc + 32'd1454) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1461);
    acc = acc + m_hist[idx] + 32'd1468;
    idx = (idx + acc + 32'd1475) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1482);
    acc = acc + m_hist[idx] + 32'd1489;
    idx = (idx + acc + 32'd1496) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1503);
    acc = acc + m_hist[idx] + 32'd1510;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1390);
    acc = acc + m_hist[idx] + 32'd1397;
    idx = (idx + acc + 32'd1404) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1411);
    acc = acc + m_hist[idx] + 32'd1418;
    idx = (idx + acc + 32'd1425) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1432);
    acc = acc + m_hist[idx] + 32'd1439;
    idx = (idx + acc + 32'd1446) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1453);
    acc = acc + m_hist[idx] + 32'd1460;
    idx = (idx + acc + 32'd1467) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1474);
    acc = acc + m_hist[idx] + 32'd1481;
    idx = (idx + acc + 32'd1488) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1495);
    acc = acc + m_hist[idx] + 32'd1502;
    idx = (idx + acc + 32'd1509) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1516);
    acc = acc + m_hist[idx] + 32'd1523;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_45 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1395);
    acc = acc + m_hist[idx] + 32'd1402;
    idx = (idx + acc + 32'd1409) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1416);
    acc = acc + m_hist[idx] + 32'd1423;
    idx = (idx + acc + 32'd1430) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1437);
    acc = acc + m_hist[idx] + 32'd1444;
    idx = (idx + acc + 32'd1451) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1458);
    acc = acc + m_hist[idx] + 32'd1465;
    idx = (idx + acc + 32'd1472) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1479);
    acc = acc + m_hist[idx] + 32'd1486;
    idx = (idx + acc + 32'd1493) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1500);
    acc = acc + m_hist[idx] + 32'd1507;
    idx = (idx + acc + 32'd1514) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1521);
    acc = acc + m_hist[idx] + 32'd1528;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1408);
    acc = acc + m_hist[idx] + 32'd1415;
    idx = (idx + acc + 32'd1422) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1429);
    acc = acc + m_hist[idx] + 32'd1436;
    idx = (idx + acc + 32'd1443) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1450);
    acc = acc + m_hist[idx] + 32'd1457;
    idx = (idx + acc + 32'd1464) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1471);
    acc = acc + m_hist[idx] + 32'd1478;
    idx = (idx + acc + 32'd1485) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1492);
    acc = acc + m_hist[idx] + 32'd1499;
    idx = (idx + acc + 32'd1506) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1513);
    acc = acc + m_hist[idx] + 32'd1520;
    idx = (idx + acc + 32'd1527) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1534);
    acc = acc + m_hist[idx] + 32'd1541;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1421);
    acc = acc + m_hist[idx] + 32'd1428;
    idx = (idx + acc + 32'd1435) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1442);
    acc = acc + m_hist[idx] + 32'd1449;
    idx = (idx + acc + 32'd1456) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1463);
    acc = acc + m_hist[idx] + 32'd1470;
    idx = (idx + acc + 32'd1477) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1484);
    acc = acc + m_hist[idx] + 32'd1491;
    idx = (idx + acc + 32'd1498) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1505);
    acc = acc + m_hist[idx] + 32'd1512;
    idx = (idx + acc + 32'd1519) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1526);
    acc = acc + m_hist[idx] + 32'd1533;
    idx = (idx + acc + 32'd1540) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1547);
    acc = acc + m_hist[idx] + 32'd1554;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_46 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1426);
    acc = acc + m_hist[idx] + 32'd1433;
    idx = (idx + acc + 32'd1440) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1447);
    acc = acc + m_hist[idx] + 32'd1454;
    idx = (idx + acc + 32'd1461) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1468);
    acc = acc + m_hist[idx] + 32'd1475;
    idx = (idx + acc + 32'd1482) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1489);
    acc = acc + m_hist[idx] + 32'd1496;
    idx = (idx + acc + 32'd1503) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1510);
    acc = acc + m_hist[idx] + 32'd1517;
    idx = (idx + acc + 32'd1524) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1531);
    acc = acc + m_hist[idx] + 32'd1538;
    idx = (idx + acc + 32'd1545) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1552);
    acc = acc + m_hist[idx] + 32'd1559;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1439);
    acc = acc + m_hist[idx] + 32'd1446;
    idx = (idx + acc + 32'd1453) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1460);
    acc = acc + m_hist[idx] + 32'd1467;
    idx = (idx + acc + 32'd1474) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1481);
    acc = acc + m_hist[idx] + 32'd1488;
    idx = (idx + acc + 32'd1495) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1502);
    acc = acc + m_hist[idx] + 32'd1509;
    idx = (idx + acc + 32'd1516) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1523);
    acc = acc + m_hist[idx] + 32'd1530;
    idx = (idx + acc + 32'd1537) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1544);
    acc = acc + m_hist[idx] + 32'd1551;
    idx = (idx + acc + 32'd1558) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1565);
    acc = acc + m_hist[idx] + 32'd1572;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1452);
    acc = acc + m_hist[idx] + 32'd1459;
    idx = (idx + acc + 32'd1466) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1473);
    acc = acc + m_hist[idx] + 32'd1480;
    idx = (idx + acc + 32'd1487) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1494);
    acc = acc + m_hist[idx] + 32'd1501;
    idx = (idx + acc + 32'd1508) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1515);
    acc = acc + m_hist[idx] + 32'd1522;
    idx = (idx + acc + 32'd1529) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1536);
    acc = acc + m_hist[idx] + 32'd1543;
    idx = (idx + acc + 32'd1550) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1557);
    acc = acc + m_hist[idx] + 32'd1564;
    idx = (idx + acc + 32'd1571) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1578);
    acc = acc + m_hist[idx] + 32'd1585;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_47 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1457);
    acc = acc + m_hist[idx] + 32'd1464;
    idx = (idx + acc + 32'd1471) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1478);
    acc = acc + m_hist[idx] + 32'd1485;
    idx = (idx + acc + 32'd1492) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1499);
    acc = acc + m_hist[idx] + 32'd1506;
    idx = (idx + acc + 32'd1513) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1520);
    acc = acc + m_hist[idx] + 32'd1527;
    idx = (idx + acc + 32'd1534) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1541);
    acc = acc + m_hist[idx] + 32'd1548;
    idx = (idx + acc + 32'd1555) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1562);
    acc = acc + m_hist[idx] + 32'd1569;
    idx = (idx + acc + 32'd1576) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1583);
    acc = acc + m_hist[idx] + 32'd1590;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1470);
    acc = acc + m_hist[idx] + 32'd1477;
    idx = (idx + acc + 32'd1484) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1491);
    acc = acc + m_hist[idx] + 32'd1498;
    idx = (idx + acc + 32'd1505) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1512);
    acc = acc + m_hist[idx] + 32'd1519;
    idx = (idx + acc + 32'd1526) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1533);
    acc = acc + m_hist[idx] + 32'd1540;
    idx = (idx + acc + 32'd1547) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1554);
    acc = acc + m_hist[idx] + 32'd1561;
    idx = (idx + acc + 32'd1568) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1575);
    acc = acc + m_hist[idx] + 32'd1582;
    idx = (idx + acc + 32'd1589) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1596);
    acc = acc + m_hist[idx] + 32'd1603;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1483);
    acc = acc + m_hist[idx] + 32'd1490;
    idx = (idx + acc + 32'd1497) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1504);
    acc = acc + m_hist[idx] + 32'd1511;
    idx = (idx + acc + 32'd1518) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1525);
    acc = acc + m_hist[idx] + 32'd1532;
    idx = (idx + acc + 32'd1539) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1546);
    acc = acc + m_hist[idx] + 32'd1553;
    idx = (idx + acc + 32'd1560) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1567);
    acc = acc + m_hist[idx] + 32'd1574;
    idx = (idx + acc + 32'd1581) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1588);
    acc = acc + m_hist[idx] + 32'd1595;
    idx = (idx + acc + 32'd1602) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1609);
    acc = acc + m_hist[idx] + 32'd1616;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_48 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1488);
    acc = acc + m_hist[idx] + 32'd1495;
    idx = (idx + acc + 32'd1502) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1509);
    acc = acc + m_hist[idx] + 32'd1516;
    idx = (idx + acc + 32'd1523) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1530);
    acc = acc + m_hist[idx] + 32'd1537;
    idx = (idx + acc + 32'd1544) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1551);
    acc = acc + m_hist[idx] + 32'd1558;
    idx = (idx + acc + 32'd1565) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1572);
    acc = acc + m_hist[idx] + 32'd1579;
    idx = (idx + acc + 32'd1586) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1593);
    acc = acc + m_hist[idx] + 32'd1600;
    idx = (idx + acc + 32'd1607) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1614);
    acc = acc + m_hist[idx] + 32'd1621;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1501);
    acc = acc + m_hist[idx] + 32'd1508;
    idx = (idx + acc + 32'd1515) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1522);
    acc = acc + m_hist[idx] + 32'd1529;
    idx = (idx + acc + 32'd1536) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1543);
    acc = acc + m_hist[idx] + 32'd1550;
    idx = (idx + acc + 32'd1557) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1564);
    acc = acc + m_hist[idx] + 32'd1571;
    idx = (idx + acc + 32'd1578) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1585);
    acc = acc + m_hist[idx] + 32'd1592;
    idx = (idx + acc + 32'd1599) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1606);
    acc = acc + m_hist[idx] + 32'd1613;
    idx = (idx + acc + 32'd1620) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1627);
    acc = acc + m_hist[idx] + 32'd1634;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1514);
    acc = acc + m_hist[idx] + 32'd1521;
    idx = (idx + acc + 32'd1528) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1535);
    acc = acc + m_hist[idx] + 32'd1542;
    idx = (idx + acc + 32'd1549) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1556);
    acc = acc + m_hist[idx] + 32'd1563;
    idx = (idx + acc + 32'd1570) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1577);
    acc = acc + m_hist[idx] + 32'd1584;
    idx = (idx + acc + 32'd1591) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1598);
    acc = acc + m_hist[idx] + 32'd1605;
    idx = (idx + acc + 32'd1612) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1619);
    acc = acc + m_hist[idx] + 32'd1626;
    idx = (idx + acc + 32'd1633) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1640);
    acc = acc + m_hist[idx] + 32'd1647;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_49 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1519);
    acc = acc + m_hist[idx] + 32'd1526;
    idx = (idx + acc + 32'd1533) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1540);
    acc = acc + m_hist[idx] + 32'd1547;
    idx = (idx + acc + 32'd1554) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1561);
    acc = acc + m_hist[idx] + 32'd1568;
    idx = (idx + acc + 32'd1575) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1582);
    acc = acc + m_hist[idx] + 32'd1589;
    idx = (idx + acc + 32'd1596) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1603);
    acc = acc + m_hist[idx] + 32'd1610;
    idx = (idx + acc + 32'd1617) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1624);
    acc = acc + m_hist[idx] + 32'd1631;
    idx = (idx + acc + 32'd1638) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1645);
    acc = acc + m_hist[idx] + 32'd1652;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1532);
    acc = acc + m_hist[idx] + 32'd1539;
    idx = (idx + acc + 32'd1546) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1553);
    acc = acc + m_hist[idx] + 32'd1560;
    idx = (idx + acc + 32'd1567) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1574);
    acc = acc + m_hist[idx] + 32'd1581;
    idx = (idx + acc + 32'd1588) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1595);
    acc = acc + m_hist[idx] + 32'd1602;
    idx = (idx + acc + 32'd1609) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1616);
    acc = acc + m_hist[idx] + 32'd1623;
    idx = (idx + acc + 32'd1630) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1637);
    acc = acc + m_hist[idx] + 32'd1644;
    idx = (idx + acc + 32'd1651) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1658);
    acc = acc + m_hist[idx] + 32'd1665;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1545);
    acc = acc + m_hist[idx] + 32'd1552;
    idx = (idx + acc + 32'd1559) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1566);
    acc = acc + m_hist[idx] + 32'd1573;
    idx = (idx + acc + 32'd1580) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1587);
    acc = acc + m_hist[idx] + 32'd1594;
    idx = (idx + acc + 32'd1601) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1608);
    acc = acc + m_hist[idx] + 32'd1615;
    idx = (idx + acc + 32'd1622) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1629);
    acc = acc + m_hist[idx] + 32'd1636;
    idx = (idx + acc + 32'd1643) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1650);
    acc = acc + m_hist[idx] + 32'd1657;
    idx = (idx + acc + 32'd1664) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1671);
    acc = acc + m_hist[idx] + 32'd1678;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_50 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1550);
    acc = acc + m_hist[idx] + 32'd1557;
    idx = (idx + acc + 32'd1564) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1571);
    acc = acc + m_hist[idx] + 32'd1578;
    idx = (idx + acc + 32'd1585) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1592);
    acc = acc + m_hist[idx] + 32'd1599;
    idx = (idx + acc + 32'd1606) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1613);
    acc = acc + m_hist[idx] + 32'd1620;
    idx = (idx + acc + 32'd1627) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1634);
    acc = acc + m_hist[idx] + 32'd1641;
    idx = (idx + acc + 32'd1648) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1655);
    acc = acc + m_hist[idx] + 32'd1662;
    idx = (idx + acc + 32'd1669) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1676);
    acc = acc + m_hist[idx] + 32'd1683;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1563);
    acc = acc + m_hist[idx] + 32'd1570;
    idx = (idx + acc + 32'd1577) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1584);
    acc = acc + m_hist[idx] + 32'd1591;
    idx = (idx + acc + 32'd1598) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1605);
    acc = acc + m_hist[idx] + 32'd1612;
    idx = (idx + acc + 32'd1619) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1626);
    acc = acc + m_hist[idx] + 32'd1633;
    idx = (idx + acc + 32'd1640) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1647);
    acc = acc + m_hist[idx] + 32'd1654;
    idx = (idx + acc + 32'd1661) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1668);
    acc = acc + m_hist[idx] + 32'd1675;
    idx = (idx + acc + 32'd1682) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1689);
    acc = acc + m_hist[idx] + 32'd1696;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1576);
    acc = acc + m_hist[idx] + 32'd1583;
    idx = (idx + acc + 32'd1590) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1597);
    acc = acc + m_hist[idx] + 32'd1604;
    idx = (idx + acc + 32'd1611) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1618);
    acc = acc + m_hist[idx] + 32'd1625;
    idx = (idx + acc + 32'd1632) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1639);
    acc = acc + m_hist[idx] + 32'd1646;
    idx = (idx + acc + 32'd1653) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1660);
    acc = acc + m_hist[idx] + 32'd1667;
    idx = (idx + acc + 32'd1674) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1681);
    acc = acc + m_hist[idx] + 32'd1688;
    idx = (idx + acc + 32'd1695) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1702);
    acc = acc + m_hist[idx] + 32'd1709;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_51 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1581);
    acc = acc + m_hist[idx] + 32'd1588;
    idx = (idx + acc + 32'd1595) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1602);
    acc = acc + m_hist[idx] + 32'd1609;
    idx = (idx + acc + 32'd1616) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1623);
    acc = acc + m_hist[idx] + 32'd1630;
    idx = (idx + acc + 32'd1637) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1644);
    acc = acc + m_hist[idx] + 32'd1651;
    idx = (idx + acc + 32'd1658) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1665);
    acc = acc + m_hist[idx] + 32'd1672;
    idx = (idx + acc + 32'd1679) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1686);
    acc = acc + m_hist[idx] + 32'd1693;
    idx = (idx + acc + 32'd1700) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1707);
    acc = acc + m_hist[idx] + 32'd1714;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1594);
    acc = acc + m_hist[idx] + 32'd1601;
    idx = (idx + acc + 32'd1608) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1615);
    acc = acc + m_hist[idx] + 32'd1622;
    idx = (idx + acc + 32'd1629) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1636);
    acc = acc + m_hist[idx] + 32'd1643;
    idx = (idx + acc + 32'd1650) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1657);
    acc = acc + m_hist[idx] + 32'd1664;
    idx = (idx + acc + 32'd1671) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1678);
    acc = acc + m_hist[idx] + 32'd1685;
    idx = (idx + acc + 32'd1692) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1699);
    acc = acc + m_hist[idx] + 32'd1706;
    idx = (idx + acc + 32'd1713) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1720);
    acc = acc + m_hist[idx] + 32'd1727;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1607);
    acc = acc + m_hist[idx] + 32'd1614;
    idx = (idx + acc + 32'd1621) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1628);
    acc = acc + m_hist[idx] + 32'd1635;
    idx = (idx + acc + 32'd1642) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1649);
    acc = acc + m_hist[idx] + 32'd1656;
    idx = (idx + acc + 32'd1663) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1670);
    acc = acc + m_hist[idx] + 32'd1677;
    idx = (idx + acc + 32'd1684) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1691);
    acc = acc + m_hist[idx] + 32'd1698;
    idx = (idx + acc + 32'd1705) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1712);
    acc = acc + m_hist[idx] + 32'd1719;
    idx = (idx + acc + 32'd1726) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1733);
    acc = acc + m_hist[idx] + 32'd1740;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_52 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1612);
    acc = acc + m_hist[idx] + 32'd1619;
    idx = (idx + acc + 32'd1626) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1633);
    acc = acc + m_hist[idx] + 32'd1640;
    idx = (idx + acc + 32'd1647) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1654);
    acc = acc + m_hist[idx] + 32'd1661;
    idx = (idx + acc + 32'd1668) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1675);
    acc = acc + m_hist[idx] + 32'd1682;
    idx = (idx + acc + 32'd1689) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1696);
    acc = acc + m_hist[idx] + 32'd1703;
    idx = (idx + acc + 32'd1710) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1717);
    acc = acc + m_hist[idx] + 32'd1724;
    idx = (idx + acc + 32'd1731) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1738);
    acc = acc + m_hist[idx] + 32'd1745;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1625);
    acc = acc + m_hist[idx] + 32'd1632;
    idx = (idx + acc + 32'd1639) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1646);
    acc = acc + m_hist[idx] + 32'd1653;
    idx = (idx + acc + 32'd1660) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1667);
    acc = acc + m_hist[idx] + 32'd1674;
    idx = (idx + acc + 32'd1681) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1688);
    acc = acc + m_hist[idx] + 32'd1695;
    idx = (idx + acc + 32'd1702) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1709);
    acc = acc + m_hist[idx] + 32'd1716;
    idx = (idx + acc + 32'd1723) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1730);
    acc = acc + m_hist[idx] + 32'd1737;
    idx = (idx + acc + 32'd1744) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1751);
    acc = acc + m_hist[idx] + 32'd1758;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1638);
    acc = acc + m_hist[idx] + 32'd1645;
    idx = (idx + acc + 32'd1652) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1659);
    acc = acc + m_hist[idx] + 32'd1666;
    idx = (idx + acc + 32'd1673) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1680);
    acc = acc + m_hist[idx] + 32'd1687;
    idx = (idx + acc + 32'd1694) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1701);
    acc = acc + m_hist[idx] + 32'd1708;
    idx = (idx + acc + 32'd1715) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1722);
    acc = acc + m_hist[idx] + 32'd1729;
    idx = (idx + acc + 32'd1736) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1743);
    acc = acc + m_hist[idx] + 32'd1750;
    idx = (idx + acc + 32'd1757) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1764);
    acc = acc + m_hist[idx] + 32'd1771;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_53 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1643);
    acc = acc + m_hist[idx] + 32'd1650;
    idx = (idx + acc + 32'd1657) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1664);
    acc = acc + m_hist[idx] + 32'd1671;
    idx = (idx + acc + 32'd1678) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1685);
    acc = acc + m_hist[idx] + 32'd1692;
    idx = (idx + acc + 32'd1699) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1706);
    acc = acc + m_hist[idx] + 32'd1713;
    idx = (idx + acc + 32'd1720) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1727);
    acc = acc + m_hist[idx] + 32'd1734;
    idx = (idx + acc + 32'd1741) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1748);
    acc = acc + m_hist[idx] + 32'd1755;
    idx = (idx + acc + 32'd1762) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1769);
    acc = acc + m_hist[idx] + 32'd1776;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1656);
    acc = acc + m_hist[idx] + 32'd1663;
    idx = (idx + acc + 32'd1670) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1677);
    acc = acc + m_hist[idx] + 32'd1684;
    idx = (idx + acc + 32'd1691) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1698);
    acc = acc + m_hist[idx] + 32'd1705;
    idx = (idx + acc + 32'd1712) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1719);
    acc = acc + m_hist[idx] + 32'd1726;
    idx = (idx + acc + 32'd1733) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1740);
    acc = acc + m_hist[idx] + 32'd1747;
    idx = (idx + acc + 32'd1754) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1761);
    acc = acc + m_hist[idx] + 32'd1768;
    idx = (idx + acc + 32'd1775) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1782);
    acc = acc + m_hist[idx] + 32'd1789;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1669);
    acc = acc + m_hist[idx] + 32'd1676;
    idx = (idx + acc + 32'd1683) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1690);
    acc = acc + m_hist[idx] + 32'd1697;
    idx = (idx + acc + 32'd1704) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1711);
    acc = acc + m_hist[idx] + 32'd1718;
    idx = (idx + acc + 32'd1725) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1732);
    acc = acc + m_hist[idx] + 32'd1739;
    idx = (idx + acc + 32'd1746) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1753);
    acc = acc + m_hist[idx] + 32'd1760;
    idx = (idx + acc + 32'd1767) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1774);
    acc = acc + m_hist[idx] + 32'd1781;
    idx = (idx + acc + 32'd1788) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1795);
    acc = acc + m_hist[idx] + 32'd1802;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_54 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1674);
    acc = acc + m_hist[idx] + 32'd1681;
    idx = (idx + acc + 32'd1688) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1695);
    acc = acc + m_hist[idx] + 32'd1702;
    idx = (idx + acc + 32'd1709) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1716);
    acc = acc + m_hist[idx] + 32'd1723;
    idx = (idx + acc + 32'd1730) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1737);
    acc = acc + m_hist[idx] + 32'd1744;
    idx = (idx + acc + 32'd1751) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1758);
    acc = acc + m_hist[idx] + 32'd1765;
    idx = (idx + acc + 32'd1772) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1779);
    acc = acc + m_hist[idx] + 32'd1786;
    idx = (idx + acc + 32'd1793) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1800);
    acc = acc + m_hist[idx] + 32'd1807;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1687);
    acc = acc + m_hist[idx] + 32'd1694;
    idx = (idx + acc + 32'd1701) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1708);
    acc = acc + m_hist[idx] + 32'd1715;
    idx = (idx + acc + 32'd1722) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1729);
    acc = acc + m_hist[idx] + 32'd1736;
    idx = (idx + acc + 32'd1743) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1750);
    acc = acc + m_hist[idx] + 32'd1757;
    idx = (idx + acc + 32'd1764) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1771);
    acc = acc + m_hist[idx] + 32'd1778;
    idx = (idx + acc + 32'd1785) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1792);
    acc = acc + m_hist[idx] + 32'd1799;
    idx = (idx + acc + 32'd1806) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1813);
    acc = acc + m_hist[idx] + 32'd1820;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1700);
    acc = acc + m_hist[idx] + 32'd1707;
    idx = (idx + acc + 32'd1714) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1721);
    acc = acc + m_hist[idx] + 32'd1728;
    idx = (idx + acc + 32'd1735) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1742);
    acc = acc + m_hist[idx] + 32'd1749;
    idx = (idx + acc + 32'd1756) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1763);
    acc = acc + m_hist[idx] + 32'd1770;
    idx = (idx + acc + 32'd1777) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1784);
    acc = acc + m_hist[idx] + 32'd1791;
    idx = (idx + acc + 32'd1798) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1805);
    acc = acc + m_hist[idx] + 32'd1812;
    idx = (idx + acc + 32'd1819) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1826);
    acc = acc + m_hist[idx] + 32'd1833;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_55 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1705);
    acc = acc + m_hist[idx] + 32'd1712;
    idx = (idx + acc + 32'd1719) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1726);
    acc = acc + m_hist[idx] + 32'd1733;
    idx = (idx + acc + 32'd1740) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1747);
    acc = acc + m_hist[idx] + 32'd1754;
    idx = (idx + acc + 32'd1761) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1768);
    acc = acc + m_hist[idx] + 32'd1775;
    idx = (idx + acc + 32'd1782) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1789);
    acc = acc + m_hist[idx] + 32'd1796;
    idx = (idx + acc + 32'd1803) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1810);
    acc = acc + m_hist[idx] + 32'd1817;
    idx = (idx + acc + 32'd1824) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1831);
    acc = acc + m_hist[idx] + 32'd1838;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1718);
    acc = acc + m_hist[idx] + 32'd1725;
    idx = (idx + acc + 32'd1732) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1739);
    acc = acc + m_hist[idx] + 32'd1746;
    idx = (idx + acc + 32'd1753) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1760);
    acc = acc + m_hist[idx] + 32'd1767;
    idx = (idx + acc + 32'd1774) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1781);
    acc = acc + m_hist[idx] + 32'd1788;
    idx = (idx + acc + 32'd1795) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1802);
    acc = acc + m_hist[idx] + 32'd1809;
    idx = (idx + acc + 32'd1816) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1823);
    acc = acc + m_hist[idx] + 32'd1830;
    idx = (idx + acc + 32'd1837) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1844);
    acc = acc + m_hist[idx] + 32'd1851;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1731);
    acc = acc + m_hist[idx] + 32'd1738;
    idx = (idx + acc + 32'd1745) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1752);
    acc = acc + m_hist[idx] + 32'd1759;
    idx = (idx + acc + 32'd1766) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1773);
    acc = acc + m_hist[idx] + 32'd1780;
    idx = (idx + acc + 32'd1787) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1794);
    acc = acc + m_hist[idx] + 32'd1801;
    idx = (idx + acc + 32'd1808) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1815);
    acc = acc + m_hist[idx] + 32'd1822;
    idx = (idx + acc + 32'd1829) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1836);
    acc = acc + m_hist[idx] + 32'd1843;
    idx = (idx + acc + 32'd1850) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1857);
    acc = acc + m_hist[idx] + 32'd1864;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_56 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1736);
    acc = acc + m_hist[idx] + 32'd1743;
    idx = (idx + acc + 32'd1750) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1757);
    acc = acc + m_hist[idx] + 32'd1764;
    idx = (idx + acc + 32'd1771) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1778);
    acc = acc + m_hist[idx] + 32'd1785;
    idx = (idx + acc + 32'd1792) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1799);
    acc = acc + m_hist[idx] + 32'd1806;
    idx = (idx + acc + 32'd1813) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1820);
    acc = acc + m_hist[idx] + 32'd1827;
    idx = (idx + acc + 32'd1834) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1841);
    acc = acc + m_hist[idx] + 32'd1848;
    idx = (idx + acc + 32'd1855) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1862);
    acc = acc + m_hist[idx] + 32'd1869;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1749);
    acc = acc + m_hist[idx] + 32'd1756;
    idx = (idx + acc + 32'd1763) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1770);
    acc = acc + m_hist[idx] + 32'd1777;
    idx = (idx + acc + 32'd1784) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1791);
    acc = acc + m_hist[idx] + 32'd1798;
    idx = (idx + acc + 32'd1805) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1812);
    acc = acc + m_hist[idx] + 32'd1819;
    idx = (idx + acc + 32'd1826) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1833);
    acc = acc + m_hist[idx] + 32'd1840;
    idx = (idx + acc + 32'd1847) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1854);
    acc = acc + m_hist[idx] + 32'd1861;
    idx = (idx + acc + 32'd1868) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1875);
    acc = acc + m_hist[idx] + 32'd1882;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1762);
    acc = acc + m_hist[idx] + 32'd1769;
    idx = (idx + acc + 32'd1776) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1783);
    acc = acc + m_hist[idx] + 32'd1790;
    idx = (idx + acc + 32'd1797) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1804);
    acc = acc + m_hist[idx] + 32'd1811;
    idx = (idx + acc + 32'd1818) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1825);
    acc = acc + m_hist[idx] + 32'd1832;
    idx = (idx + acc + 32'd1839) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1846);
    acc = acc + m_hist[idx] + 32'd1853;
    idx = (idx + acc + 32'd1860) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1867);
    acc = acc + m_hist[idx] + 32'd1874;
    idx = (idx + acc + 32'd1881) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1888);
    acc = acc + m_hist[idx] + 32'd1895;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_57 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1767);
    acc = acc + m_hist[idx] + 32'd1774;
    idx = (idx + acc + 32'd1781) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1788);
    acc = acc + m_hist[idx] + 32'd1795;
    idx = (idx + acc + 32'd1802) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1809);
    acc = acc + m_hist[idx] + 32'd1816;
    idx = (idx + acc + 32'd1823) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1830);
    acc = acc + m_hist[idx] + 32'd1837;
    idx = (idx + acc + 32'd1844) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1851);
    acc = acc + m_hist[idx] + 32'd1858;
    idx = (idx + acc + 32'd1865) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1872);
    acc = acc + m_hist[idx] + 32'd1879;
    idx = (idx + acc + 32'd1886) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1893);
    acc = acc + m_hist[idx] + 32'd1900;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1780);
    acc = acc + m_hist[idx] + 32'd1787;
    idx = (idx + acc + 32'd1794) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1801);
    acc = acc + m_hist[idx] + 32'd1808;
    idx = (idx + acc + 32'd1815) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1822);
    acc = acc + m_hist[idx] + 32'd1829;
    idx = (idx + acc + 32'd1836) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1843);
    acc = acc + m_hist[idx] + 32'd1850;
    idx = (idx + acc + 32'd1857) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1864);
    acc = acc + m_hist[idx] + 32'd1871;
    idx = (idx + acc + 32'd1878) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1885);
    acc = acc + m_hist[idx] + 32'd1892;
    idx = (idx + acc + 32'd1899) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1906);
    acc = acc + m_hist[idx] + 32'd1913;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1793);
    acc = acc + m_hist[idx] + 32'd1800;
    idx = (idx + acc + 32'd1807) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1814);
    acc = acc + m_hist[idx] + 32'd1821;
    idx = (idx + acc + 32'd1828) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1835);
    acc = acc + m_hist[idx] + 32'd1842;
    idx = (idx + acc + 32'd1849) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1856);
    acc = acc + m_hist[idx] + 32'd1863;
    idx = (idx + acc + 32'd1870) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1877);
    acc = acc + m_hist[idx] + 32'd1884;
    idx = (idx + acc + 32'd1891) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1898);
    acc = acc + m_hist[idx] + 32'd1905;
    idx = (idx + acc + 32'd1912) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1919);
    acc = acc + m_hist[idx] + 32'd1926;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_58 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1798);
    acc = acc + m_hist[idx] + 32'd1805;
    idx = (idx + acc + 32'd1812) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1819);
    acc = acc + m_hist[idx] + 32'd1826;
    idx = (idx + acc + 32'd1833) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1840);
    acc = acc + m_hist[idx] + 32'd1847;
    idx = (idx + acc + 32'd1854) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1861);
    acc = acc + m_hist[idx] + 32'd1868;
    idx = (idx + acc + 32'd1875) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1882);
    acc = acc + m_hist[idx] + 32'd1889;
    idx = (idx + acc + 32'd1896) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1903);
    acc = acc + m_hist[idx] + 32'd1910;
    idx = (idx + acc + 32'd1917) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1924);
    acc = acc + m_hist[idx] + 32'd1931;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1811);
    acc = acc + m_hist[idx] + 32'd1818;
    idx = (idx + acc + 32'd1825) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1832);
    acc = acc + m_hist[idx] + 32'd1839;
    idx = (idx + acc + 32'd1846) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1853);
    acc = acc + m_hist[idx] + 32'd1860;
    idx = (idx + acc + 32'd1867) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1874);
    acc = acc + m_hist[idx] + 32'd1881;
    idx = (idx + acc + 32'd1888) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1895);
    acc = acc + m_hist[idx] + 32'd1902;
    idx = (idx + acc + 32'd1909) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1916);
    acc = acc + m_hist[idx] + 32'd1923;
    idx = (idx + acc + 32'd1930) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1937);
    acc = acc + m_hist[idx] + 32'd1944;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1824);
    acc = acc + m_hist[idx] + 32'd1831;
    idx = (idx + acc + 32'd1838) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1845);
    acc = acc + m_hist[idx] + 32'd1852;
    idx = (idx + acc + 32'd1859) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1866);
    acc = acc + m_hist[idx] + 32'd1873;
    idx = (idx + acc + 32'd1880) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1887);
    acc = acc + m_hist[idx] + 32'd1894;
    idx = (idx + acc + 32'd1901) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1908);
    acc = acc + m_hist[idx] + 32'd1915;
    idx = (idx + acc + 32'd1922) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1929);
    acc = acc + m_hist[idx] + 32'd1936;
    idx = (idx + acc + 32'd1943) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1950);
    acc = acc + m_hist[idx] + 32'd1957;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_59 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1829);
    acc = acc + m_hist[idx] + 32'd1836;
    idx = (idx + acc + 32'd1843) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1850);
    acc = acc + m_hist[idx] + 32'd1857;
    idx = (idx + acc + 32'd1864) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1871);
    acc = acc + m_hist[idx] + 32'd1878;
    idx = (idx + acc + 32'd1885) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1892);
    acc = acc + m_hist[idx] + 32'd1899;
    idx = (idx + acc + 32'd1906) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1913);
    acc = acc + m_hist[idx] + 32'd1920;
    idx = (idx + acc + 32'd1927) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1934);
    acc = acc + m_hist[idx] + 32'd1941;
    idx = (idx + acc + 32'd1948) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1955);
    acc = acc + m_hist[idx] + 32'd1962;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1842);
    acc = acc + m_hist[idx] + 32'd1849;
    idx = (idx + acc + 32'd1856) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1863);
    acc = acc + m_hist[idx] + 32'd1870;
    idx = (idx + acc + 32'd1877) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1884);
    acc = acc + m_hist[idx] + 32'd1891;
    idx = (idx + acc + 32'd1898) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1905);
    acc = acc + m_hist[idx] + 32'd1912;
    idx = (idx + acc + 32'd1919) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1926);
    acc = acc + m_hist[idx] + 32'd1933;
    idx = (idx + acc + 32'd1940) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1947);
    acc = acc + m_hist[idx] + 32'd1954;
    idx = (idx + acc + 32'd1961) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1968);
    acc = acc + m_hist[idx] + 32'd1975;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1855);
    acc = acc + m_hist[idx] + 32'd1862;
    idx = (idx + acc + 32'd1869) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1876);
    acc = acc + m_hist[idx] + 32'd1883;
    idx = (idx + acc + 32'd1890) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1897);
    acc = acc + m_hist[idx] + 32'd1904;
    idx = (idx + acc + 32'd1911) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1918);
    acc = acc + m_hist[idx] + 32'd1925;
    idx = (idx + acc + 32'd1932) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1939);
    acc = acc + m_hist[idx] + 32'd1946;
    idx = (idx + acc + 32'd1953) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1960);
    acc = acc + m_hist[idx] + 32'd1967;
    idx = (idx + acc + 32'd1974) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1981);
    acc = acc + m_hist[idx] + 32'd1988;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_60 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1860);
    acc = acc + m_hist[idx] + 32'd1867;
    idx = (idx + acc + 32'd1874) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1881);
    acc = acc + m_hist[idx] + 32'd1888;
    idx = (idx + acc + 32'd1895) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1902);
    acc = acc + m_hist[idx] + 32'd1909;
    idx = (idx + acc + 32'd1916) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1923);
    acc = acc + m_hist[idx] + 32'd1930;
    idx = (idx + acc + 32'd1937) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1944);
    acc = acc + m_hist[idx] + 32'd1951;
    idx = (idx + acc + 32'd1958) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1965);
    acc = acc + m_hist[idx] + 32'd1972;
    idx = (idx + acc + 32'd1979) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1986);
    acc = acc + m_hist[idx] + 32'd1993;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1873);
    acc = acc + m_hist[idx] + 32'd1880;
    idx = (idx + acc + 32'd1887) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1894);
    acc = acc + m_hist[idx] + 32'd1901;
    idx = (idx + acc + 32'd1908) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1915);
    acc = acc + m_hist[idx] + 32'd1922;
    idx = (idx + acc + 32'd1929) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1936);
    acc = acc + m_hist[idx] + 32'd1943;
    idx = (idx + acc + 32'd1950) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1957);
    acc = acc + m_hist[idx] + 32'd1964;
    idx = (idx + acc + 32'd1971) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1978);
    acc = acc + m_hist[idx] + 32'd1985;
    idx = (idx + acc + 32'd1992) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1999);
    acc = acc + m_hist[idx] + 32'd2006;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1886);
    acc = acc + m_hist[idx] + 32'd1893;
    idx = (idx + acc + 32'd1900) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1907);
    acc = acc + m_hist[idx] + 32'd1914;
    idx = (idx + acc + 32'd1921) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1928);
    acc = acc + m_hist[idx] + 32'd1935;
    idx = (idx + acc + 32'd1942) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1949);
    acc = acc + m_hist[idx] + 32'd1956;
    idx = (idx + acc + 32'd1963) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1970);
    acc = acc + m_hist[idx] + 32'd1977;
    idx = (idx + acc + 32'd1984) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1991);
    acc = acc + m_hist[idx] + 32'd1998;
    idx = (idx + acc + 32'd2005) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2012);
    acc = acc + m_hist[idx] + 32'd2019;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_61 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1891);
    acc = acc + m_hist[idx] + 32'd1898;
    idx = (idx + acc + 32'd1905) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1912);
    acc = acc + m_hist[idx] + 32'd1919;
    idx = (idx + acc + 32'd1926) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1933);
    acc = acc + m_hist[idx] + 32'd1940;
    idx = (idx + acc + 32'd1947) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1954);
    acc = acc + m_hist[idx] + 32'd1961;
    idx = (idx + acc + 32'd1968) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1975);
    acc = acc + m_hist[idx] + 32'd1982;
    idx = (idx + acc + 32'd1989) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1996);
    acc = acc + m_hist[idx] + 32'd2003;
    idx = (idx + acc + 32'd2010) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2017);
    acc = acc + m_hist[idx] + 32'd2024;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1904);
    acc = acc + m_hist[idx] + 32'd1911;
    idx = (idx + acc + 32'd1918) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1925);
    acc = acc + m_hist[idx] + 32'd1932;
    idx = (idx + acc + 32'd1939) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1946);
    acc = acc + m_hist[idx] + 32'd1953;
    idx = (idx + acc + 32'd1960) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1967);
    acc = acc + m_hist[idx] + 32'd1974;
    idx = (idx + acc + 32'd1981) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1988);
    acc = acc + m_hist[idx] + 32'd1995;
    idx = (idx + acc + 32'd2002) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2009);
    acc = acc + m_hist[idx] + 32'd2016;
    idx = (idx + acc + 32'd2023) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2030);
    acc = acc + m_hist[idx] + 32'd2037;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1917);
    acc = acc + m_hist[idx] + 32'd1924;
    idx = (idx + acc + 32'd1931) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1938);
    acc = acc + m_hist[idx] + 32'd1945;
    idx = (idx + acc + 32'd1952) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1959);
    acc = acc + m_hist[idx] + 32'd1966;
    idx = (idx + acc + 32'd1973) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1980);
    acc = acc + m_hist[idx] + 32'd1987;
    idx = (idx + acc + 32'd1994) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2001);
    acc = acc + m_hist[idx] + 32'd2008;
    idx = (idx + acc + 32'd2015) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2022);
    acc = acc + m_hist[idx] + 32'd2029;
    idx = (idx + acc + 32'd2036) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2043);
    acc = acc + m_hist[idx] + 32'd2050;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_62 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1922);
    acc = acc + m_hist[idx] + 32'd1929;
    idx = (idx + acc + 32'd1936) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1943);
    acc = acc + m_hist[idx] + 32'd1950;
    idx = (idx + acc + 32'd1957) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1964);
    acc = acc + m_hist[idx] + 32'd1971;
    idx = (idx + acc + 32'd1978) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1985);
    acc = acc + m_hist[idx] + 32'd1992;
    idx = (idx + acc + 32'd1999) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2006);
    acc = acc + m_hist[idx] + 32'd2013;
    idx = (idx + acc + 32'd2020) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2027);
    acc = acc + m_hist[idx] + 32'd2034;
    idx = (idx + acc + 32'd2041) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2048);
    acc = acc + m_hist[idx] + 32'd2055;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1935);
    acc = acc + m_hist[idx] + 32'd1942;
    idx = (idx + acc + 32'd1949) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1956);
    acc = acc + m_hist[idx] + 32'd1963;
    idx = (idx + acc + 32'd1970) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1977);
    acc = acc + m_hist[idx] + 32'd1984;
    idx = (idx + acc + 32'd1991) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1998);
    acc = acc + m_hist[idx] + 32'd2005;
    idx = (idx + acc + 32'd2012) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2019);
    acc = acc + m_hist[idx] + 32'd2026;
    idx = (idx + acc + 32'd2033) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2040);
    acc = acc + m_hist[idx] + 32'd2047;
    idx = (idx + acc + 32'd2054) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2061);
    acc = acc + m_hist[idx] + 32'd2068;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1948);
    acc = acc + m_hist[idx] + 32'd1955;
    idx = (idx + acc + 32'd1962) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1969);
    acc = acc + m_hist[idx] + 32'd1976;
    idx = (idx + acc + 32'd1983) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1990);
    acc = acc + m_hist[idx] + 32'd1997;
    idx = (idx + acc + 32'd2004) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2011);
    acc = acc + m_hist[idx] + 32'd2018;
    idx = (idx + acc + 32'd2025) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2032);
    acc = acc + m_hist[idx] + 32'd2039;
    idx = (idx + acc + 32'd2046) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2053);
    acc = acc + m_hist[idx] + 32'd2060;
    idx = (idx + acc + 32'd2067) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2074);
    acc = acc + m_hist[idx] + 32'd2081;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_63 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1953);
    acc = acc + m_hist[idx] + 32'd1960;
    idx = (idx + acc + 32'd1967) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1974);
    acc = acc + m_hist[idx] + 32'd1981;
    idx = (idx + acc + 32'd1988) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1995);
    acc = acc + m_hist[idx] + 32'd2002;
    idx = (idx + acc + 32'd2009) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2016);
    acc = acc + m_hist[idx] + 32'd2023;
    idx = (idx + acc + 32'd2030) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2037);
    acc = acc + m_hist[idx] + 32'd2044;
    idx = (idx + acc + 32'd2051) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2058);
    acc = acc + m_hist[idx] + 32'd2065;
    idx = (idx + acc + 32'd2072) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2079);
    acc = acc + m_hist[idx] + 32'd2086;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1966);
    acc = acc + m_hist[idx] + 32'd1973;
    idx = (idx + acc + 32'd1980) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1987);
    acc = acc + m_hist[idx] + 32'd1994;
    idx = (idx + acc + 32'd2001) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2008);
    acc = acc + m_hist[idx] + 32'd2015;
    idx = (idx + acc + 32'd2022) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2029);
    acc = acc + m_hist[idx] + 32'd2036;
    idx = (idx + acc + 32'd2043) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2050);
    acc = acc + m_hist[idx] + 32'd2057;
    idx = (idx + acc + 32'd2064) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2071);
    acc = acc + m_hist[idx] + 32'd2078;
    idx = (idx + acc + 32'd2085) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2092);
    acc = acc + m_hist[idx] + 32'd2099;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1979);
    acc = acc + m_hist[idx] + 32'd1986;
    idx = (idx + acc + 32'd1993) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2000);
    acc = acc + m_hist[idx] + 32'd2007;
    idx = (idx + acc + 32'd2014) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2021);
    acc = acc + m_hist[idx] + 32'd2028;
    idx = (idx + acc + 32'd2035) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2042);
    acc = acc + m_hist[idx] + 32'd2049;
    idx = (idx + acc + 32'd2056) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2063);
    acc = acc + m_hist[idx] + 32'd2070;
    idx = (idx + acc + 32'd2077) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2084);
    acc = acc + m_hist[idx] + 32'd2091;
    idx = (idx + acc + 32'd2098) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2105);
    acc = acc + m_hist[idx] + 32'd2112;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_64 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1984);
    acc = acc + m_hist[idx] + 32'd1991;
    idx = (idx + acc + 32'd1998) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2005);
    acc = acc + m_hist[idx] + 32'd2012;
    idx = (idx + acc + 32'd2019) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2026);
    acc = acc + m_hist[idx] + 32'd2033;
    idx = (idx + acc + 32'd2040) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2047);
    acc = acc + m_hist[idx] + 32'd2054;
    idx = (idx + acc + 32'd2061) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2068);
    acc = acc + m_hist[idx] + 32'd2075;
    idx = (idx + acc + 32'd2082) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2089);
    acc = acc + m_hist[idx] + 32'd2096;
    idx = (idx + acc + 32'd2103) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2110);
    acc = acc + m_hist[idx] + 32'd2117;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd1997);
    acc = acc + m_hist[idx] + 32'd2004;
    idx = (idx + acc + 32'd2011) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2018);
    acc = acc + m_hist[idx] + 32'd2025;
    idx = (idx + acc + 32'd2032) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2039);
    acc = acc + m_hist[idx] + 32'd2046;
    idx = (idx + acc + 32'd2053) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2060);
    acc = acc + m_hist[idx] + 32'd2067;
    idx = (idx + acc + 32'd2074) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2081);
    acc = acc + m_hist[idx] + 32'd2088;
    idx = (idx + acc + 32'd2095) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2102);
    acc = acc + m_hist[idx] + 32'd2109;
    idx = (idx + acc + 32'd2116) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2123);
    acc = acc + m_hist[idx] + 32'd2130;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2010);
    acc = acc + m_hist[idx] + 32'd2017;
    idx = (idx + acc + 32'd2024) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2031);
    acc = acc + m_hist[idx] + 32'd2038;
    idx = (idx + acc + 32'd2045) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2052);
    acc = acc + m_hist[idx] + 32'd2059;
    idx = (idx + acc + 32'd2066) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2073);
    acc = acc + m_hist[idx] + 32'd2080;
    idx = (idx + acc + 32'd2087) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2094);
    acc = acc + m_hist[idx] + 32'd2101;
    idx = (idx + acc + 32'd2108) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2115);
    acc = acc + m_hist[idx] + 32'd2122;
    idx = (idx + acc + 32'd2129) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2136);
    acc = acc + m_hist[idx] + 32'd2143;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_65 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2015);
    acc = acc + m_hist[idx] + 32'd2022;
    idx = (idx + acc + 32'd2029) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2036);
    acc = acc + m_hist[idx] + 32'd2043;
    idx = (idx + acc + 32'd2050) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2057);
    acc = acc + m_hist[idx] + 32'd2064;
    idx = (idx + acc + 32'd2071) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2078);
    acc = acc + m_hist[idx] + 32'd2085;
    idx = (idx + acc + 32'd2092) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2099);
    acc = acc + m_hist[idx] + 32'd2106;
    idx = (idx + acc + 32'd2113) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2120);
    acc = acc + m_hist[idx] + 32'd2127;
    idx = (idx + acc + 32'd2134) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2141);
    acc = acc + m_hist[idx] + 32'd2148;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2028);
    acc = acc + m_hist[idx] + 32'd2035;
    idx = (idx + acc + 32'd2042) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2049);
    acc = acc + m_hist[idx] + 32'd2056;
    idx = (idx + acc + 32'd2063) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2070);
    acc = acc + m_hist[idx] + 32'd2077;
    idx = (idx + acc + 32'd2084) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2091);
    acc = acc + m_hist[idx] + 32'd2098;
    idx = (idx + acc + 32'd2105) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2112);
    acc = acc + m_hist[idx] + 32'd2119;
    idx = (idx + acc + 32'd2126) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2133);
    acc = acc + m_hist[idx] + 32'd2140;
    idx = (idx + acc + 32'd2147) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2154);
    acc = acc + m_hist[idx] + 32'd2161;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2041);
    acc = acc + m_hist[idx] + 32'd2048;
    idx = (idx + acc + 32'd2055) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2062);
    acc = acc + m_hist[idx] + 32'd2069;
    idx = (idx + acc + 32'd2076) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2083);
    acc = acc + m_hist[idx] + 32'd2090;
    idx = (idx + acc + 32'd2097) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2104);
    acc = acc + m_hist[idx] + 32'd2111;
    idx = (idx + acc + 32'd2118) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2125);
    acc = acc + m_hist[idx] + 32'd2132;
    idx = (idx + acc + 32'd2139) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2146);
    acc = acc + m_hist[idx] + 32'd2153;
    idx = (idx + acc + 32'd2160) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2167);
    acc = acc + m_hist[idx] + 32'd2174;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_66 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2046);
    acc = acc + m_hist[idx] + 32'd2053;
    idx = (idx + acc + 32'd2060) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2067);
    acc = acc + m_hist[idx] + 32'd2074;
    idx = (idx + acc + 32'd2081) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2088);
    acc = acc + m_hist[idx] + 32'd2095;
    idx = (idx + acc + 32'd2102) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2109);
    acc = acc + m_hist[idx] + 32'd2116;
    idx = (idx + acc + 32'd2123) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2130);
    acc = acc + m_hist[idx] + 32'd2137;
    idx = (idx + acc + 32'd2144) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2151);
    acc = acc + m_hist[idx] + 32'd2158;
    idx = (idx + acc + 32'd2165) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2172);
    acc = acc + m_hist[idx] + 32'd2179;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2059);
    acc = acc + m_hist[idx] + 32'd2066;
    idx = (idx + acc + 32'd2073) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2080);
    acc = acc + m_hist[idx] + 32'd2087;
    idx = (idx + acc + 32'd2094) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2101);
    acc = acc + m_hist[idx] + 32'd2108;
    idx = (idx + acc + 32'd2115) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2122);
    acc = acc + m_hist[idx] + 32'd2129;
    idx = (idx + acc + 32'd2136) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2143);
    acc = acc + m_hist[idx] + 32'd2150;
    idx = (idx + acc + 32'd2157) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2164);
    acc = acc + m_hist[idx] + 32'd2171;
    idx = (idx + acc + 32'd2178) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2185);
    acc = acc + m_hist[idx] + 32'd2192;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2072);
    acc = acc + m_hist[idx] + 32'd2079;
    idx = (idx + acc + 32'd2086) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2093);
    acc = acc + m_hist[idx] + 32'd2100;
    idx = (idx + acc + 32'd2107) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2114);
    acc = acc + m_hist[idx] + 32'd2121;
    idx = (idx + acc + 32'd2128) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2135);
    acc = acc + m_hist[idx] + 32'd2142;
    idx = (idx + acc + 32'd2149) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2156);
    acc = acc + m_hist[idx] + 32'd2163;
    idx = (idx + acc + 32'd2170) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2177);
    acc = acc + m_hist[idx] + 32'd2184;
    idx = (idx + acc + 32'd2191) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2198);
    acc = acc + m_hist[idx] + 32'd2205;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_67 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2077);
    acc = acc + m_hist[idx] + 32'd2084;
    idx = (idx + acc + 32'd2091) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2098);
    acc = acc + m_hist[idx] + 32'd2105;
    idx = (idx + acc + 32'd2112) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2119);
    acc = acc + m_hist[idx] + 32'd2126;
    idx = (idx + acc + 32'd2133) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2140);
    acc = acc + m_hist[idx] + 32'd2147;
    idx = (idx + acc + 32'd2154) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2161);
    acc = acc + m_hist[idx] + 32'd2168;
    idx = (idx + acc + 32'd2175) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2182);
    acc = acc + m_hist[idx] + 32'd2189;
    idx = (idx + acc + 32'd2196) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2203);
    acc = acc + m_hist[idx] + 32'd2210;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2090);
    acc = acc + m_hist[idx] + 32'd2097;
    idx = (idx + acc + 32'd2104) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2111);
    acc = acc + m_hist[idx] + 32'd2118;
    idx = (idx + acc + 32'd2125) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2132);
    acc = acc + m_hist[idx] + 32'd2139;
    idx = (idx + acc + 32'd2146) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2153);
    acc = acc + m_hist[idx] + 32'd2160;
    idx = (idx + acc + 32'd2167) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2174);
    acc = acc + m_hist[idx] + 32'd2181;
    idx = (idx + acc + 32'd2188) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2195);
    acc = acc + m_hist[idx] + 32'd2202;
    idx = (idx + acc + 32'd2209) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2216);
    acc = acc + m_hist[idx] + 32'd2223;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2103);
    acc = acc + m_hist[idx] + 32'd2110;
    idx = (idx + acc + 32'd2117) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2124);
    acc = acc + m_hist[idx] + 32'd2131;
    idx = (idx + acc + 32'd2138) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2145);
    acc = acc + m_hist[idx] + 32'd2152;
    idx = (idx + acc + 32'd2159) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2166);
    acc = acc + m_hist[idx] + 32'd2173;
    idx = (idx + acc + 32'd2180) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2187);
    acc = acc + m_hist[idx] + 32'd2194;
    idx = (idx + acc + 32'd2201) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2208);
    acc = acc + m_hist[idx] + 32'd2215;
    idx = (idx + acc + 32'd2222) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2229);
    acc = acc + m_hist[idx] + 32'd2236;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_68 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2108);
    acc = acc + m_hist[idx] + 32'd2115;
    idx = (idx + acc + 32'd2122) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2129);
    acc = acc + m_hist[idx] + 32'd2136;
    idx = (idx + acc + 32'd2143) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2150);
    acc = acc + m_hist[idx] + 32'd2157;
    idx = (idx + acc + 32'd2164) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2171);
    acc = acc + m_hist[idx] + 32'd2178;
    idx = (idx + acc + 32'd2185) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2192);
    acc = acc + m_hist[idx] + 32'd2199;
    idx = (idx + acc + 32'd2206) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2213);
    acc = acc + m_hist[idx] + 32'd2220;
    idx = (idx + acc + 32'd2227) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2234);
    acc = acc + m_hist[idx] + 32'd2241;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2121);
    acc = acc + m_hist[idx] + 32'd2128;
    idx = (idx + acc + 32'd2135) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2142);
    acc = acc + m_hist[idx] + 32'd2149;
    idx = (idx + acc + 32'd2156) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2163);
    acc = acc + m_hist[idx] + 32'd2170;
    idx = (idx + acc + 32'd2177) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2184);
    acc = acc + m_hist[idx] + 32'd2191;
    idx = (idx + acc + 32'd2198) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2205);
    acc = acc + m_hist[idx] + 32'd2212;
    idx = (idx + acc + 32'd2219) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2226);
    acc = acc + m_hist[idx] + 32'd2233;
    idx = (idx + acc + 32'd2240) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2247);
    acc = acc + m_hist[idx] + 32'd2254;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2134);
    acc = acc + m_hist[idx] + 32'd2141;
    idx = (idx + acc + 32'd2148) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2155);
    acc = acc + m_hist[idx] + 32'd2162;
    idx = (idx + acc + 32'd2169) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2176);
    acc = acc + m_hist[idx] + 32'd2183;
    idx = (idx + acc + 32'd2190) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2197);
    acc = acc + m_hist[idx] + 32'd2204;
    idx = (idx + acc + 32'd2211) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2218);
    acc = acc + m_hist[idx] + 32'd2225;
    idx = (idx + acc + 32'd2232) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2239);
    acc = acc + m_hist[idx] + 32'd2246;
    idx = (idx + acc + 32'd2253) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2260);
    acc = acc + m_hist[idx] + 32'd2267;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_69 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2139);
    acc = acc + m_hist[idx] + 32'd2146;
    idx = (idx + acc + 32'd2153) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2160);
    acc = acc + m_hist[idx] + 32'd2167;
    idx = (idx + acc + 32'd2174) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2181);
    acc = acc + m_hist[idx] + 32'd2188;
    idx = (idx + acc + 32'd2195) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2202);
    acc = acc + m_hist[idx] + 32'd2209;
    idx = (idx + acc + 32'd2216) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2223);
    acc = acc + m_hist[idx] + 32'd2230;
    idx = (idx + acc + 32'd2237) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2244);
    acc = acc + m_hist[idx] + 32'd2251;
    idx = (idx + acc + 32'd2258) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2265);
    acc = acc + m_hist[idx] + 32'd2272;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2152);
    acc = acc + m_hist[idx] + 32'd2159;
    idx = (idx + acc + 32'd2166) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2173);
    acc = acc + m_hist[idx] + 32'd2180;
    idx = (idx + acc + 32'd2187) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2194);
    acc = acc + m_hist[idx] + 32'd2201;
    idx = (idx + acc + 32'd2208) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2215);
    acc = acc + m_hist[idx] + 32'd2222;
    idx = (idx + acc + 32'd2229) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2236);
    acc = acc + m_hist[idx] + 32'd2243;
    idx = (idx + acc + 32'd2250) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2257);
    acc = acc + m_hist[idx] + 32'd2264;
    idx = (idx + acc + 32'd2271) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2278);
    acc = acc + m_hist[idx] + 32'd2285;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2165);
    acc = acc + m_hist[idx] + 32'd2172;
    idx = (idx + acc + 32'd2179) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2186);
    acc = acc + m_hist[idx] + 32'd2193;
    idx = (idx + acc + 32'd2200) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2207);
    acc = acc + m_hist[idx] + 32'd2214;
    idx = (idx + acc + 32'd2221) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2228);
    acc = acc + m_hist[idx] + 32'd2235;
    idx = (idx + acc + 32'd2242) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2249);
    acc = acc + m_hist[idx] + 32'd2256;
    idx = (idx + acc + 32'd2263) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2270);
    acc = acc + m_hist[idx] + 32'd2277;
    idx = (idx + acc + 32'd2284) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2291);
    acc = acc + m_hist[idx] + 32'd2298;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_70 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2170);
    acc = acc + m_hist[idx] + 32'd2177;
    idx = (idx + acc + 32'd2184) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2191);
    acc = acc + m_hist[idx] + 32'd2198;
    idx = (idx + acc + 32'd2205) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2212);
    acc = acc + m_hist[idx] + 32'd2219;
    idx = (idx + acc + 32'd2226) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2233);
    acc = acc + m_hist[idx] + 32'd2240;
    idx = (idx + acc + 32'd2247) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2254);
    acc = acc + m_hist[idx] + 32'd2261;
    idx = (idx + acc + 32'd2268) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2275);
    acc = acc + m_hist[idx] + 32'd2282;
    idx = (idx + acc + 32'd2289) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2296);
    acc = acc + m_hist[idx] + 32'd2303;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2183);
    acc = acc + m_hist[idx] + 32'd2190;
    idx = (idx + acc + 32'd2197) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2204);
    acc = acc + m_hist[idx] + 32'd2211;
    idx = (idx + acc + 32'd2218) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2225);
    acc = acc + m_hist[idx] + 32'd2232;
    idx = (idx + acc + 32'd2239) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2246);
    acc = acc + m_hist[idx] + 32'd2253;
    idx = (idx + acc + 32'd2260) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2267);
    acc = acc + m_hist[idx] + 32'd2274;
    idx = (idx + acc + 32'd2281) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2288);
    acc = acc + m_hist[idx] + 32'd2295;
    idx = (idx + acc + 32'd2302) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2309);
    acc = acc + m_hist[idx] + 32'd2316;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2196);
    acc = acc + m_hist[idx] + 32'd2203;
    idx = (idx + acc + 32'd2210) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2217);
    acc = acc + m_hist[idx] + 32'd2224;
    idx = (idx + acc + 32'd2231) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2238);
    acc = acc + m_hist[idx] + 32'd2245;
    idx = (idx + acc + 32'd2252) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2259);
    acc = acc + m_hist[idx] + 32'd2266;
    idx = (idx + acc + 32'd2273) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2280);
    acc = acc + m_hist[idx] + 32'd2287;
    idx = (idx + acc + 32'd2294) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2301);
    acc = acc + m_hist[idx] + 32'd2308;
    idx = (idx + acc + 32'd2315) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2322);
    acc = acc + m_hist[idx] + 32'd2329;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_71 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2201);
    acc = acc + m_hist[idx] + 32'd2208;
    idx = (idx + acc + 32'd2215) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2222);
    acc = acc + m_hist[idx] + 32'd2229;
    idx = (idx + acc + 32'd2236) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2243);
    acc = acc + m_hist[idx] + 32'd2250;
    idx = (idx + acc + 32'd2257) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2264);
    acc = acc + m_hist[idx] + 32'd2271;
    idx = (idx + acc + 32'd2278) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2285);
    acc = acc + m_hist[idx] + 32'd2292;
    idx = (idx + acc + 32'd2299) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2306);
    acc = acc + m_hist[idx] + 32'd2313;
    idx = (idx + acc + 32'd2320) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2327);
    acc = acc + m_hist[idx] + 32'd2334;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2214);
    acc = acc + m_hist[idx] + 32'd2221;
    idx = (idx + acc + 32'd2228) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2235);
    acc = acc + m_hist[idx] + 32'd2242;
    idx = (idx + acc + 32'd2249) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2256);
    acc = acc + m_hist[idx] + 32'd2263;
    idx = (idx + acc + 32'd2270) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2277);
    acc = acc + m_hist[idx] + 32'd2284;
    idx = (idx + acc + 32'd2291) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2298);
    acc = acc + m_hist[idx] + 32'd2305;
    idx = (idx + acc + 32'd2312) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2319);
    acc = acc + m_hist[idx] + 32'd2326;
    idx = (idx + acc + 32'd2333) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2340);
    acc = acc + m_hist[idx] + 32'd2347;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2227);
    acc = acc + m_hist[idx] + 32'd2234;
    idx = (idx + acc + 32'd2241) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2248);
    acc = acc + m_hist[idx] + 32'd2255;
    idx = (idx + acc + 32'd2262) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2269);
    acc = acc + m_hist[idx] + 32'd2276;
    idx = (idx + acc + 32'd2283) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2290);
    acc = acc + m_hist[idx] + 32'd2297;
    idx = (idx + acc + 32'd2304) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2311);
    acc = acc + m_hist[idx] + 32'd2318;
    idx = (idx + acc + 32'd2325) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2332);
    acc = acc + m_hist[idx] + 32'd2339;
    idx = (idx + acc + 32'd2346) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2353);
    acc = acc + m_hist[idx] + 32'd2360;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_72 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2232);
    acc = acc + m_hist[idx] + 32'd2239;
    idx = (idx + acc + 32'd2246) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2253);
    acc = acc + m_hist[idx] + 32'd2260;
    idx = (idx + acc + 32'd2267) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2274);
    acc = acc + m_hist[idx] + 32'd2281;
    idx = (idx + acc + 32'd2288) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2295);
    acc = acc + m_hist[idx] + 32'd2302;
    idx = (idx + acc + 32'd2309) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2316);
    acc = acc + m_hist[idx] + 32'd2323;
    idx = (idx + acc + 32'd2330) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2337);
    acc = acc + m_hist[idx] + 32'd2344;
    idx = (idx + acc + 32'd2351) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2358);
    acc = acc + m_hist[idx] + 32'd2365;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2245);
    acc = acc + m_hist[idx] + 32'd2252;
    idx = (idx + acc + 32'd2259) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2266);
    acc = acc + m_hist[idx] + 32'd2273;
    idx = (idx + acc + 32'd2280) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2287);
    acc = acc + m_hist[idx] + 32'd2294;
    idx = (idx + acc + 32'd2301) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2308);
    acc = acc + m_hist[idx] + 32'd2315;
    idx = (idx + acc + 32'd2322) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2329);
    acc = acc + m_hist[idx] + 32'd2336;
    idx = (idx + acc + 32'd2343) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2350);
    acc = acc + m_hist[idx] + 32'd2357;
    idx = (idx + acc + 32'd2364) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2371);
    acc = acc + m_hist[idx] + 32'd2378;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2258);
    acc = acc + m_hist[idx] + 32'd2265;
    idx = (idx + acc + 32'd2272) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2279);
    acc = acc + m_hist[idx] + 32'd2286;
    idx = (idx + acc + 32'd2293) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2300);
    acc = acc + m_hist[idx] + 32'd2307;
    idx = (idx + acc + 32'd2314) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2321);
    acc = acc + m_hist[idx] + 32'd2328;
    idx = (idx + acc + 32'd2335) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2342);
    acc = acc + m_hist[idx] + 32'd2349;
    idx = (idx + acc + 32'd2356) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2363);
    acc = acc + m_hist[idx] + 32'd2370;
    idx = (idx + acc + 32'd2377) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2384);
    acc = acc + m_hist[idx] + 32'd2391;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_73 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2263);
    acc = acc + m_hist[idx] + 32'd2270;
    idx = (idx + acc + 32'd2277) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2284);
    acc = acc + m_hist[idx] + 32'd2291;
    idx = (idx + acc + 32'd2298) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2305);
    acc = acc + m_hist[idx] + 32'd2312;
    idx = (idx + acc + 32'd2319) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2326);
    acc = acc + m_hist[idx] + 32'd2333;
    idx = (idx + acc + 32'd2340) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2347);
    acc = acc + m_hist[idx] + 32'd2354;
    idx = (idx + acc + 32'd2361) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2368);
    acc = acc + m_hist[idx] + 32'd2375;
    idx = (idx + acc + 32'd2382) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2389);
    acc = acc + m_hist[idx] + 32'd2396;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2276);
    acc = acc + m_hist[idx] + 32'd2283;
    idx = (idx + acc + 32'd2290) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2297);
    acc = acc + m_hist[idx] + 32'd2304;
    idx = (idx + acc + 32'd2311) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2318);
    acc = acc + m_hist[idx] + 32'd2325;
    idx = (idx + acc + 32'd2332) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2339);
    acc = acc + m_hist[idx] + 32'd2346;
    idx = (idx + acc + 32'd2353) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2360);
    acc = acc + m_hist[idx] + 32'd2367;
    idx = (idx + acc + 32'd2374) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2381);
    acc = acc + m_hist[idx] + 32'd2388;
    idx = (idx + acc + 32'd2395) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2402);
    acc = acc + m_hist[idx] + 32'd2409;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2289);
    acc = acc + m_hist[idx] + 32'd2296;
    idx = (idx + acc + 32'd2303) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2310);
    acc = acc + m_hist[idx] + 32'd2317;
    idx = (idx + acc + 32'd2324) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2331);
    acc = acc + m_hist[idx] + 32'd2338;
    idx = (idx + acc + 32'd2345) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2352);
    acc = acc + m_hist[idx] + 32'd2359;
    idx = (idx + acc + 32'd2366) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2373);
    acc = acc + m_hist[idx] + 32'd2380;
    idx = (idx + acc + 32'd2387) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2394);
    acc = acc + m_hist[idx] + 32'd2401;
    idx = (idx + acc + 32'd2408) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2415);
    acc = acc + m_hist[idx] + 32'd2422;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_74 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2294);
    acc = acc + m_hist[idx] + 32'd2301;
    idx = (idx + acc + 32'd2308) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2315);
    acc = acc + m_hist[idx] + 32'd2322;
    idx = (idx + acc + 32'd2329) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2336);
    acc = acc + m_hist[idx] + 32'd2343;
    idx = (idx + acc + 32'd2350) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2357);
    acc = acc + m_hist[idx] + 32'd2364;
    idx = (idx + acc + 32'd2371) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2378);
    acc = acc + m_hist[idx] + 32'd2385;
    idx = (idx + acc + 32'd2392) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2399);
    acc = acc + m_hist[idx] + 32'd2406;
    idx = (idx + acc + 32'd2413) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2420);
    acc = acc + m_hist[idx] + 32'd2427;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2307);
    acc = acc + m_hist[idx] + 32'd2314;
    idx = (idx + acc + 32'd2321) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2328);
    acc = acc + m_hist[idx] + 32'd2335;
    idx = (idx + acc + 32'd2342) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2349);
    acc = acc + m_hist[idx] + 32'd2356;
    idx = (idx + acc + 32'd2363) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2370);
    acc = acc + m_hist[idx] + 32'd2377;
    idx = (idx + acc + 32'd2384) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2391);
    acc = acc + m_hist[idx] + 32'd2398;
    idx = (idx + acc + 32'd2405) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2412);
    acc = acc + m_hist[idx] + 32'd2419;
    idx = (idx + acc + 32'd2426) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2433);
    acc = acc + m_hist[idx] + 32'd2440;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2320);
    acc = acc + m_hist[idx] + 32'd2327;
    idx = (idx + acc + 32'd2334) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2341);
    acc = acc + m_hist[idx] + 32'd2348;
    idx = (idx + acc + 32'd2355) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2362);
    acc = acc + m_hist[idx] + 32'd2369;
    idx = (idx + acc + 32'd2376) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2383);
    acc = acc + m_hist[idx] + 32'd2390;
    idx = (idx + acc + 32'd2397) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2404);
    acc = acc + m_hist[idx] + 32'd2411;
    idx = (idx + acc + 32'd2418) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2425);
    acc = acc + m_hist[idx] + 32'd2432;
    idx = (idx + acc + 32'd2439) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2446);
    acc = acc + m_hist[idx] + 32'd2453;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_75 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2325);
    acc = acc + m_hist[idx] + 32'd2332;
    idx = (idx + acc + 32'd2339) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2346);
    acc = acc + m_hist[idx] + 32'd2353;
    idx = (idx + acc + 32'd2360) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2367);
    acc = acc + m_hist[idx] + 32'd2374;
    idx = (idx + acc + 32'd2381) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2388);
    acc = acc + m_hist[idx] + 32'd2395;
    idx = (idx + acc + 32'd2402) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2409);
    acc = acc + m_hist[idx] + 32'd2416;
    idx = (idx + acc + 32'd2423) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2430);
    acc = acc + m_hist[idx] + 32'd2437;
    idx = (idx + acc + 32'd2444) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2451);
    acc = acc + m_hist[idx] + 32'd2458;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2338);
    acc = acc + m_hist[idx] + 32'd2345;
    idx = (idx + acc + 32'd2352) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2359);
    acc = acc + m_hist[idx] + 32'd2366;
    idx = (idx + acc + 32'd2373) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2380);
    acc = acc + m_hist[idx] + 32'd2387;
    idx = (idx + acc + 32'd2394) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2401);
    acc = acc + m_hist[idx] + 32'd2408;
    idx = (idx + acc + 32'd2415) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2422);
    acc = acc + m_hist[idx] + 32'd2429;
    idx = (idx + acc + 32'd2436) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2443);
    acc = acc + m_hist[idx] + 32'd2450;
    idx = (idx + acc + 32'd2457) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2464);
    acc = acc + m_hist[idx] + 32'd2471;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2351);
    acc = acc + m_hist[idx] + 32'd2358;
    idx = (idx + acc + 32'd2365) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2372);
    acc = acc + m_hist[idx] + 32'd2379;
    idx = (idx + acc + 32'd2386) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2393);
    acc = acc + m_hist[idx] + 32'd2400;
    idx = (idx + acc + 32'd2407) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2414);
    acc = acc + m_hist[idx] + 32'd2421;
    idx = (idx + acc + 32'd2428) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2435);
    acc = acc + m_hist[idx] + 32'd2442;
    idx = (idx + acc + 32'd2449) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2456);
    acc = acc + m_hist[idx] + 32'd2463;
    idx = (idx + acc + 32'd2470) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2477);
    acc = acc + m_hist[idx] + 32'd2484;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_76 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2356);
    acc = acc + m_hist[idx] + 32'd2363;
    idx = (idx + acc + 32'd2370) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2377);
    acc = acc + m_hist[idx] + 32'd2384;
    idx = (idx + acc + 32'd2391) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2398);
    acc = acc + m_hist[idx] + 32'd2405;
    idx = (idx + acc + 32'd2412) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2419);
    acc = acc + m_hist[idx] + 32'd2426;
    idx = (idx + acc + 32'd2433) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2440);
    acc = acc + m_hist[idx] + 32'd2447;
    idx = (idx + acc + 32'd2454) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2461);
    acc = acc + m_hist[idx] + 32'd2468;
    idx = (idx + acc + 32'd2475) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2482);
    acc = acc + m_hist[idx] + 32'd2489;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2369);
    acc = acc + m_hist[idx] + 32'd2376;
    idx = (idx + acc + 32'd2383) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2390);
    acc = acc + m_hist[idx] + 32'd2397;
    idx = (idx + acc + 32'd2404) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2411);
    acc = acc + m_hist[idx] + 32'd2418;
    idx = (idx + acc + 32'd2425) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2432);
    acc = acc + m_hist[idx] + 32'd2439;
    idx = (idx + acc + 32'd2446) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2453);
    acc = acc + m_hist[idx] + 32'd2460;
    idx = (idx + acc + 32'd2467) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2474);
    acc = acc + m_hist[idx] + 32'd2481;
    idx = (idx + acc + 32'd2488) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2495);
    acc = acc + m_hist[idx] + 32'd2502;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2382);
    acc = acc + m_hist[idx] + 32'd2389;
    idx = (idx + acc + 32'd2396) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2403);
    acc = acc + m_hist[idx] + 32'd2410;
    idx = (idx + acc + 32'd2417) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2424);
    acc = acc + m_hist[idx] + 32'd2431;
    idx = (idx + acc + 32'd2438) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2445);
    acc = acc + m_hist[idx] + 32'd2452;
    idx = (idx + acc + 32'd2459) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2466);
    acc = acc + m_hist[idx] + 32'd2473;
    idx = (idx + acc + 32'd2480) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2487);
    acc = acc + m_hist[idx] + 32'd2494;
    idx = (idx + acc + 32'd2501) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2508);
    acc = acc + m_hist[idx] + 32'd2515;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_77 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2387);
    acc = acc + m_hist[idx] + 32'd2394;
    idx = (idx + acc + 32'd2401) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2408);
    acc = acc + m_hist[idx] + 32'd2415;
    idx = (idx + acc + 32'd2422) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2429);
    acc = acc + m_hist[idx] + 32'd2436;
    idx = (idx + acc + 32'd2443) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2450);
    acc = acc + m_hist[idx] + 32'd2457;
    idx = (idx + acc + 32'd2464) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2471);
    acc = acc + m_hist[idx] + 32'd2478;
    idx = (idx + acc + 32'd2485) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2492);
    acc = acc + m_hist[idx] + 32'd2499;
    idx = (idx + acc + 32'd2506) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2513);
    acc = acc + m_hist[idx] + 32'd2520;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2400);
    acc = acc + m_hist[idx] + 32'd2407;
    idx = (idx + acc + 32'd2414) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2421);
    acc = acc + m_hist[idx] + 32'd2428;
    idx = (idx + acc + 32'd2435) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2442);
    acc = acc + m_hist[idx] + 32'd2449;
    idx = (idx + acc + 32'd2456) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2463);
    acc = acc + m_hist[idx] + 32'd2470;
    idx = (idx + acc + 32'd2477) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2484);
    acc = acc + m_hist[idx] + 32'd2491;
    idx = (idx + acc + 32'd2498) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2505);
    acc = acc + m_hist[idx] + 32'd2512;
    idx = (idx + acc + 32'd2519) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2526);
    acc = acc + m_hist[idx] + 32'd2533;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2413);
    acc = acc + m_hist[idx] + 32'd2420;
    idx = (idx + acc + 32'd2427) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2434);
    acc = acc + m_hist[idx] + 32'd2441;
    idx = (idx + acc + 32'd2448) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2455);
    acc = acc + m_hist[idx] + 32'd2462;
    idx = (idx + acc + 32'd2469) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2476);
    acc = acc + m_hist[idx] + 32'd2483;
    idx = (idx + acc + 32'd2490) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2497);
    acc = acc + m_hist[idx] + 32'd2504;
    idx = (idx + acc + 32'd2511) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2518);
    acc = acc + m_hist[idx] + 32'd2525;
    idx = (idx + acc + 32'd2532) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2539);
    acc = acc + m_hist[idx] + 32'd2546;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_78 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2418);
    acc = acc + m_hist[idx] + 32'd2425;
    idx = (idx + acc + 32'd2432) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2439);
    acc = acc + m_hist[idx] + 32'd2446;
    idx = (idx + acc + 32'd2453) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2460);
    acc = acc + m_hist[idx] + 32'd2467;
    idx = (idx + acc + 32'd2474) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2481);
    acc = acc + m_hist[idx] + 32'd2488;
    idx = (idx + acc + 32'd2495) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2502);
    acc = acc + m_hist[idx] + 32'd2509;
    idx = (idx + acc + 32'd2516) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2523);
    acc = acc + m_hist[idx] + 32'd2530;
    idx = (idx + acc + 32'd2537) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2544);
    acc = acc + m_hist[idx] + 32'd2551;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2431);
    acc = acc + m_hist[idx] + 32'd2438;
    idx = (idx + acc + 32'd2445) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2452);
    acc = acc + m_hist[idx] + 32'd2459;
    idx = (idx + acc + 32'd2466) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2473);
    acc = acc + m_hist[idx] + 32'd2480;
    idx = (idx + acc + 32'd2487) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2494);
    acc = acc + m_hist[idx] + 32'd2501;
    idx = (idx + acc + 32'd2508) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2515);
    acc = acc + m_hist[idx] + 32'd2522;
    idx = (idx + acc + 32'd2529) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2536);
    acc = acc + m_hist[idx] + 32'd2543;
    idx = (idx + acc + 32'd2550) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2557);
    acc = acc + m_hist[idx] + 32'd2564;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2444);
    acc = acc + m_hist[idx] + 32'd2451;
    idx = (idx + acc + 32'd2458) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2465);
    acc = acc + m_hist[idx] + 32'd2472;
    idx = (idx + acc + 32'd2479) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2486);
    acc = acc + m_hist[idx] + 32'd2493;
    idx = (idx + acc + 32'd2500) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2507);
    acc = acc + m_hist[idx] + 32'd2514;
    idx = (idx + acc + 32'd2521) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2528);
    acc = acc + m_hist[idx] + 32'd2535;
    idx = (idx + acc + 32'd2542) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2549);
    acc = acc + m_hist[idx] + 32'd2556;
    idx = (idx + acc + 32'd2563) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2570);
    acc = acc + m_hist[idx] + 32'd2577;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_79 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2449);
    acc = acc + m_hist[idx] + 32'd2456;
    idx = (idx + acc + 32'd2463) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2470);
    acc = acc + m_hist[idx] + 32'd2477;
    idx = (idx + acc + 32'd2484) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2491);
    acc = acc + m_hist[idx] + 32'd2498;
    idx = (idx + acc + 32'd2505) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2512);
    acc = acc + m_hist[idx] + 32'd2519;
    idx = (idx + acc + 32'd2526) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2533);
    acc = acc + m_hist[idx] + 32'd2540;
    idx = (idx + acc + 32'd2547) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2554);
    acc = acc + m_hist[idx] + 32'd2561;
    idx = (idx + acc + 32'd2568) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2575);
    acc = acc + m_hist[idx] + 32'd2582;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2462);
    acc = acc + m_hist[idx] + 32'd2469;
    idx = (idx + acc + 32'd2476) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2483);
    acc = acc + m_hist[idx] + 32'd2490;
    idx = (idx + acc + 32'd2497) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2504);
    acc = acc + m_hist[idx] + 32'd2511;
    idx = (idx + acc + 32'd2518) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2525);
    acc = acc + m_hist[idx] + 32'd2532;
    idx = (idx + acc + 32'd2539) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2546);
    acc = acc + m_hist[idx] + 32'd2553;
    idx = (idx + acc + 32'd2560) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2567);
    acc = acc + m_hist[idx] + 32'd2574;
    idx = (idx + acc + 32'd2581) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2588);
    acc = acc + m_hist[idx] + 32'd2595;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2475);
    acc = acc + m_hist[idx] + 32'd2482;
    idx = (idx + acc + 32'd2489) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2496);
    acc = acc + m_hist[idx] + 32'd2503;
    idx = (idx + acc + 32'd2510) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2517);
    acc = acc + m_hist[idx] + 32'd2524;
    idx = (idx + acc + 32'd2531) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2538);
    acc = acc + m_hist[idx] + 32'd2545;
    idx = (idx + acc + 32'd2552) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2559);
    acc = acc + m_hist[idx] + 32'd2566;
    idx = (idx + acc + 32'd2573) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2580);
    acc = acc + m_hist[idx] + 32'd2587;
    idx = (idx + acc + 32'd2594) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2601);
    acc = acc + m_hist[idx] + 32'd2608;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_80 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2480);
    acc = acc + m_hist[idx] + 32'd2487;
    idx = (idx + acc + 32'd2494) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2501);
    acc = acc + m_hist[idx] + 32'd2508;
    idx = (idx + acc + 32'd2515) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2522);
    acc = acc + m_hist[idx] + 32'd2529;
    idx = (idx + acc + 32'd2536) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2543);
    acc = acc + m_hist[idx] + 32'd2550;
    idx = (idx + acc + 32'd2557) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2564);
    acc = acc + m_hist[idx] + 32'd2571;
    idx = (idx + acc + 32'd2578) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2585);
    acc = acc + m_hist[idx] + 32'd2592;
    idx = (idx + acc + 32'd2599) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2606);
    acc = acc + m_hist[idx] + 32'd2613;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2493);
    acc = acc + m_hist[idx] + 32'd2500;
    idx = (idx + acc + 32'd2507) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2514);
    acc = acc + m_hist[idx] + 32'd2521;
    idx = (idx + acc + 32'd2528) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2535);
    acc = acc + m_hist[idx] + 32'd2542;
    idx = (idx + acc + 32'd2549) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2556);
    acc = acc + m_hist[idx] + 32'd2563;
    idx = (idx + acc + 32'd2570) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2577);
    acc = acc + m_hist[idx] + 32'd2584;
    idx = (idx + acc + 32'd2591) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2598);
    acc = acc + m_hist[idx] + 32'd2605;
    idx = (idx + acc + 32'd2612) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2619);
    acc = acc + m_hist[idx] + 32'd2626;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2506);
    acc = acc + m_hist[idx] + 32'd2513;
    idx = (idx + acc + 32'd2520) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2527);
    acc = acc + m_hist[idx] + 32'd2534;
    idx = (idx + acc + 32'd2541) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2548);
    acc = acc + m_hist[idx] + 32'd2555;
    idx = (idx + acc + 32'd2562) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2569);
    acc = acc + m_hist[idx] + 32'd2576;
    idx = (idx + acc + 32'd2583) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2590);
    acc = acc + m_hist[idx] + 32'd2597;
    idx = (idx + acc + 32'd2604) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2611);
    acc = acc + m_hist[idx] + 32'd2618;
    idx = (idx + acc + 32'd2625) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2632);
    acc = acc + m_hist[idx] + 32'd2639;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_81 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2511);
    acc = acc + m_hist[idx] + 32'd2518;
    idx = (idx + acc + 32'd2525) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2532);
    acc = acc + m_hist[idx] + 32'd2539;
    idx = (idx + acc + 32'd2546) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2553);
    acc = acc + m_hist[idx] + 32'd2560;
    idx = (idx + acc + 32'd2567) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2574);
    acc = acc + m_hist[idx] + 32'd2581;
    idx = (idx + acc + 32'd2588) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2595);
    acc = acc + m_hist[idx] + 32'd2602;
    idx = (idx + acc + 32'd2609) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2616);
    acc = acc + m_hist[idx] + 32'd2623;
    idx = (idx + acc + 32'd2630) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2637);
    acc = acc + m_hist[idx] + 32'd2644;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2524);
    acc = acc + m_hist[idx] + 32'd2531;
    idx = (idx + acc + 32'd2538) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2545);
    acc = acc + m_hist[idx] + 32'd2552;
    idx = (idx + acc + 32'd2559) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2566);
    acc = acc + m_hist[idx] + 32'd2573;
    idx = (idx + acc + 32'd2580) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2587);
    acc = acc + m_hist[idx] + 32'd2594;
    idx = (idx + acc + 32'd2601) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2608);
    acc = acc + m_hist[idx] + 32'd2615;
    idx = (idx + acc + 32'd2622) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2629);
    acc = acc + m_hist[idx] + 32'd2636;
    idx = (idx + acc + 32'd2643) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2650);
    acc = acc + m_hist[idx] + 32'd2657;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2537);
    acc = acc + m_hist[idx] + 32'd2544;
    idx = (idx + acc + 32'd2551) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2558);
    acc = acc + m_hist[idx] + 32'd2565;
    idx = (idx + acc + 32'd2572) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2579);
    acc = acc + m_hist[idx] + 32'd2586;
    idx = (idx + acc + 32'd2593) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2600);
    acc = acc + m_hist[idx] + 32'd2607;
    idx = (idx + acc + 32'd2614) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2621);
    acc = acc + m_hist[idx] + 32'd2628;
    idx = (idx + acc + 32'd2635) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2642);
    acc = acc + m_hist[idx] + 32'd2649;
    idx = (idx + acc + 32'd2656) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2663);
    acc = acc + m_hist[idx] + 32'd2670;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_82 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2542);
    acc = acc + m_hist[idx] + 32'd2549;
    idx = (idx + acc + 32'd2556) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2563);
    acc = acc + m_hist[idx] + 32'd2570;
    idx = (idx + acc + 32'd2577) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2584);
    acc = acc + m_hist[idx] + 32'd2591;
    idx = (idx + acc + 32'd2598) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2605);
    acc = acc + m_hist[idx] + 32'd2612;
    idx = (idx + acc + 32'd2619) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2626);
    acc = acc + m_hist[idx] + 32'd2633;
    idx = (idx + acc + 32'd2640) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2647);
    acc = acc + m_hist[idx] + 32'd2654;
    idx = (idx + acc + 32'd2661) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2668);
    acc = acc + m_hist[idx] + 32'd2675;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2555);
    acc = acc + m_hist[idx] + 32'd2562;
    idx = (idx + acc + 32'd2569) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2576);
    acc = acc + m_hist[idx] + 32'd2583;
    idx = (idx + acc + 32'd2590) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2597);
    acc = acc + m_hist[idx] + 32'd2604;
    idx = (idx + acc + 32'd2611) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2618);
    acc = acc + m_hist[idx] + 32'd2625;
    idx = (idx + acc + 32'd2632) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2639);
    acc = acc + m_hist[idx] + 32'd2646;
    idx = (idx + acc + 32'd2653) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2660);
    acc = acc + m_hist[idx] + 32'd2667;
    idx = (idx + acc + 32'd2674) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2681);
    acc = acc + m_hist[idx] + 32'd2688;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2568);
    acc = acc + m_hist[idx] + 32'd2575;
    idx = (idx + acc + 32'd2582) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2589);
    acc = acc + m_hist[idx] + 32'd2596;
    idx = (idx + acc + 32'd2603) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2610);
    acc = acc + m_hist[idx] + 32'd2617;
    idx = (idx + acc + 32'd2624) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2631);
    acc = acc + m_hist[idx] + 32'd2638;
    idx = (idx + acc + 32'd2645) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2652);
    acc = acc + m_hist[idx] + 32'd2659;
    idx = (idx + acc + 32'd2666) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2673);
    acc = acc + m_hist[idx] + 32'd2680;
    idx = (idx + acc + 32'd2687) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2694);
    acc = acc + m_hist[idx] + 32'd2701;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_83 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2573);
    acc = acc + m_hist[idx] + 32'd2580;
    idx = (idx + acc + 32'd2587) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2594);
    acc = acc + m_hist[idx] + 32'd2601;
    idx = (idx + acc + 32'd2608) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2615);
    acc = acc + m_hist[idx] + 32'd2622;
    idx = (idx + acc + 32'd2629) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2636);
    acc = acc + m_hist[idx] + 32'd2643;
    idx = (idx + acc + 32'd2650) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2657);
    acc = acc + m_hist[idx] + 32'd2664;
    idx = (idx + acc + 32'd2671) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2678);
    acc = acc + m_hist[idx] + 32'd2685;
    idx = (idx + acc + 32'd2692) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2699);
    acc = acc + m_hist[idx] + 32'd2706;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2586);
    acc = acc + m_hist[idx] + 32'd2593;
    idx = (idx + acc + 32'd2600) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2607);
    acc = acc + m_hist[idx] + 32'd2614;
    idx = (idx + acc + 32'd2621) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2628);
    acc = acc + m_hist[idx] + 32'd2635;
    idx = (idx + acc + 32'd2642) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2649);
    acc = acc + m_hist[idx] + 32'd2656;
    idx = (idx + acc + 32'd2663) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2670);
    acc = acc + m_hist[idx] + 32'd2677;
    idx = (idx + acc + 32'd2684) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2691);
    acc = acc + m_hist[idx] + 32'd2698;
    idx = (idx + acc + 32'd2705) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2712);
    acc = acc + m_hist[idx] + 32'd2719;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2599);
    acc = acc + m_hist[idx] + 32'd2606;
    idx = (idx + acc + 32'd2613) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2620);
    acc = acc + m_hist[idx] + 32'd2627;
    idx = (idx + acc + 32'd2634) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2641);
    acc = acc + m_hist[idx] + 32'd2648;
    idx = (idx + acc + 32'd2655) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2662);
    acc = acc + m_hist[idx] + 32'd2669;
    idx = (idx + acc + 32'd2676) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2683);
    acc = acc + m_hist[idx] + 32'd2690;
    idx = (idx + acc + 32'd2697) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2704);
    acc = acc + m_hist[idx] + 32'd2711;
    idx = (idx + acc + 32'd2718) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2725);
    acc = acc + m_hist[idx] + 32'd2732;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_84 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2604);
    acc = acc + m_hist[idx] + 32'd2611;
    idx = (idx + acc + 32'd2618) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2625);
    acc = acc + m_hist[idx] + 32'd2632;
    idx = (idx + acc + 32'd2639) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2646);
    acc = acc + m_hist[idx] + 32'd2653;
    idx = (idx + acc + 32'd2660) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2667);
    acc = acc + m_hist[idx] + 32'd2674;
    idx = (idx + acc + 32'd2681) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2688);
    acc = acc + m_hist[idx] + 32'd2695;
    idx = (idx + acc + 32'd2702) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2709);
    acc = acc + m_hist[idx] + 32'd2716;
    idx = (idx + acc + 32'd2723) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2730);
    acc = acc + m_hist[idx] + 32'd2737;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2617);
    acc = acc + m_hist[idx] + 32'd2624;
    idx = (idx + acc + 32'd2631) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2638);
    acc = acc + m_hist[idx] + 32'd2645;
    idx = (idx + acc + 32'd2652) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2659);
    acc = acc + m_hist[idx] + 32'd2666;
    idx = (idx + acc + 32'd2673) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2680);
    acc = acc + m_hist[idx] + 32'd2687;
    idx = (idx + acc + 32'd2694) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2701);
    acc = acc + m_hist[idx] + 32'd2708;
    idx = (idx + acc + 32'd2715) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2722);
    acc = acc + m_hist[idx] + 32'd2729;
    idx = (idx + acc + 32'd2736) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2743);
    acc = acc + m_hist[idx] + 32'd2750;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2630);
    acc = acc + m_hist[idx] + 32'd2637;
    idx = (idx + acc + 32'd2644) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2651);
    acc = acc + m_hist[idx] + 32'd2658;
    idx = (idx + acc + 32'd2665) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2672);
    acc = acc + m_hist[idx] + 32'd2679;
    idx = (idx + acc + 32'd2686) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2693);
    acc = acc + m_hist[idx] + 32'd2700;
    idx = (idx + acc + 32'd2707) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2714);
    acc = acc + m_hist[idx] + 32'd2721;
    idx = (idx + acc + 32'd2728) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2735);
    acc = acc + m_hist[idx] + 32'd2742;
    idx = (idx + acc + 32'd2749) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2756);
    acc = acc + m_hist[idx] + 32'd2763;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_85 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2635);
    acc = acc + m_hist[idx] + 32'd2642;
    idx = (idx + acc + 32'd2649) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2656);
    acc = acc + m_hist[idx] + 32'd2663;
    idx = (idx + acc + 32'd2670) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2677);
    acc = acc + m_hist[idx] + 32'd2684;
    idx = (idx + acc + 32'd2691) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2698);
    acc = acc + m_hist[idx] + 32'd2705;
    idx = (idx + acc + 32'd2712) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2719);
    acc = acc + m_hist[idx] + 32'd2726;
    idx = (idx + acc + 32'd2733) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2740);
    acc = acc + m_hist[idx] + 32'd2747;
    idx = (idx + acc + 32'd2754) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2761);
    acc = acc + m_hist[idx] + 32'd2768;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2648);
    acc = acc + m_hist[idx] + 32'd2655;
    idx = (idx + acc + 32'd2662) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2669);
    acc = acc + m_hist[idx] + 32'd2676;
    idx = (idx + acc + 32'd2683) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2690);
    acc = acc + m_hist[idx] + 32'd2697;
    idx = (idx + acc + 32'd2704) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2711);
    acc = acc + m_hist[idx] + 32'd2718;
    idx = (idx + acc + 32'd2725) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2732);
    acc = acc + m_hist[idx] + 32'd2739;
    idx = (idx + acc + 32'd2746) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2753);
    acc = acc + m_hist[idx] + 32'd2760;
    idx = (idx + acc + 32'd2767) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2774);
    acc = acc + m_hist[idx] + 32'd2781;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2661);
    acc = acc + m_hist[idx] + 32'd2668;
    idx = (idx + acc + 32'd2675) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2682);
    acc = acc + m_hist[idx] + 32'd2689;
    idx = (idx + acc + 32'd2696) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2703);
    acc = acc + m_hist[idx] + 32'd2710;
    idx = (idx + acc + 32'd2717) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2724);
    acc = acc + m_hist[idx] + 32'd2731;
    idx = (idx + acc + 32'd2738) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2745);
    acc = acc + m_hist[idx] + 32'd2752;
    idx = (idx + acc + 32'd2759) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2766);
    acc = acc + m_hist[idx] + 32'd2773;
    idx = (idx + acc + 32'd2780) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2787);
    acc = acc + m_hist[idx] + 32'd2794;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_86 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2666);
    acc = acc + m_hist[idx] + 32'd2673;
    idx = (idx + acc + 32'd2680) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2687);
    acc = acc + m_hist[idx] + 32'd2694;
    idx = (idx + acc + 32'd2701) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2708);
    acc = acc + m_hist[idx] + 32'd2715;
    idx = (idx + acc + 32'd2722) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2729);
    acc = acc + m_hist[idx] + 32'd2736;
    idx = (idx + acc + 32'd2743) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2750);
    acc = acc + m_hist[idx] + 32'd2757;
    idx = (idx + acc + 32'd2764) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2771);
    acc = acc + m_hist[idx] + 32'd2778;
    idx = (idx + acc + 32'd2785) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2792);
    acc = acc + m_hist[idx] + 32'd2799;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2679);
    acc = acc + m_hist[idx] + 32'd2686;
    idx = (idx + acc + 32'd2693) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2700);
    acc = acc + m_hist[idx] + 32'd2707;
    idx = (idx + acc + 32'd2714) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2721);
    acc = acc + m_hist[idx] + 32'd2728;
    idx = (idx + acc + 32'd2735) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2742);
    acc = acc + m_hist[idx] + 32'd2749;
    idx = (idx + acc + 32'd2756) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2763);
    acc = acc + m_hist[idx] + 32'd2770;
    idx = (idx + acc + 32'd2777) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2784);
    acc = acc + m_hist[idx] + 32'd2791;
    idx = (idx + acc + 32'd2798) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2805);
    acc = acc + m_hist[idx] + 32'd2812;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2692);
    acc = acc + m_hist[idx] + 32'd2699;
    idx = (idx + acc + 32'd2706) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2713);
    acc = acc + m_hist[idx] + 32'd2720;
    idx = (idx + acc + 32'd2727) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2734);
    acc = acc + m_hist[idx] + 32'd2741;
    idx = (idx + acc + 32'd2748) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2755);
    acc = acc + m_hist[idx] + 32'd2762;
    idx = (idx + acc + 32'd2769) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2776);
    acc = acc + m_hist[idx] + 32'd2783;
    idx = (idx + acc + 32'd2790) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2797);
    acc = acc + m_hist[idx] + 32'd2804;
    idx = (idx + acc + 32'd2811) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2818);
    acc = acc + m_hist[idx] + 32'd2825;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_87 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2697);
    acc = acc + m_hist[idx] + 32'd2704;
    idx = (idx + acc + 32'd2711) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2718);
    acc = acc + m_hist[idx] + 32'd2725;
    idx = (idx + acc + 32'd2732) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2739);
    acc = acc + m_hist[idx] + 32'd2746;
    idx = (idx + acc + 32'd2753) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2760);
    acc = acc + m_hist[idx] + 32'd2767;
    idx = (idx + acc + 32'd2774) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2781);
    acc = acc + m_hist[idx] + 32'd2788;
    idx = (idx + acc + 32'd2795) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2802);
    acc = acc + m_hist[idx] + 32'd2809;
    idx = (idx + acc + 32'd2816) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2823);
    acc = acc + m_hist[idx] + 32'd2830;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2710);
    acc = acc + m_hist[idx] + 32'd2717;
    idx = (idx + acc + 32'd2724) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2731);
    acc = acc + m_hist[idx] + 32'd2738;
    idx = (idx + acc + 32'd2745) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2752);
    acc = acc + m_hist[idx] + 32'd2759;
    idx = (idx + acc + 32'd2766) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2773);
    acc = acc + m_hist[idx] + 32'd2780;
    idx = (idx + acc + 32'd2787) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2794);
    acc = acc + m_hist[idx] + 32'd2801;
    idx = (idx + acc + 32'd2808) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2815);
    acc = acc + m_hist[idx] + 32'd2822;
    idx = (idx + acc + 32'd2829) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2836);
    acc = acc + m_hist[idx] + 32'd2843;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2723);
    acc = acc + m_hist[idx] + 32'd2730;
    idx = (idx + acc + 32'd2737) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2744);
    acc = acc + m_hist[idx] + 32'd2751;
    idx = (idx + acc + 32'd2758) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2765);
    acc = acc + m_hist[idx] + 32'd2772;
    idx = (idx + acc + 32'd2779) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2786);
    acc = acc + m_hist[idx] + 32'd2793;
    idx = (idx + acc + 32'd2800) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2807);
    acc = acc + m_hist[idx] + 32'd2814;
    idx = (idx + acc + 32'd2821) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2828);
    acc = acc + m_hist[idx] + 32'd2835;
    idx = (idx + acc + 32'd2842) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2849);
    acc = acc + m_hist[idx] + 32'd2856;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_88 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2728);
    acc = acc + m_hist[idx] + 32'd2735;
    idx = (idx + acc + 32'd2742) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2749);
    acc = acc + m_hist[idx] + 32'd2756;
    idx = (idx + acc + 32'd2763) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2770);
    acc = acc + m_hist[idx] + 32'd2777;
    idx = (idx + acc + 32'd2784) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2791);
    acc = acc + m_hist[idx] + 32'd2798;
    idx = (idx + acc + 32'd2805) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2812);
    acc = acc + m_hist[idx] + 32'd2819;
    idx = (idx + acc + 32'd2826) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2833);
    acc = acc + m_hist[idx] + 32'd2840;
    idx = (idx + acc + 32'd2847) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2854);
    acc = acc + m_hist[idx] + 32'd2861;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2741);
    acc = acc + m_hist[idx] + 32'd2748;
    idx = (idx + acc + 32'd2755) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2762);
    acc = acc + m_hist[idx] + 32'd2769;
    idx = (idx + acc + 32'd2776) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2783);
    acc = acc + m_hist[idx] + 32'd2790;
    idx = (idx + acc + 32'd2797) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2804);
    acc = acc + m_hist[idx] + 32'd2811;
    idx = (idx + acc + 32'd2818) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2825);
    acc = acc + m_hist[idx] + 32'd2832;
    idx = (idx + acc + 32'd2839) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2846);
    acc = acc + m_hist[idx] + 32'd2853;
    idx = (idx + acc + 32'd2860) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2867);
    acc = acc + m_hist[idx] + 32'd2874;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2754);
    acc = acc + m_hist[idx] + 32'd2761;
    idx = (idx + acc + 32'd2768) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2775);
    acc = acc + m_hist[idx] + 32'd2782;
    idx = (idx + acc + 32'd2789) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2796);
    acc = acc + m_hist[idx] + 32'd2803;
    idx = (idx + acc + 32'd2810) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2817);
    acc = acc + m_hist[idx] + 32'd2824;
    idx = (idx + acc + 32'd2831) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2838);
    acc = acc + m_hist[idx] + 32'd2845;
    idx = (idx + acc + 32'd2852) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2859);
    acc = acc + m_hist[idx] + 32'd2866;
    idx = (idx + acc + 32'd2873) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2880);
    acc = acc + m_hist[idx] + 32'd2887;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_89 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2759);
    acc = acc + m_hist[idx] + 32'd2766;
    idx = (idx + acc + 32'd2773) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2780);
    acc = acc + m_hist[idx] + 32'd2787;
    idx = (idx + acc + 32'd2794) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2801);
    acc = acc + m_hist[idx] + 32'd2808;
    idx = (idx + acc + 32'd2815) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2822);
    acc = acc + m_hist[idx] + 32'd2829;
    idx = (idx + acc + 32'd2836) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2843);
    acc = acc + m_hist[idx] + 32'd2850;
    idx = (idx + acc + 32'd2857) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2864);
    acc = acc + m_hist[idx] + 32'd2871;
    idx = (idx + acc + 32'd2878) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2885);
    acc = acc + m_hist[idx] + 32'd2892;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2772);
    acc = acc + m_hist[idx] + 32'd2779;
    idx = (idx + acc + 32'd2786) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2793);
    acc = acc + m_hist[idx] + 32'd2800;
    idx = (idx + acc + 32'd2807) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2814);
    acc = acc + m_hist[idx] + 32'd2821;
    idx = (idx + acc + 32'd2828) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2835);
    acc = acc + m_hist[idx] + 32'd2842;
    idx = (idx + acc + 32'd2849) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2856);
    acc = acc + m_hist[idx] + 32'd2863;
    idx = (idx + acc + 32'd2870) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2877);
    acc = acc + m_hist[idx] + 32'd2884;
    idx = (idx + acc + 32'd2891) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2898);
    acc = acc + m_hist[idx] + 32'd2905;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2785);
    acc = acc + m_hist[idx] + 32'd2792;
    idx = (idx + acc + 32'd2799) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2806);
    acc = acc + m_hist[idx] + 32'd2813;
    idx = (idx + acc + 32'd2820) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2827);
    acc = acc + m_hist[idx] + 32'd2834;
    idx = (idx + acc + 32'd2841) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2848);
    acc = acc + m_hist[idx] + 32'd2855;
    idx = (idx + acc + 32'd2862) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2869);
    acc = acc + m_hist[idx] + 32'd2876;
    idx = (idx + acc + 32'd2883) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2890);
    acc = acc + m_hist[idx] + 32'd2897;
    idx = (idx + acc + 32'd2904) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2911);
    acc = acc + m_hist[idx] + 32'd2918;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_90 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2790);
    acc = acc + m_hist[idx] + 32'd2797;
    idx = (idx + acc + 32'd2804) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2811);
    acc = acc + m_hist[idx] + 32'd2818;
    idx = (idx + acc + 32'd2825) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2832);
    acc = acc + m_hist[idx] + 32'd2839;
    idx = (idx + acc + 32'd2846) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2853);
    acc = acc + m_hist[idx] + 32'd2860;
    idx = (idx + acc + 32'd2867) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2874);
    acc = acc + m_hist[idx] + 32'd2881;
    idx = (idx + acc + 32'd2888) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2895);
    acc = acc + m_hist[idx] + 32'd2902;
    idx = (idx + acc + 32'd2909) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2916);
    acc = acc + m_hist[idx] + 32'd2923;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2803);
    acc = acc + m_hist[idx] + 32'd2810;
    idx = (idx + acc + 32'd2817) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2824);
    acc = acc + m_hist[idx] + 32'd2831;
    idx = (idx + acc + 32'd2838) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2845);
    acc = acc + m_hist[idx] + 32'd2852;
    idx = (idx + acc + 32'd2859) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2866);
    acc = acc + m_hist[idx] + 32'd2873;
    idx = (idx + acc + 32'd2880) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2887);
    acc = acc + m_hist[idx] + 32'd2894;
    idx = (idx + acc + 32'd2901) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2908);
    acc = acc + m_hist[idx] + 32'd2915;
    idx = (idx + acc + 32'd2922) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2929);
    acc = acc + m_hist[idx] + 32'd2936;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2816);
    acc = acc + m_hist[idx] + 32'd2823;
    idx = (idx + acc + 32'd2830) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2837);
    acc = acc + m_hist[idx] + 32'd2844;
    idx = (idx + acc + 32'd2851) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2858);
    acc = acc + m_hist[idx] + 32'd2865;
    idx = (idx + acc + 32'd2872) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2879);
    acc = acc + m_hist[idx] + 32'd2886;
    idx = (idx + acc + 32'd2893) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2900);
    acc = acc + m_hist[idx] + 32'd2907;
    idx = (idx + acc + 32'd2914) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2921);
    acc = acc + m_hist[idx] + 32'd2928;
    idx = (idx + acc + 32'd2935) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2942);
    acc = acc + m_hist[idx] + 32'd2949;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_91 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2821);
    acc = acc + m_hist[idx] + 32'd2828;
    idx = (idx + acc + 32'd2835) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2842);
    acc = acc + m_hist[idx] + 32'd2849;
    idx = (idx + acc + 32'd2856) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2863);
    acc = acc + m_hist[idx] + 32'd2870;
    idx = (idx + acc + 32'd2877) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2884);
    acc = acc + m_hist[idx] + 32'd2891;
    idx = (idx + acc + 32'd2898) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2905);
    acc = acc + m_hist[idx] + 32'd2912;
    idx = (idx + acc + 32'd2919) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2926);
    acc = acc + m_hist[idx] + 32'd2933;
    idx = (idx + acc + 32'd2940) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2947);
    acc = acc + m_hist[idx] + 32'd2954;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2834);
    acc = acc + m_hist[idx] + 32'd2841;
    idx = (idx + acc + 32'd2848) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2855);
    acc = acc + m_hist[idx] + 32'd2862;
    idx = (idx + acc + 32'd2869) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2876);
    acc = acc + m_hist[idx] + 32'd2883;
    idx = (idx + acc + 32'd2890) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2897);
    acc = acc + m_hist[idx] + 32'd2904;
    idx = (idx + acc + 32'd2911) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2918);
    acc = acc + m_hist[idx] + 32'd2925;
    idx = (idx + acc + 32'd2932) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2939);
    acc = acc + m_hist[idx] + 32'd2946;
    idx = (idx + acc + 32'd2953) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2960);
    acc = acc + m_hist[idx] + 32'd2967;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2847);
    acc = acc + m_hist[idx] + 32'd2854;
    idx = (idx + acc + 32'd2861) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2868);
    acc = acc + m_hist[idx] + 32'd2875;
    idx = (idx + acc + 32'd2882) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2889);
    acc = acc + m_hist[idx] + 32'd2896;
    idx = (idx + acc + 32'd2903) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2910);
    acc = acc + m_hist[idx] + 32'd2917;
    idx = (idx + acc + 32'd2924) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2931);
    acc = acc + m_hist[idx] + 32'd2938;
    idx = (idx + acc + 32'd2945) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2952);
    acc = acc + m_hist[idx] + 32'd2959;
    idx = (idx + acc + 32'd2966) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2973);
    acc = acc + m_hist[idx] + 32'd2980;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_92 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2852);
    acc = acc + m_hist[idx] + 32'd2859;
    idx = (idx + acc + 32'd2866) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2873);
    acc = acc + m_hist[idx] + 32'd2880;
    idx = (idx + acc + 32'd2887) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2894);
    acc = acc + m_hist[idx] + 32'd2901;
    idx = (idx + acc + 32'd2908) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2915);
    acc = acc + m_hist[idx] + 32'd2922;
    idx = (idx + acc + 32'd2929) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2936);
    acc = acc + m_hist[idx] + 32'd2943;
    idx = (idx + acc + 32'd2950) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2957);
    acc = acc + m_hist[idx] + 32'd2964;
    idx = (idx + acc + 32'd2971) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2978);
    acc = acc + m_hist[idx] + 32'd2985;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2865);
    acc = acc + m_hist[idx] + 32'd2872;
    idx = (idx + acc + 32'd2879) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2886);
    acc = acc + m_hist[idx] + 32'd2893;
    idx = (idx + acc + 32'd2900) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2907);
    acc = acc + m_hist[idx] + 32'd2914;
    idx = (idx + acc + 32'd2921) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2928);
    acc = acc + m_hist[idx] + 32'd2935;
    idx = (idx + acc + 32'd2942) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2949);
    acc = acc + m_hist[idx] + 32'd2956;
    idx = (idx + acc + 32'd2963) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2970);
    acc = acc + m_hist[idx] + 32'd2977;
    idx = (idx + acc + 32'd2984) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2991);
    acc = acc + m_hist[idx] + 32'd2998;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2878);
    acc = acc + m_hist[idx] + 32'd2885;
    idx = (idx + acc + 32'd2892) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2899);
    acc = acc + m_hist[idx] + 32'd2906;
    idx = (idx + acc + 32'd2913) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2920);
    acc = acc + m_hist[idx] + 32'd2927;
    idx = (idx + acc + 32'd2934) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2941);
    acc = acc + m_hist[idx] + 32'd2948;
    idx = (idx + acc + 32'd2955) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2962);
    acc = acc + m_hist[idx] + 32'd2969;
    idx = (idx + acc + 32'd2976) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2983);
    acc = acc + m_hist[idx] + 32'd2990;
    idx = (idx + acc + 32'd2997) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3004);
    acc = acc + m_hist[idx] + 32'd3011;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_93 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2883);
    acc = acc + m_hist[idx] + 32'd2890;
    idx = (idx + acc + 32'd2897) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2904);
    acc = acc + m_hist[idx] + 32'd2911;
    idx = (idx + acc + 32'd2918) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2925);
    acc = acc + m_hist[idx] + 32'd2932;
    idx = (idx + acc + 32'd2939) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2946);
    acc = acc + m_hist[idx] + 32'd2953;
    idx = (idx + acc + 32'd2960) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2967);
    acc = acc + m_hist[idx] + 32'd2974;
    idx = (idx + acc + 32'd2981) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2988);
    acc = acc + m_hist[idx] + 32'd2995;
    idx = (idx + acc + 32'd3002) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3009);
    acc = acc + m_hist[idx] + 32'd3016;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2896);
    acc = acc + m_hist[idx] + 32'd2903;
    idx = (idx + acc + 32'd2910) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2917);
    acc = acc + m_hist[idx] + 32'd2924;
    idx = (idx + acc + 32'd2931) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2938);
    acc = acc + m_hist[idx] + 32'd2945;
    idx = (idx + acc + 32'd2952) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2959);
    acc = acc + m_hist[idx] + 32'd2966;
    idx = (idx + acc + 32'd2973) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2980);
    acc = acc + m_hist[idx] + 32'd2987;
    idx = (idx + acc + 32'd2994) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3001);
    acc = acc + m_hist[idx] + 32'd3008;
    idx = (idx + acc + 32'd3015) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3022);
    acc = acc + m_hist[idx] + 32'd3029;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2909);
    acc = acc + m_hist[idx] + 32'd2916;
    idx = (idx + acc + 32'd2923) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2930);
    acc = acc + m_hist[idx] + 32'd2937;
    idx = (idx + acc + 32'd2944) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2951);
    acc = acc + m_hist[idx] + 32'd2958;
    idx = (idx + acc + 32'd2965) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2972);
    acc = acc + m_hist[idx] + 32'd2979;
    idx = (idx + acc + 32'd2986) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2993);
    acc = acc + m_hist[idx] + 32'd3000;
    idx = (idx + acc + 32'd3007) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3014);
    acc = acc + m_hist[idx] + 32'd3021;
    idx = (idx + acc + 32'd3028) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3035);
    acc = acc + m_hist[idx] + 32'd3042;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_94 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2914);
    acc = acc + m_hist[idx] + 32'd2921;
    idx = (idx + acc + 32'd2928) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2935);
    acc = acc + m_hist[idx] + 32'd2942;
    idx = (idx + acc + 32'd2949) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2956);
    acc = acc + m_hist[idx] + 32'd2963;
    idx = (idx + acc + 32'd2970) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2977);
    acc = acc + m_hist[idx] + 32'd2984;
    idx = (idx + acc + 32'd2991) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2998);
    acc = acc + m_hist[idx] + 32'd3005;
    idx = (idx + acc + 32'd3012) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3019);
    acc = acc + m_hist[idx] + 32'd3026;
    idx = (idx + acc + 32'd3033) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3040);
    acc = acc + m_hist[idx] + 32'd3047;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2927);
    acc = acc + m_hist[idx] + 32'd2934;
    idx = (idx + acc + 32'd2941) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2948);
    acc = acc + m_hist[idx] + 32'd2955;
    idx = (idx + acc + 32'd2962) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2969);
    acc = acc + m_hist[idx] + 32'd2976;
    idx = (idx + acc + 32'd2983) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2990);
    acc = acc + m_hist[idx] + 32'd2997;
    idx = (idx + acc + 32'd3004) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3011);
    acc = acc + m_hist[idx] + 32'd3018;
    idx = (idx + acc + 32'd3025) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3032);
    acc = acc + m_hist[idx] + 32'd3039;
    idx = (idx + acc + 32'd3046) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3053);
    acc = acc + m_hist[idx] + 32'd3060;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2940);
    acc = acc + m_hist[idx] + 32'd2947;
    idx = (idx + acc + 32'd2954) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2961);
    acc = acc + m_hist[idx] + 32'd2968;
    idx = (idx + acc + 32'd2975) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2982);
    acc = acc + m_hist[idx] + 32'd2989;
    idx = (idx + acc + 32'd2996) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3003);
    acc = acc + m_hist[idx] + 32'd3010;
    idx = (idx + acc + 32'd3017) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3024);
    acc = acc + m_hist[idx] + 32'd3031;
    idx = (idx + acc + 32'd3038) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3045);
    acc = acc + m_hist[idx] + 32'd3052;
    idx = (idx + acc + 32'd3059) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3066);
    acc = acc + m_hist[idx] + 32'd3073;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_95 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2945);
    acc = acc + m_hist[idx] + 32'd2952;
    idx = (idx + acc + 32'd2959) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2966);
    acc = acc + m_hist[idx] + 32'd2973;
    idx = (idx + acc + 32'd2980) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2987);
    acc = acc + m_hist[idx] + 32'd2994;
    idx = (idx + acc + 32'd3001) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3008);
    acc = acc + m_hist[idx] + 32'd3015;
    idx = (idx + acc + 32'd3022) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3029);
    acc = acc + m_hist[idx] + 32'd3036;
    idx = (idx + acc + 32'd3043) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3050);
    acc = acc + m_hist[idx] + 32'd3057;
    idx = (idx + acc + 32'd3064) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3071);
    acc = acc + m_hist[idx] + 32'd3078;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2958);
    acc = acc + m_hist[idx] + 32'd2965;
    idx = (idx + acc + 32'd2972) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2979);
    acc = acc + m_hist[idx] + 32'd2986;
    idx = (idx + acc + 32'd2993) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3000);
    acc = acc + m_hist[idx] + 32'd3007;
    idx = (idx + acc + 32'd3014) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3021);
    acc = acc + m_hist[idx] + 32'd3028;
    idx = (idx + acc + 32'd3035) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3042);
    acc = acc + m_hist[idx] + 32'd3049;
    idx = (idx + acc + 32'd3056) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3063);
    acc = acc + m_hist[idx] + 32'd3070;
    idx = (idx + acc + 32'd3077) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3084);
    acc = acc + m_hist[idx] + 32'd3091;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2971);
    acc = acc + m_hist[idx] + 32'd2978;
    idx = (idx + acc + 32'd2985) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2992);
    acc = acc + m_hist[idx] + 32'd2999;
    idx = (idx + acc + 32'd3006) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3013);
    acc = acc + m_hist[idx] + 32'd3020;
    idx = (idx + acc + 32'd3027) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3034);
    acc = acc + m_hist[idx] + 32'd3041;
    idx = (idx + acc + 32'd3048) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3055);
    acc = acc + m_hist[idx] + 32'd3062;
    idx = (idx + acc + 32'd3069) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3076);
    acc = acc + m_hist[idx] + 32'd3083;
    idx = (idx + acc + 32'd3090) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3097);
    acc = acc + m_hist[idx] + 32'd3104;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_96 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2976);
    acc = acc + m_hist[idx] + 32'd2983;
    idx = (idx + acc + 32'd2990) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2997);
    acc = acc + m_hist[idx] + 32'd3004;
    idx = (idx + acc + 32'd3011) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3018);
    acc = acc + m_hist[idx] + 32'd3025;
    idx = (idx + acc + 32'd3032) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3039);
    acc = acc + m_hist[idx] + 32'd3046;
    idx = (idx + acc + 32'd3053) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3060);
    acc = acc + m_hist[idx] + 32'd3067;
    idx = (idx + acc + 32'd3074) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3081);
    acc = acc + m_hist[idx] + 32'd3088;
    idx = (idx + acc + 32'd3095) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3102);
    acc = acc + m_hist[idx] + 32'd3109;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd2989);
    acc = acc + m_hist[idx] + 32'd2996;
    idx = (idx + acc + 32'd3003) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3010);
    acc = acc + m_hist[idx] + 32'd3017;
    idx = (idx + acc + 32'd3024) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3031);
    acc = acc + m_hist[idx] + 32'd3038;
    idx = (idx + acc + 32'd3045) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3052);
    acc = acc + m_hist[idx] + 32'd3059;
    idx = (idx + acc + 32'd3066) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3073);
    acc = acc + m_hist[idx] + 32'd3080;
    idx = (idx + acc + 32'd3087) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3094);
    acc = acc + m_hist[idx] + 32'd3101;
    idx = (idx + acc + 32'd3108) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3115);
    acc = acc + m_hist[idx] + 32'd3122;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3002);
    acc = acc + m_hist[idx] + 32'd3009;
    idx = (idx + acc + 32'd3016) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3023);
    acc = acc + m_hist[idx] + 32'd3030;
    idx = (idx + acc + 32'd3037) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3044);
    acc = acc + m_hist[idx] + 32'd3051;
    idx = (idx + acc + 32'd3058) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3065);
    acc = acc + m_hist[idx] + 32'd3072;
    idx = (idx + acc + 32'd3079) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3086);
    acc = acc + m_hist[idx] + 32'd3093;
    idx = (idx + acc + 32'd3100) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3107);
    acc = acc + m_hist[idx] + 32'd3114;
    idx = (idx + acc + 32'd3121) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3128);
    acc = acc + m_hist[idx] + 32'd3135;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_97 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3007);
    acc = acc + m_hist[idx] + 32'd3014;
    idx = (idx + acc + 32'd3021) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3028);
    acc = acc + m_hist[idx] + 32'd3035;
    idx = (idx + acc + 32'd3042) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3049);
    acc = acc + m_hist[idx] + 32'd3056;
    idx = (idx + acc + 32'd3063) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3070);
    acc = acc + m_hist[idx] + 32'd3077;
    idx = (idx + acc + 32'd3084) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3091);
    acc = acc + m_hist[idx] + 32'd3098;
    idx = (idx + acc + 32'd3105) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3112);
    acc = acc + m_hist[idx] + 32'd3119;
    idx = (idx + acc + 32'd3126) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3133);
    acc = acc + m_hist[idx] + 32'd3140;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3020);
    acc = acc + m_hist[idx] + 32'd3027;
    idx = (idx + acc + 32'd3034) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3041);
    acc = acc + m_hist[idx] + 32'd3048;
    idx = (idx + acc + 32'd3055) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3062);
    acc = acc + m_hist[idx] + 32'd3069;
    idx = (idx + acc + 32'd3076) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3083);
    acc = acc + m_hist[idx] + 32'd3090;
    idx = (idx + acc + 32'd3097) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3104);
    acc = acc + m_hist[idx] + 32'd3111;
    idx = (idx + acc + 32'd3118) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3125);
    acc = acc + m_hist[idx] + 32'd3132;
    idx = (idx + acc + 32'd3139) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3146);
    acc = acc + m_hist[idx] + 32'd3153;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3033);
    acc = acc + m_hist[idx] + 32'd3040;
    idx = (idx + acc + 32'd3047) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3054);
    acc = acc + m_hist[idx] + 32'd3061;
    idx = (idx + acc + 32'd3068) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3075);
    acc = acc + m_hist[idx] + 32'd3082;
    idx = (idx + acc + 32'd3089) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3096);
    acc = acc + m_hist[idx] + 32'd3103;
    idx = (idx + acc + 32'd3110) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3117);
    acc = acc + m_hist[idx] + 32'd3124;
    idx = (idx + acc + 32'd3131) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3138);
    acc = acc + m_hist[idx] + 32'd3145;
    idx = (idx + acc + 32'd3152) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3159);
    acc = acc + m_hist[idx] + 32'd3166;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_98 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3038);
    acc = acc + m_hist[idx] + 32'd3045;
    idx = (idx + acc + 32'd3052) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3059);
    acc = acc + m_hist[idx] + 32'd3066;
    idx = (idx + acc + 32'd3073) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3080);
    acc = acc + m_hist[idx] + 32'd3087;
    idx = (idx + acc + 32'd3094) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3101);
    acc = acc + m_hist[idx] + 32'd3108;
    idx = (idx + acc + 32'd3115) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3122);
    acc = acc + m_hist[idx] + 32'd3129;
    idx = (idx + acc + 32'd3136) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3143);
    acc = acc + m_hist[idx] + 32'd3150;
    idx = (idx + acc + 32'd3157) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3164);
    acc = acc + m_hist[idx] + 32'd3171;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3051);
    acc = acc + m_hist[idx] + 32'd3058;
    idx = (idx + acc + 32'd3065) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3072);
    acc = acc + m_hist[idx] + 32'd3079;
    idx = (idx + acc + 32'd3086) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3093);
    acc = acc + m_hist[idx] + 32'd3100;
    idx = (idx + acc + 32'd3107) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3114);
    acc = acc + m_hist[idx] + 32'd3121;
    idx = (idx + acc + 32'd3128) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3135);
    acc = acc + m_hist[idx] + 32'd3142;
    idx = (idx + acc + 32'd3149) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3156);
    acc = acc + m_hist[idx] + 32'd3163;
    idx = (idx + acc + 32'd3170) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3177);
    acc = acc + m_hist[idx] + 32'd3184;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3064);
    acc = acc + m_hist[idx] + 32'd3071;
    idx = (idx + acc + 32'd3078) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3085);
    acc = acc + m_hist[idx] + 32'd3092;
    idx = (idx + acc + 32'd3099) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3106);
    acc = acc + m_hist[idx] + 32'd3113;
    idx = (idx + acc + 32'd3120) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3127);
    acc = acc + m_hist[idx] + 32'd3134;
    idx = (idx + acc + 32'd3141) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3148);
    acc = acc + m_hist[idx] + 32'd3155;
    idx = (idx + acc + 32'd3162) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3169);
    acc = acc + m_hist[idx] + 32'd3176;
    idx = (idx + acc + 32'd3183) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3190);
    acc = acc + m_hist[idx] + 32'd3197;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_99 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3069);
    acc = acc + m_hist[idx] + 32'd3076;
    idx = (idx + acc + 32'd3083) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3090);
    acc = acc + m_hist[idx] + 32'd3097;
    idx = (idx + acc + 32'd3104) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3111);
    acc = acc + m_hist[idx] + 32'd3118;
    idx = (idx + acc + 32'd3125) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3132);
    acc = acc + m_hist[idx] + 32'd3139;
    idx = (idx + acc + 32'd3146) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3153);
    acc = acc + m_hist[idx] + 32'd3160;
    idx = (idx + acc + 32'd3167) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3174);
    acc = acc + m_hist[idx] + 32'd3181;
    idx = (idx + acc + 32'd3188) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3195);
    acc = acc + m_hist[idx] + 32'd3202;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3082);
    acc = acc + m_hist[idx] + 32'd3089;
    idx = (idx + acc + 32'd3096) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3103);
    acc = acc + m_hist[idx] + 32'd3110;
    idx = (idx + acc + 32'd3117) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3124);
    acc = acc + m_hist[idx] + 32'd3131;
    idx = (idx + acc + 32'd3138) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3145);
    acc = acc + m_hist[idx] + 32'd3152;
    idx = (idx + acc + 32'd3159) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3166);
    acc = acc + m_hist[idx] + 32'd3173;
    idx = (idx + acc + 32'd3180) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3187);
    acc = acc + m_hist[idx] + 32'd3194;
    idx = (idx + acc + 32'd3201) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3208);
    acc = acc + m_hist[idx] + 32'd3215;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3095);
    acc = acc + m_hist[idx] + 32'd3102;
    idx = (idx + acc + 32'd3109) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3116);
    acc = acc + m_hist[idx] + 32'd3123;
    idx = (idx + acc + 32'd3130) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3137);
    acc = acc + m_hist[idx] + 32'd3144;
    idx = (idx + acc + 32'd3151) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3158);
    acc = acc + m_hist[idx] + 32'd3165;
    idx = (idx + acc + 32'd3172) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3179);
    acc = acc + m_hist[idx] + 32'd3186;
    idx = (idx + acc + 32'd3193) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3200);
    acc = acc + m_hist[idx] + 32'd3207;
    idx = (idx + acc + 32'd3214) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3221);
    acc = acc + m_hist[idx] + 32'd3228;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_100 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3100);
    acc = acc + m_hist[idx] + 32'd3107;
    idx = (idx + acc + 32'd3114) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3121);
    acc = acc + m_hist[idx] + 32'd3128;
    idx = (idx + acc + 32'd3135) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3142);
    acc = acc + m_hist[idx] + 32'd3149;
    idx = (idx + acc + 32'd3156) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3163);
    acc = acc + m_hist[idx] + 32'd3170;
    idx = (idx + acc + 32'd3177) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3184);
    acc = acc + m_hist[idx] + 32'd3191;
    idx = (idx + acc + 32'd3198) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3205);
    acc = acc + m_hist[idx] + 32'd3212;
    idx = (idx + acc + 32'd3219) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3226);
    acc = acc + m_hist[idx] + 32'd3233;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3113);
    acc = acc + m_hist[idx] + 32'd3120;
    idx = (idx + acc + 32'd3127) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3134);
    acc = acc + m_hist[idx] + 32'd3141;
    idx = (idx + acc + 32'd3148) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3155);
    acc = acc + m_hist[idx] + 32'd3162;
    idx = (idx + acc + 32'd3169) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3176);
    acc = acc + m_hist[idx] + 32'd3183;
    idx = (idx + acc + 32'd3190) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3197);
    acc = acc + m_hist[idx] + 32'd3204;
    idx = (idx + acc + 32'd3211) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3218);
    acc = acc + m_hist[idx] + 32'd3225;
    idx = (idx + acc + 32'd3232) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3239);
    acc = acc + m_hist[idx] + 32'd3246;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3126);
    acc = acc + m_hist[idx] + 32'd3133;
    idx = (idx + acc + 32'd3140) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3147);
    acc = acc + m_hist[idx] + 32'd3154;
    idx = (idx + acc + 32'd3161) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3168);
    acc = acc + m_hist[idx] + 32'd3175;
    idx = (idx + acc + 32'd3182) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3189);
    acc = acc + m_hist[idx] + 32'd3196;
    idx = (idx + acc + 32'd3203) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3210);
    acc = acc + m_hist[idx] + 32'd3217;
    idx = (idx + acc + 32'd3224) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3231);
    acc = acc + m_hist[idx] + 32'd3238;
    idx = (idx + acc + 32'd3245) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3252);
    acc = acc + m_hist[idx] + 32'd3259;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_101 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3131);
    acc = acc + m_hist[idx] + 32'd3138;
    idx = (idx + acc + 32'd3145) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3152);
    acc = acc + m_hist[idx] + 32'd3159;
    idx = (idx + acc + 32'd3166) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3173);
    acc = acc + m_hist[idx] + 32'd3180;
    idx = (idx + acc + 32'd3187) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3194);
    acc = acc + m_hist[idx] + 32'd3201;
    idx = (idx + acc + 32'd3208) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3215);
    acc = acc + m_hist[idx] + 32'd3222;
    idx = (idx + acc + 32'd3229) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3236);
    acc = acc + m_hist[idx] + 32'd3243;
    idx = (idx + acc + 32'd3250) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3257);
    acc = acc + m_hist[idx] + 32'd3264;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3144);
    acc = acc + m_hist[idx] + 32'd3151;
    idx = (idx + acc + 32'd3158) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3165);
    acc = acc + m_hist[idx] + 32'd3172;
    idx = (idx + acc + 32'd3179) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3186);
    acc = acc + m_hist[idx] + 32'd3193;
    idx = (idx + acc + 32'd3200) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3207);
    acc = acc + m_hist[idx] + 32'd3214;
    idx = (idx + acc + 32'd3221) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3228);
    acc = acc + m_hist[idx] + 32'd3235;
    idx = (idx + acc + 32'd3242) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3249);
    acc = acc + m_hist[idx] + 32'd3256;
    idx = (idx + acc + 32'd3263) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3270);
    acc = acc + m_hist[idx] + 32'd3277;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3157);
    acc = acc + m_hist[idx] + 32'd3164;
    idx = (idx + acc + 32'd3171) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3178);
    acc = acc + m_hist[idx] + 32'd3185;
    idx = (idx + acc + 32'd3192) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3199);
    acc = acc + m_hist[idx] + 32'd3206;
    idx = (idx + acc + 32'd3213) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3220);
    acc = acc + m_hist[idx] + 32'd3227;
    idx = (idx + acc + 32'd3234) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3241);
    acc = acc + m_hist[idx] + 32'd3248;
    idx = (idx + acc + 32'd3255) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3262);
    acc = acc + m_hist[idx] + 32'd3269;
    idx = (idx + acc + 32'd3276) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3283);
    acc = acc + m_hist[idx] + 32'd3290;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_102 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3162);
    acc = acc + m_hist[idx] + 32'd3169;
    idx = (idx + acc + 32'd3176) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3183);
    acc = acc + m_hist[idx] + 32'd3190;
    idx = (idx + acc + 32'd3197) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3204);
    acc = acc + m_hist[idx] + 32'd3211;
    idx = (idx + acc + 32'd3218) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3225);
    acc = acc + m_hist[idx] + 32'd3232;
    idx = (idx + acc + 32'd3239) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3246);
    acc = acc + m_hist[idx] + 32'd3253;
    idx = (idx + acc + 32'd3260) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3267);
    acc = acc + m_hist[idx] + 32'd3274;
    idx = (idx + acc + 32'd3281) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3288);
    acc = acc + m_hist[idx] + 32'd3295;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3175);
    acc = acc + m_hist[idx] + 32'd3182;
    idx = (idx + acc + 32'd3189) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3196);
    acc = acc + m_hist[idx] + 32'd3203;
    idx = (idx + acc + 32'd3210) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3217);
    acc = acc + m_hist[idx] + 32'd3224;
    idx = (idx + acc + 32'd3231) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3238);
    acc = acc + m_hist[idx] + 32'd3245;
    idx = (idx + acc + 32'd3252) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3259);
    acc = acc + m_hist[idx] + 32'd3266;
    idx = (idx + acc + 32'd3273) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3280);
    acc = acc + m_hist[idx] + 32'd3287;
    idx = (idx + acc + 32'd3294) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3301);
    acc = acc + m_hist[idx] + 32'd3308;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3188);
    acc = acc + m_hist[idx] + 32'd3195;
    idx = (idx + acc + 32'd3202) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3209);
    acc = acc + m_hist[idx] + 32'd3216;
    idx = (idx + acc + 32'd3223) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3230);
    acc = acc + m_hist[idx] + 32'd3237;
    idx = (idx + acc + 32'd3244) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3251);
    acc = acc + m_hist[idx] + 32'd3258;
    idx = (idx + acc + 32'd3265) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3272);
    acc = acc + m_hist[idx] + 32'd3279;
    idx = (idx + acc + 32'd3286) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3293);
    acc = acc + m_hist[idx] + 32'd3300;
    idx = (idx + acc + 32'd3307) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3314);
    acc = acc + m_hist[idx] + 32'd3321;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_103 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3193);
    acc = acc + m_hist[idx] + 32'd3200;
    idx = (idx + acc + 32'd3207) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3214);
    acc = acc + m_hist[idx] + 32'd3221;
    idx = (idx + acc + 32'd3228) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3235);
    acc = acc + m_hist[idx] + 32'd3242;
    idx = (idx + acc + 32'd3249) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3256);
    acc = acc + m_hist[idx] + 32'd3263;
    idx = (idx + acc + 32'd3270) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3277);
    acc = acc + m_hist[idx] + 32'd3284;
    idx = (idx + acc + 32'd3291) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3298);
    acc = acc + m_hist[idx] + 32'd3305;
    idx = (idx + acc + 32'd3312) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3319);
    acc = acc + m_hist[idx] + 32'd3326;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3206);
    acc = acc + m_hist[idx] + 32'd3213;
    idx = (idx + acc + 32'd3220) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3227);
    acc = acc + m_hist[idx] + 32'd3234;
    idx = (idx + acc + 32'd3241) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3248);
    acc = acc + m_hist[idx] + 32'd3255;
    idx = (idx + acc + 32'd3262) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3269);
    acc = acc + m_hist[idx] + 32'd3276;
    idx = (idx + acc + 32'd3283) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3290);
    acc = acc + m_hist[idx] + 32'd3297;
    idx = (idx + acc + 32'd3304) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3311);
    acc = acc + m_hist[idx] + 32'd3318;
    idx = (idx + acc + 32'd3325) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3332);
    acc = acc + m_hist[idx] + 32'd3339;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3219);
    acc = acc + m_hist[idx] + 32'd3226;
    idx = (idx + acc + 32'd3233) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3240);
    acc = acc + m_hist[idx] + 32'd3247;
    idx = (idx + acc + 32'd3254) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3261);
    acc = acc + m_hist[idx] + 32'd3268;
    idx = (idx + acc + 32'd3275) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3282);
    acc = acc + m_hist[idx] + 32'd3289;
    idx = (idx + acc + 32'd3296) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3303);
    acc = acc + m_hist[idx] + 32'd3310;
    idx = (idx + acc + 32'd3317) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3324);
    acc = acc + m_hist[idx] + 32'd3331;
    idx = (idx + acc + 32'd3338) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3345);
    acc = acc + m_hist[idx] + 32'd3352;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_104 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3224);
    acc = acc + m_hist[idx] + 32'd3231;
    idx = (idx + acc + 32'd3238) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3245);
    acc = acc + m_hist[idx] + 32'd3252;
    idx = (idx + acc + 32'd3259) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3266);
    acc = acc + m_hist[idx] + 32'd3273;
    idx = (idx + acc + 32'd3280) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3287);
    acc = acc + m_hist[idx] + 32'd3294;
    idx = (idx + acc + 32'd3301) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3308);
    acc = acc + m_hist[idx] + 32'd3315;
    idx = (idx + acc + 32'd3322) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3329);
    acc = acc + m_hist[idx] + 32'd3336;
    idx = (idx + acc + 32'd3343) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3350);
    acc = acc + m_hist[idx] + 32'd3357;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3237);
    acc = acc + m_hist[idx] + 32'd3244;
    idx = (idx + acc + 32'd3251) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3258);
    acc = acc + m_hist[idx] + 32'd3265;
    idx = (idx + acc + 32'd3272) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3279);
    acc = acc + m_hist[idx] + 32'd3286;
    idx = (idx + acc + 32'd3293) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3300);
    acc = acc + m_hist[idx] + 32'd3307;
    idx = (idx + acc + 32'd3314) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3321);
    acc = acc + m_hist[idx] + 32'd3328;
    idx = (idx + acc + 32'd3335) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3342);
    acc = acc + m_hist[idx] + 32'd3349;
    idx = (idx + acc + 32'd3356) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3363);
    acc = acc + m_hist[idx] + 32'd3370;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3250);
    acc = acc + m_hist[idx] + 32'd3257;
    idx = (idx + acc + 32'd3264) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3271);
    acc = acc + m_hist[idx] + 32'd3278;
    idx = (idx + acc + 32'd3285) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3292);
    acc = acc + m_hist[idx] + 32'd3299;
    idx = (idx + acc + 32'd3306) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3313);
    acc = acc + m_hist[idx] + 32'd3320;
    idx = (idx + acc + 32'd3327) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3334);
    acc = acc + m_hist[idx] + 32'd3341;
    idx = (idx + acc + 32'd3348) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3355);
    acc = acc + m_hist[idx] + 32'd3362;
    idx = (idx + acc + 32'd3369) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3376);
    acc = acc + m_hist[idx] + 32'd3383;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_105 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3255);
    acc = acc + m_hist[idx] + 32'd3262;
    idx = (idx + acc + 32'd3269) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3276);
    acc = acc + m_hist[idx] + 32'd3283;
    idx = (idx + acc + 32'd3290) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3297);
    acc = acc + m_hist[idx] + 32'd3304;
    idx = (idx + acc + 32'd3311) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3318);
    acc = acc + m_hist[idx] + 32'd3325;
    idx = (idx + acc + 32'd3332) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3339);
    acc = acc + m_hist[idx] + 32'd3346;
    idx = (idx + acc + 32'd3353) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3360);
    acc = acc + m_hist[idx] + 32'd3367;
    idx = (idx + acc + 32'd3374) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3381);
    acc = acc + m_hist[idx] + 32'd3388;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3268);
    acc = acc + m_hist[idx] + 32'd3275;
    idx = (idx + acc + 32'd3282) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3289);
    acc = acc + m_hist[idx] + 32'd3296;
    idx = (idx + acc + 32'd3303) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3310);
    acc = acc + m_hist[idx] + 32'd3317;
    idx = (idx + acc + 32'd3324) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3331);
    acc = acc + m_hist[idx] + 32'd3338;
    idx = (idx + acc + 32'd3345) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3352);
    acc = acc + m_hist[idx] + 32'd3359;
    idx = (idx + acc + 32'd3366) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3373);
    acc = acc + m_hist[idx] + 32'd3380;
    idx = (idx + acc + 32'd3387) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3394);
    acc = acc + m_hist[idx] + 32'd3401;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3281);
    acc = acc + m_hist[idx] + 32'd3288;
    idx = (idx + acc + 32'd3295) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3302);
    acc = acc + m_hist[idx] + 32'd3309;
    idx = (idx + acc + 32'd3316) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3323);
    acc = acc + m_hist[idx] + 32'd3330;
    idx = (idx + acc + 32'd3337) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3344);
    acc = acc + m_hist[idx] + 32'd3351;
    idx = (idx + acc + 32'd3358) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3365);
    acc = acc + m_hist[idx] + 32'd3372;
    idx = (idx + acc + 32'd3379) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3386);
    acc = acc + m_hist[idx] + 32'd3393;
    idx = (idx + acc + 32'd3400) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3407);
    acc = acc + m_hist[idx] + 32'd3414;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_106 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3286);
    acc = acc + m_hist[idx] + 32'd3293;
    idx = (idx + acc + 32'd3300) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3307);
    acc = acc + m_hist[idx] + 32'd3314;
    idx = (idx + acc + 32'd3321) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3328);
    acc = acc + m_hist[idx] + 32'd3335;
    idx = (idx + acc + 32'd3342) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3349);
    acc = acc + m_hist[idx] + 32'd3356;
    idx = (idx + acc + 32'd3363) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3370);
    acc = acc + m_hist[idx] + 32'd3377;
    idx = (idx + acc + 32'd3384) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3391);
    acc = acc + m_hist[idx] + 32'd3398;
    idx = (idx + acc + 32'd3405) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3412);
    acc = acc + m_hist[idx] + 32'd3419;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3299);
    acc = acc + m_hist[idx] + 32'd3306;
    idx = (idx + acc + 32'd3313) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3320);
    acc = acc + m_hist[idx] + 32'd3327;
    idx = (idx + acc + 32'd3334) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3341);
    acc = acc + m_hist[idx] + 32'd3348;
    idx = (idx + acc + 32'd3355) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3362);
    acc = acc + m_hist[idx] + 32'd3369;
    idx = (idx + acc + 32'd3376) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3383);
    acc = acc + m_hist[idx] + 32'd3390;
    idx = (idx + acc + 32'd3397) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3404);
    acc = acc + m_hist[idx] + 32'd3411;
    idx = (idx + acc + 32'd3418) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3425);
    acc = acc + m_hist[idx] + 32'd3432;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3312);
    acc = acc + m_hist[idx] + 32'd3319;
    idx = (idx + acc + 32'd3326) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3333);
    acc = acc + m_hist[idx] + 32'd3340;
    idx = (idx + acc + 32'd3347) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3354);
    acc = acc + m_hist[idx] + 32'd3361;
    idx = (idx + acc + 32'd3368) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3375);
    acc = acc + m_hist[idx] + 32'd3382;
    idx = (idx + acc + 32'd3389) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3396);
    acc = acc + m_hist[idx] + 32'd3403;
    idx = (idx + acc + 32'd3410) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3417);
    acc = acc + m_hist[idx] + 32'd3424;
    idx = (idx + acc + 32'd3431) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3438);
    acc = acc + m_hist[idx] + 32'd3445;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_107 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3317);
    acc = acc + m_hist[idx] + 32'd3324;
    idx = (idx + acc + 32'd3331) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3338);
    acc = acc + m_hist[idx] + 32'd3345;
    idx = (idx + acc + 32'd3352) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3359);
    acc = acc + m_hist[idx] + 32'd3366;
    idx = (idx + acc + 32'd3373) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3380);
    acc = acc + m_hist[idx] + 32'd3387;
    idx = (idx + acc + 32'd3394) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3401);
    acc = acc + m_hist[idx] + 32'd3408;
    idx = (idx + acc + 32'd3415) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3422);
    acc = acc + m_hist[idx] + 32'd3429;
    idx = (idx + acc + 32'd3436) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3443);
    acc = acc + m_hist[idx] + 32'd3450;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3330);
    acc = acc + m_hist[idx] + 32'd3337;
    idx = (idx + acc + 32'd3344) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3351);
    acc = acc + m_hist[idx] + 32'd3358;
    idx = (idx + acc + 32'd3365) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3372);
    acc = acc + m_hist[idx] + 32'd3379;
    idx = (idx + acc + 32'd3386) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3393);
    acc = acc + m_hist[idx] + 32'd3400;
    idx = (idx + acc + 32'd3407) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3414);
    acc = acc + m_hist[idx] + 32'd3421;
    idx = (idx + acc + 32'd3428) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3435);
    acc = acc + m_hist[idx] + 32'd3442;
    idx = (idx + acc + 32'd3449) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3456);
    acc = acc + m_hist[idx] + 32'd3463;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3343);
    acc = acc + m_hist[idx] + 32'd3350;
    idx = (idx + acc + 32'd3357) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3364);
    acc = acc + m_hist[idx] + 32'd3371;
    idx = (idx + acc + 32'd3378) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3385);
    acc = acc + m_hist[idx] + 32'd3392;
    idx = (idx + acc + 32'd3399) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3406);
    acc = acc + m_hist[idx] + 32'd3413;
    idx = (idx + acc + 32'd3420) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3427);
    acc = acc + m_hist[idx] + 32'd3434;
    idx = (idx + acc + 32'd3441) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3448);
    acc = acc + m_hist[idx] + 32'd3455;
    idx = (idx + acc + 32'd3462) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3469);
    acc = acc + m_hist[idx] + 32'd3476;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_108 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3348);
    acc = acc + m_hist[idx] + 32'd3355;
    idx = (idx + acc + 32'd3362) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3369);
    acc = acc + m_hist[idx] + 32'd3376;
    idx = (idx + acc + 32'd3383) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3390);
    acc = acc + m_hist[idx] + 32'd3397;
    idx = (idx + acc + 32'd3404) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3411);
    acc = acc + m_hist[idx] + 32'd3418;
    idx = (idx + acc + 32'd3425) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3432);
    acc = acc + m_hist[idx] + 32'd3439;
    idx = (idx + acc + 32'd3446) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3453);
    acc = acc + m_hist[idx] + 32'd3460;
    idx = (idx + acc + 32'd3467) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3474);
    acc = acc + m_hist[idx] + 32'd3481;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3361);
    acc = acc + m_hist[idx] + 32'd3368;
    idx = (idx + acc + 32'd3375) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3382);
    acc = acc + m_hist[idx] + 32'd3389;
    idx = (idx + acc + 32'd3396) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3403);
    acc = acc + m_hist[idx] + 32'd3410;
    idx = (idx + acc + 32'd3417) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3424);
    acc = acc + m_hist[idx] + 32'd3431;
    idx = (idx + acc + 32'd3438) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3445);
    acc = acc + m_hist[idx] + 32'd3452;
    idx = (idx + acc + 32'd3459) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3466);
    acc = acc + m_hist[idx] + 32'd3473;
    idx = (idx + acc + 32'd3480) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3487);
    acc = acc + m_hist[idx] + 32'd3494;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3374);
    acc = acc + m_hist[idx] + 32'd3381;
    idx = (idx + acc + 32'd3388) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3395);
    acc = acc + m_hist[idx] + 32'd3402;
    idx = (idx + acc + 32'd3409) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3416);
    acc = acc + m_hist[idx] + 32'd3423;
    idx = (idx + acc + 32'd3430) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3437);
    acc = acc + m_hist[idx] + 32'd3444;
    idx = (idx + acc + 32'd3451) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3458);
    acc = acc + m_hist[idx] + 32'd3465;
    idx = (idx + acc + 32'd3472) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3479);
    acc = acc + m_hist[idx] + 32'd3486;
    idx = (idx + acc + 32'd3493) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3500);
    acc = acc + m_hist[idx] + 32'd3507;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_109 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3379);
    acc = acc + m_hist[idx] + 32'd3386;
    idx = (idx + acc + 32'd3393) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3400);
    acc = acc + m_hist[idx] + 32'd3407;
    idx = (idx + acc + 32'd3414) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3421);
    acc = acc + m_hist[idx] + 32'd3428;
    idx = (idx + acc + 32'd3435) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3442);
    acc = acc + m_hist[idx] + 32'd3449;
    idx = (idx + acc + 32'd3456) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3463);
    acc = acc + m_hist[idx] + 32'd3470;
    idx = (idx + acc + 32'd3477) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3484);
    acc = acc + m_hist[idx] + 32'd3491;
    idx = (idx + acc + 32'd3498) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3505);
    acc = acc + m_hist[idx] + 32'd3512;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3392);
    acc = acc + m_hist[idx] + 32'd3399;
    idx = (idx + acc + 32'd3406) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3413);
    acc = acc + m_hist[idx] + 32'd3420;
    idx = (idx + acc + 32'd3427) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3434);
    acc = acc + m_hist[idx] + 32'd3441;
    idx = (idx + acc + 32'd3448) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3455);
    acc = acc + m_hist[idx] + 32'd3462;
    idx = (idx + acc + 32'd3469) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3476);
    acc = acc + m_hist[idx] + 32'd3483;
    idx = (idx + acc + 32'd3490) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3497);
    acc = acc + m_hist[idx] + 32'd3504;
    idx = (idx + acc + 32'd3511) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3518);
    acc = acc + m_hist[idx] + 32'd3525;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3405);
    acc = acc + m_hist[idx] + 32'd3412;
    idx = (idx + acc + 32'd3419) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3426);
    acc = acc + m_hist[idx] + 32'd3433;
    idx = (idx + acc + 32'd3440) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3447);
    acc = acc + m_hist[idx] + 32'd3454;
    idx = (idx + acc + 32'd3461) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3468);
    acc = acc + m_hist[idx] + 32'd3475;
    idx = (idx + acc + 32'd3482) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3489);
    acc = acc + m_hist[idx] + 32'd3496;
    idx = (idx + acc + 32'd3503) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3510);
    acc = acc + m_hist[idx] + 32'd3517;
    idx = (idx + acc + 32'd3524) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3531);
    acc = acc + m_hist[idx] + 32'd3538;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_110 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3410);
    acc = acc + m_hist[idx] + 32'd3417;
    idx = (idx + acc + 32'd3424) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3431);
    acc = acc + m_hist[idx] + 32'd3438;
    idx = (idx + acc + 32'd3445) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3452);
    acc = acc + m_hist[idx] + 32'd3459;
    idx = (idx + acc + 32'd3466) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3473);
    acc = acc + m_hist[idx] + 32'd3480;
    idx = (idx + acc + 32'd3487) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3494);
    acc = acc + m_hist[idx] + 32'd3501;
    idx = (idx + acc + 32'd3508) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3515);
    acc = acc + m_hist[idx] + 32'd3522;
    idx = (idx + acc + 32'd3529) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3536);
    acc = acc + m_hist[idx] + 32'd3543;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3423);
    acc = acc + m_hist[idx] + 32'd3430;
    idx = (idx + acc + 32'd3437) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3444);
    acc = acc + m_hist[idx] + 32'd3451;
    idx = (idx + acc + 32'd3458) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3465);
    acc = acc + m_hist[idx] + 32'd3472;
    idx = (idx + acc + 32'd3479) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3486);
    acc = acc + m_hist[idx] + 32'd3493;
    idx = (idx + acc + 32'd3500) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3507);
    acc = acc + m_hist[idx] + 32'd3514;
    idx = (idx + acc + 32'd3521) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3528);
    acc = acc + m_hist[idx] + 32'd3535;
    idx = (idx + acc + 32'd3542) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3549);
    acc = acc + m_hist[idx] + 32'd3556;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3436);
    acc = acc + m_hist[idx] + 32'd3443;
    idx = (idx + acc + 32'd3450) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3457);
    acc = acc + m_hist[idx] + 32'd3464;
    idx = (idx + acc + 32'd3471) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3478);
    acc = acc + m_hist[idx] + 32'd3485;
    idx = (idx + acc + 32'd3492) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3499);
    acc = acc + m_hist[idx] + 32'd3506;
    idx = (idx + acc + 32'd3513) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3520);
    acc = acc + m_hist[idx] + 32'd3527;
    idx = (idx + acc + 32'd3534) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3541);
    acc = acc + m_hist[idx] + 32'd3548;
    idx = (idx + acc + 32'd3555) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3562);
    acc = acc + m_hist[idx] + 32'd3569;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_111 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3441);
    acc = acc + m_hist[idx] + 32'd3448;
    idx = (idx + acc + 32'd3455) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3462);
    acc = acc + m_hist[idx] + 32'd3469;
    idx = (idx + acc + 32'd3476) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3483);
    acc = acc + m_hist[idx] + 32'd3490;
    idx = (idx + acc + 32'd3497) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3504);
    acc = acc + m_hist[idx] + 32'd3511;
    idx = (idx + acc + 32'd3518) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3525);
    acc = acc + m_hist[idx] + 32'd3532;
    idx = (idx + acc + 32'd3539) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3546);
    acc = acc + m_hist[idx] + 32'd3553;
    idx = (idx + acc + 32'd3560) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3567);
    acc = acc + m_hist[idx] + 32'd3574;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3454);
    acc = acc + m_hist[idx] + 32'd3461;
    idx = (idx + acc + 32'd3468) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3475);
    acc = acc + m_hist[idx] + 32'd3482;
    idx = (idx + acc + 32'd3489) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3496);
    acc = acc + m_hist[idx] + 32'd3503;
    idx = (idx + acc + 32'd3510) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3517);
    acc = acc + m_hist[idx] + 32'd3524;
    idx = (idx + acc + 32'd3531) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3538);
    acc = acc + m_hist[idx] + 32'd3545;
    idx = (idx + acc + 32'd3552) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3559);
    acc = acc + m_hist[idx] + 32'd3566;
    idx = (idx + acc + 32'd3573) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3580);
    acc = acc + m_hist[idx] + 32'd3587;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3467);
    acc = acc + m_hist[idx] + 32'd3474;
    idx = (idx + acc + 32'd3481) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3488);
    acc = acc + m_hist[idx] + 32'd3495;
    idx = (idx + acc + 32'd3502) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3509);
    acc = acc + m_hist[idx] + 32'd3516;
    idx = (idx + acc + 32'd3523) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3530);
    acc = acc + m_hist[idx] + 32'd3537;
    idx = (idx + acc + 32'd3544) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3551);
    acc = acc + m_hist[idx] + 32'd3558;
    idx = (idx + acc + 32'd3565) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3572);
    acc = acc + m_hist[idx] + 32'd3579;
    idx = (idx + acc + 32'd3586) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3593);
    acc = acc + m_hist[idx] + 32'd3600;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_112 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3472);
    acc = acc + m_hist[idx] + 32'd3479;
    idx = (idx + acc + 32'd3486) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3493);
    acc = acc + m_hist[idx] + 32'd3500;
    idx = (idx + acc + 32'd3507) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3514);
    acc = acc + m_hist[idx] + 32'd3521;
    idx = (idx + acc + 32'd3528) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3535);
    acc = acc + m_hist[idx] + 32'd3542;
    idx = (idx + acc + 32'd3549) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3556);
    acc = acc + m_hist[idx] + 32'd3563;
    idx = (idx + acc + 32'd3570) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3577);
    acc = acc + m_hist[idx] + 32'd3584;
    idx = (idx + acc + 32'd3591) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3598);
    acc = acc + m_hist[idx] + 32'd3605;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3485);
    acc = acc + m_hist[idx] + 32'd3492;
    idx = (idx + acc + 32'd3499) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3506);
    acc = acc + m_hist[idx] + 32'd3513;
    idx = (idx + acc + 32'd3520) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3527);
    acc = acc + m_hist[idx] + 32'd3534;
    idx = (idx + acc + 32'd3541) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3548);
    acc = acc + m_hist[idx] + 32'd3555;
    idx = (idx + acc + 32'd3562) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3569);
    acc = acc + m_hist[idx] + 32'd3576;
    idx = (idx + acc + 32'd3583) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3590);
    acc = acc + m_hist[idx] + 32'd3597;
    idx = (idx + acc + 32'd3604) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3611);
    acc = acc + m_hist[idx] + 32'd3618;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3498);
    acc = acc + m_hist[idx] + 32'd3505;
    idx = (idx + acc + 32'd3512) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3519);
    acc = acc + m_hist[idx] + 32'd3526;
    idx = (idx + acc + 32'd3533) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3540);
    acc = acc + m_hist[idx] + 32'd3547;
    idx = (idx + acc + 32'd3554) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3561);
    acc = acc + m_hist[idx] + 32'd3568;
    idx = (idx + acc + 32'd3575) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3582);
    acc = acc + m_hist[idx] + 32'd3589;
    idx = (idx + acc + 32'd3596) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3603);
    acc = acc + m_hist[idx] + 32'd3610;
    idx = (idx + acc + 32'd3617) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3624);
    acc = acc + m_hist[idx] + 32'd3631;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_113 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3503);
    acc = acc + m_hist[idx] + 32'd3510;
    idx = (idx + acc + 32'd3517) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3524);
    acc = acc + m_hist[idx] + 32'd3531;
    idx = (idx + acc + 32'd3538) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3545);
    acc = acc + m_hist[idx] + 32'd3552;
    idx = (idx + acc + 32'd3559) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3566);
    acc = acc + m_hist[idx] + 32'd3573;
    idx = (idx + acc + 32'd3580) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3587);
    acc = acc + m_hist[idx] + 32'd3594;
    idx = (idx + acc + 32'd3601) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3608);
    acc = acc + m_hist[idx] + 32'd3615;
    idx = (idx + acc + 32'd3622) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3629);
    acc = acc + m_hist[idx] + 32'd3636;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3516);
    acc = acc + m_hist[idx] + 32'd3523;
    idx = (idx + acc + 32'd3530) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3537);
    acc = acc + m_hist[idx] + 32'd3544;
    idx = (idx + acc + 32'd3551) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3558);
    acc = acc + m_hist[idx] + 32'd3565;
    idx = (idx + acc + 32'd3572) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3579);
    acc = acc + m_hist[idx] + 32'd3586;
    idx = (idx + acc + 32'd3593) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3600);
    acc = acc + m_hist[idx] + 32'd3607;
    idx = (idx + acc + 32'd3614) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3621);
    acc = acc + m_hist[idx] + 32'd3628;
    idx = (idx + acc + 32'd3635) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3642);
    acc = acc + m_hist[idx] + 32'd3649;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3529);
    acc = acc + m_hist[idx] + 32'd3536;
    idx = (idx + acc + 32'd3543) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3550);
    acc = acc + m_hist[idx] + 32'd3557;
    idx = (idx + acc + 32'd3564) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3571);
    acc = acc + m_hist[idx] + 32'd3578;
    idx = (idx + acc + 32'd3585) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3592);
    acc = acc + m_hist[idx] + 32'd3599;
    idx = (idx + acc + 32'd3606) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3613);
    acc = acc + m_hist[idx] + 32'd3620;
    idx = (idx + acc + 32'd3627) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3634);
    acc = acc + m_hist[idx] + 32'd3641;
    idx = (idx + acc + 32'd3648) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3655);
    acc = acc + m_hist[idx] + 32'd3662;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_114 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3534);
    acc = acc + m_hist[idx] + 32'd3541;
    idx = (idx + acc + 32'd3548) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3555);
    acc = acc + m_hist[idx] + 32'd3562;
    idx = (idx + acc + 32'd3569) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3576);
    acc = acc + m_hist[idx] + 32'd3583;
    idx = (idx + acc + 32'd3590) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3597);
    acc = acc + m_hist[idx] + 32'd3604;
    idx = (idx + acc + 32'd3611) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3618);
    acc = acc + m_hist[idx] + 32'd3625;
    idx = (idx + acc + 32'd3632) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3639);
    acc = acc + m_hist[idx] + 32'd3646;
    idx = (idx + acc + 32'd3653) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3660);
    acc = acc + m_hist[idx] + 32'd3667;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3547);
    acc = acc + m_hist[idx] + 32'd3554;
    idx = (idx + acc + 32'd3561) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3568);
    acc = acc + m_hist[idx] + 32'd3575;
    idx = (idx + acc + 32'd3582) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3589);
    acc = acc + m_hist[idx] + 32'd3596;
    idx = (idx + acc + 32'd3603) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3610);
    acc = acc + m_hist[idx] + 32'd3617;
    idx = (idx + acc + 32'd3624) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3631);
    acc = acc + m_hist[idx] + 32'd3638;
    idx = (idx + acc + 32'd3645) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3652);
    acc = acc + m_hist[idx] + 32'd3659;
    idx = (idx + acc + 32'd3666) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3673);
    acc = acc + m_hist[idx] + 32'd3680;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3560);
    acc = acc + m_hist[idx] + 32'd3567;
    idx = (idx + acc + 32'd3574) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3581);
    acc = acc + m_hist[idx] + 32'd3588;
    idx = (idx + acc + 32'd3595) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3602);
    acc = acc + m_hist[idx] + 32'd3609;
    idx = (idx + acc + 32'd3616) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3623);
    acc = acc + m_hist[idx] + 32'd3630;
    idx = (idx + acc + 32'd3637) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3644);
    acc = acc + m_hist[idx] + 32'd3651;
    idx = (idx + acc + 32'd3658) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3665);
    acc = acc + m_hist[idx] + 32'd3672;
    idx = (idx + acc + 32'd3679) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3686);
    acc = acc + m_hist[idx] + 32'd3693;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_115 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3565);
    acc = acc + m_hist[idx] + 32'd3572;
    idx = (idx + acc + 32'd3579) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3586);
    acc = acc + m_hist[idx] + 32'd3593;
    idx = (idx + acc + 32'd3600) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3607);
    acc = acc + m_hist[idx] + 32'd3614;
    idx = (idx + acc + 32'd3621) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3628);
    acc = acc + m_hist[idx] + 32'd3635;
    idx = (idx + acc + 32'd3642) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3649);
    acc = acc + m_hist[idx] + 32'd3656;
    idx = (idx + acc + 32'd3663) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3670);
    acc = acc + m_hist[idx] + 32'd3677;
    idx = (idx + acc + 32'd3684) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3691);
    acc = acc + m_hist[idx] + 32'd3698;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3578);
    acc = acc + m_hist[idx] + 32'd3585;
    idx = (idx + acc + 32'd3592) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3599);
    acc = acc + m_hist[idx] + 32'd3606;
    idx = (idx + acc + 32'd3613) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3620);
    acc = acc + m_hist[idx] + 32'd3627;
    idx = (idx + acc + 32'd3634) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3641);
    acc = acc + m_hist[idx] + 32'd3648;
    idx = (idx + acc + 32'd3655) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3662);
    acc = acc + m_hist[idx] + 32'd3669;
    idx = (idx + acc + 32'd3676) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3683);
    acc = acc + m_hist[idx] + 32'd3690;
    idx = (idx + acc + 32'd3697) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3704);
    acc = acc + m_hist[idx] + 32'd3711;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3591);
    acc = acc + m_hist[idx] + 32'd3598;
    idx = (idx + acc + 32'd3605) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3612);
    acc = acc + m_hist[idx] + 32'd3619;
    idx = (idx + acc + 32'd3626) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3633);
    acc = acc + m_hist[idx] + 32'd3640;
    idx = (idx + acc + 32'd3647) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3654);
    acc = acc + m_hist[idx] + 32'd3661;
    idx = (idx + acc + 32'd3668) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3675);
    acc = acc + m_hist[idx] + 32'd3682;
    idx = (idx + acc + 32'd3689) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3696);
    acc = acc + m_hist[idx] + 32'd3703;
    idx = (idx + acc + 32'd3710) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3717);
    acc = acc + m_hist[idx] + 32'd3724;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_116 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3596);
    acc = acc + m_hist[idx] + 32'd3603;
    idx = (idx + acc + 32'd3610) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3617);
    acc = acc + m_hist[idx] + 32'd3624;
    idx = (idx + acc + 32'd3631) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3638);
    acc = acc + m_hist[idx] + 32'd3645;
    idx = (idx + acc + 32'd3652) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3659);
    acc = acc + m_hist[idx] + 32'd3666;
    idx = (idx + acc + 32'd3673) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3680);
    acc = acc + m_hist[idx] + 32'd3687;
    idx = (idx + acc + 32'd3694) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3701);
    acc = acc + m_hist[idx] + 32'd3708;
    idx = (idx + acc + 32'd3715) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3722);
    acc = acc + m_hist[idx] + 32'd3729;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3609);
    acc = acc + m_hist[idx] + 32'd3616;
    idx = (idx + acc + 32'd3623) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3630);
    acc = acc + m_hist[idx] + 32'd3637;
    idx = (idx + acc + 32'd3644) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3651);
    acc = acc + m_hist[idx] + 32'd3658;
    idx = (idx + acc + 32'd3665) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3672);
    acc = acc + m_hist[idx] + 32'd3679;
    idx = (idx + acc + 32'd3686) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3693);
    acc = acc + m_hist[idx] + 32'd3700;
    idx = (idx + acc + 32'd3707) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3714);
    acc = acc + m_hist[idx] + 32'd3721;
    idx = (idx + acc + 32'd3728) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3735);
    acc = acc + m_hist[idx] + 32'd3742;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3622);
    acc = acc + m_hist[idx] + 32'd3629;
    idx = (idx + acc + 32'd3636) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3643);
    acc = acc + m_hist[idx] + 32'd3650;
    idx = (idx + acc + 32'd3657) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3664);
    acc = acc + m_hist[idx] + 32'd3671;
    idx = (idx + acc + 32'd3678) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3685);
    acc = acc + m_hist[idx] + 32'd3692;
    idx = (idx + acc + 32'd3699) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3706);
    acc = acc + m_hist[idx] + 32'd3713;
    idx = (idx + acc + 32'd3720) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3727);
    acc = acc + m_hist[idx] + 32'd3734;
    idx = (idx + acc + 32'd3741) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3748);
    acc = acc + m_hist[idx] + 32'd3755;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_117 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3627);
    acc = acc + m_hist[idx] + 32'd3634;
    idx = (idx + acc + 32'd3641) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3648);
    acc = acc + m_hist[idx] + 32'd3655;
    idx = (idx + acc + 32'd3662) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3669);
    acc = acc + m_hist[idx] + 32'd3676;
    idx = (idx + acc + 32'd3683) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3690);
    acc = acc + m_hist[idx] + 32'd3697;
    idx = (idx + acc + 32'd3704) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3711);
    acc = acc + m_hist[idx] + 32'd3718;
    idx = (idx + acc + 32'd3725) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3732);
    acc = acc + m_hist[idx] + 32'd3739;
    idx = (idx + acc + 32'd3746) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3753);
    acc = acc + m_hist[idx] + 32'd3760;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3640);
    acc = acc + m_hist[idx] + 32'd3647;
    idx = (idx + acc + 32'd3654) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3661);
    acc = acc + m_hist[idx] + 32'd3668;
    idx = (idx + acc + 32'd3675) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3682);
    acc = acc + m_hist[idx] + 32'd3689;
    idx = (idx + acc + 32'd3696) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3703);
    acc = acc + m_hist[idx] + 32'd3710;
    idx = (idx + acc + 32'd3717) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3724);
    acc = acc + m_hist[idx] + 32'd3731;
    idx = (idx + acc + 32'd3738) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3745);
    acc = acc + m_hist[idx] + 32'd3752;
    idx = (idx + acc + 32'd3759) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3766);
    acc = acc + m_hist[idx] + 32'd3773;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3653);
    acc = acc + m_hist[idx] + 32'd3660;
    idx = (idx + acc + 32'd3667) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3674);
    acc = acc + m_hist[idx] + 32'd3681;
    idx = (idx + acc + 32'd3688) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3695);
    acc = acc + m_hist[idx] + 32'd3702;
    idx = (idx + acc + 32'd3709) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3716);
    acc = acc + m_hist[idx] + 32'd3723;
    idx = (idx + acc + 32'd3730) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3737);
    acc = acc + m_hist[idx] + 32'd3744;
    idx = (idx + acc + 32'd3751) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3758);
    acc = acc + m_hist[idx] + 32'd3765;
    idx = (idx + acc + 32'd3772) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3779);
    acc = acc + m_hist[idx] + 32'd3786;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_118 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3658);
    acc = acc + m_hist[idx] + 32'd3665;
    idx = (idx + acc + 32'd3672) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3679);
    acc = acc + m_hist[idx] + 32'd3686;
    idx = (idx + acc + 32'd3693) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3700);
    acc = acc + m_hist[idx] + 32'd3707;
    idx = (idx + acc + 32'd3714) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3721);
    acc = acc + m_hist[idx] + 32'd3728;
    idx = (idx + acc + 32'd3735) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3742);
    acc = acc + m_hist[idx] + 32'd3749;
    idx = (idx + acc + 32'd3756) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3763);
    acc = acc + m_hist[idx] + 32'd3770;
    idx = (idx + acc + 32'd3777) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3784);
    acc = acc + m_hist[idx] + 32'd3791;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3671);
    acc = acc + m_hist[idx] + 32'd3678;
    idx = (idx + acc + 32'd3685) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3692);
    acc = acc + m_hist[idx] + 32'd3699;
    idx = (idx + acc + 32'd3706) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3713);
    acc = acc + m_hist[idx] + 32'd3720;
    idx = (idx + acc + 32'd3727) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3734);
    acc = acc + m_hist[idx] + 32'd3741;
    idx = (idx + acc + 32'd3748) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3755);
    acc = acc + m_hist[idx] + 32'd3762;
    idx = (idx + acc + 32'd3769) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3776);
    acc = acc + m_hist[idx] + 32'd3783;
    idx = (idx + acc + 32'd3790) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3797);
    acc = acc + m_hist[idx] + 32'd3804;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3684);
    acc = acc + m_hist[idx] + 32'd3691;
    idx = (idx + acc + 32'd3698) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3705);
    acc = acc + m_hist[idx] + 32'd3712;
    idx = (idx + acc + 32'd3719) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3726);
    acc = acc + m_hist[idx] + 32'd3733;
    idx = (idx + acc + 32'd3740) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3747);
    acc = acc + m_hist[idx] + 32'd3754;
    idx = (idx + acc + 32'd3761) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3768);
    acc = acc + m_hist[idx] + 32'd3775;
    idx = (idx + acc + 32'd3782) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3789);
    acc = acc + m_hist[idx] + 32'd3796;
    idx = (idx + acc + 32'd3803) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3810);
    acc = acc + m_hist[idx] + 32'd3817;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_119 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3689);
    acc = acc + m_hist[idx] + 32'd3696;
    idx = (idx + acc + 32'd3703) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3710);
    acc = acc + m_hist[idx] + 32'd3717;
    idx = (idx + acc + 32'd3724) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3731);
    acc = acc + m_hist[idx] + 32'd3738;
    idx = (idx + acc + 32'd3745) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3752);
    acc = acc + m_hist[idx] + 32'd3759;
    idx = (idx + acc + 32'd3766) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3773);
    acc = acc + m_hist[idx] + 32'd3780;
    idx = (idx + acc + 32'd3787) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3794);
    acc = acc + m_hist[idx] + 32'd3801;
    idx = (idx + acc + 32'd3808) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3815);
    acc = acc + m_hist[idx] + 32'd3822;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3702);
    acc = acc + m_hist[idx] + 32'd3709;
    idx = (idx + acc + 32'd3716) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3723);
    acc = acc + m_hist[idx] + 32'd3730;
    idx = (idx + acc + 32'd3737) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3744);
    acc = acc + m_hist[idx] + 32'd3751;
    idx = (idx + acc + 32'd3758) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3765);
    acc = acc + m_hist[idx] + 32'd3772;
    idx = (idx + acc + 32'd3779) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3786);
    acc = acc + m_hist[idx] + 32'd3793;
    idx = (idx + acc + 32'd3800) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3807);
    acc = acc + m_hist[idx] + 32'd3814;
    idx = (idx + acc + 32'd3821) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3828);
    acc = acc + m_hist[idx] + 32'd3835;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3715);
    acc = acc + m_hist[idx] + 32'd3722;
    idx = (idx + acc + 32'd3729) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3736);
    acc = acc + m_hist[idx] + 32'd3743;
    idx = (idx + acc + 32'd3750) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3757);
    acc = acc + m_hist[idx] + 32'd3764;
    idx = (idx + acc + 32'd3771) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3778);
    acc = acc + m_hist[idx] + 32'd3785;
    idx = (idx + acc + 32'd3792) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3799);
    acc = acc + m_hist[idx] + 32'd3806;
    idx = (idx + acc + 32'd3813) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3820);
    acc = acc + m_hist[idx] + 32'd3827;
    idx = (idx + acc + 32'd3834) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3841);
    acc = acc + m_hist[idx] + 32'd3848;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_120 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3720);
    acc = acc + m_hist[idx] + 32'd3727;
    idx = (idx + acc + 32'd3734) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3741);
    acc = acc + m_hist[idx] + 32'd3748;
    idx = (idx + acc + 32'd3755) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3762);
    acc = acc + m_hist[idx] + 32'd3769;
    idx = (idx + acc + 32'd3776) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3783);
    acc = acc + m_hist[idx] + 32'd3790;
    idx = (idx + acc + 32'd3797) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3804);
    acc = acc + m_hist[idx] + 32'd3811;
    idx = (idx + acc + 32'd3818) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3825);
    acc = acc + m_hist[idx] + 32'd3832;
    idx = (idx + acc + 32'd3839) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3846);
    acc = acc + m_hist[idx] + 32'd3853;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3733);
    acc = acc + m_hist[idx] + 32'd3740;
    idx = (idx + acc + 32'd3747) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3754);
    acc = acc + m_hist[idx] + 32'd3761;
    idx = (idx + acc + 32'd3768) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3775);
    acc = acc + m_hist[idx] + 32'd3782;
    idx = (idx + acc + 32'd3789) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3796);
    acc = acc + m_hist[idx] + 32'd3803;
    idx = (idx + acc + 32'd3810) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3817);
    acc = acc + m_hist[idx] + 32'd3824;
    idx = (idx + acc + 32'd3831) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3838);
    acc = acc + m_hist[idx] + 32'd3845;
    idx = (idx + acc + 32'd3852) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3859);
    acc = acc + m_hist[idx] + 32'd3866;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3746);
    acc = acc + m_hist[idx] + 32'd3753;
    idx = (idx + acc + 32'd3760) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3767);
    acc = acc + m_hist[idx] + 32'd3774;
    idx = (idx + acc + 32'd3781) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3788);
    acc = acc + m_hist[idx] + 32'd3795;
    idx = (idx + acc + 32'd3802) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3809);
    acc = acc + m_hist[idx] + 32'd3816;
    idx = (idx + acc + 32'd3823) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3830);
    acc = acc + m_hist[idx] + 32'd3837;
    idx = (idx + acc + 32'd3844) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3851);
    acc = acc + m_hist[idx] + 32'd3858;
    idx = (idx + acc + 32'd3865) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3872);
    acc = acc + m_hist[idx] + 32'd3879;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_121 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3751);
    acc = acc + m_hist[idx] + 32'd3758;
    idx = (idx + acc + 32'd3765) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3772);
    acc = acc + m_hist[idx] + 32'd3779;
    idx = (idx + acc + 32'd3786) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3793);
    acc = acc + m_hist[idx] + 32'd3800;
    idx = (idx + acc + 32'd3807) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3814);
    acc = acc + m_hist[idx] + 32'd3821;
    idx = (idx + acc + 32'd3828) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3835);
    acc = acc + m_hist[idx] + 32'd3842;
    idx = (idx + acc + 32'd3849) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3856);
    acc = acc + m_hist[idx] + 32'd3863;
    idx = (idx + acc + 32'd3870) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3877);
    acc = acc + m_hist[idx] + 32'd3884;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3764);
    acc = acc + m_hist[idx] + 32'd3771;
    idx = (idx + acc + 32'd3778) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3785);
    acc = acc + m_hist[idx] + 32'd3792;
    idx = (idx + acc + 32'd3799) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3806);
    acc = acc + m_hist[idx] + 32'd3813;
    idx = (idx + acc + 32'd3820) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3827);
    acc = acc + m_hist[idx] + 32'd3834;
    idx = (idx + acc + 32'd3841) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3848);
    acc = acc + m_hist[idx] + 32'd3855;
    idx = (idx + acc + 32'd3862) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3869);
    acc = acc + m_hist[idx] + 32'd3876;
    idx = (idx + acc + 32'd3883) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3890);
    acc = acc + m_hist[idx] + 32'd3897;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3777);
    acc = acc + m_hist[idx] + 32'd3784;
    idx = (idx + acc + 32'd3791) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3798);
    acc = acc + m_hist[idx] + 32'd3805;
    idx = (idx + acc + 32'd3812) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3819);
    acc = acc + m_hist[idx] + 32'd3826;
    idx = (idx + acc + 32'd3833) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3840);
    acc = acc + m_hist[idx] + 32'd3847;
    idx = (idx + acc + 32'd3854) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3861);
    acc = acc + m_hist[idx] + 32'd3868;
    idx = (idx + acc + 32'd3875) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3882);
    acc = acc + m_hist[idx] + 32'd3889;
    idx = (idx + acc + 32'd3896) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3903);
    acc = acc + m_hist[idx] + 32'd3910;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_122 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3782);
    acc = acc + m_hist[idx] + 32'd3789;
    idx = (idx + acc + 32'd3796) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3803);
    acc = acc + m_hist[idx] + 32'd3810;
    idx = (idx + acc + 32'd3817) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3824);
    acc = acc + m_hist[idx] + 32'd3831;
    idx = (idx + acc + 32'd3838) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3845);
    acc = acc + m_hist[idx] + 32'd3852;
    idx = (idx + acc + 32'd3859) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3866);
    acc = acc + m_hist[idx] + 32'd3873;
    idx = (idx + acc + 32'd3880) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3887);
    acc = acc + m_hist[idx] + 32'd3894;
    idx = (idx + acc + 32'd3901) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3908);
    acc = acc + m_hist[idx] + 32'd3915;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3795);
    acc = acc + m_hist[idx] + 32'd3802;
    idx = (idx + acc + 32'd3809) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3816);
    acc = acc + m_hist[idx] + 32'd3823;
    idx = (idx + acc + 32'd3830) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3837);
    acc = acc + m_hist[idx] + 32'd3844;
    idx = (idx + acc + 32'd3851) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3858);
    acc = acc + m_hist[idx] + 32'd3865;
    idx = (idx + acc + 32'd3872) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3879);
    acc = acc + m_hist[idx] + 32'd3886;
    idx = (idx + acc + 32'd3893) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3900);
    acc = acc + m_hist[idx] + 32'd3907;
    idx = (idx + acc + 32'd3914) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3921);
    acc = acc + m_hist[idx] + 32'd3928;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3808);
    acc = acc + m_hist[idx] + 32'd3815;
    idx = (idx + acc + 32'd3822) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3829);
    acc = acc + m_hist[idx] + 32'd3836;
    idx = (idx + acc + 32'd3843) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3850);
    acc = acc + m_hist[idx] + 32'd3857;
    idx = (idx + acc + 32'd3864) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3871);
    acc = acc + m_hist[idx] + 32'd3878;
    idx = (idx + acc + 32'd3885) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3892);
    acc = acc + m_hist[idx] + 32'd3899;
    idx = (idx + acc + 32'd3906) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3913);
    acc = acc + m_hist[idx] + 32'd3920;
    idx = (idx + acc + 32'd3927) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3934);
    acc = acc + m_hist[idx] + 32'd3941;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_123 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3813);
    acc = acc + m_hist[idx] + 32'd3820;
    idx = (idx + acc + 32'd3827) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3834);
    acc = acc + m_hist[idx] + 32'd3841;
    idx = (idx + acc + 32'd3848) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3855);
    acc = acc + m_hist[idx] + 32'd3862;
    idx = (idx + acc + 32'd3869) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3876);
    acc = acc + m_hist[idx] + 32'd3883;
    idx = (idx + acc + 32'd3890) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3897);
    acc = acc + m_hist[idx] + 32'd3904;
    idx = (idx + acc + 32'd3911) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3918);
    acc = acc + m_hist[idx] + 32'd3925;
    idx = (idx + acc + 32'd3932) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3939);
    acc = acc + m_hist[idx] + 32'd3946;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3826);
    acc = acc + m_hist[idx] + 32'd3833;
    idx = (idx + acc + 32'd3840) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3847);
    acc = acc + m_hist[idx] + 32'd3854;
    idx = (idx + acc + 32'd3861) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3868);
    acc = acc + m_hist[idx] + 32'd3875;
    idx = (idx + acc + 32'd3882) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3889);
    acc = acc + m_hist[idx] + 32'd3896;
    idx = (idx + acc + 32'd3903) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3910);
    acc = acc + m_hist[idx] + 32'd3917;
    idx = (idx + acc + 32'd3924) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3931);
    acc = acc + m_hist[idx] + 32'd3938;
    idx = (idx + acc + 32'd3945) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3952);
    acc = acc + m_hist[idx] + 32'd3959;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3839);
    acc = acc + m_hist[idx] + 32'd3846;
    idx = (idx + acc + 32'd3853) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3860);
    acc = acc + m_hist[idx] + 32'd3867;
    idx = (idx + acc + 32'd3874) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3881);
    acc = acc + m_hist[idx] + 32'd3888;
    idx = (idx + acc + 32'd3895) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3902);
    acc = acc + m_hist[idx] + 32'd3909;
    idx = (idx + acc + 32'd3916) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3923);
    acc = acc + m_hist[idx] + 32'd3930;
    idx = (idx + acc + 32'd3937) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3944);
    acc = acc + m_hist[idx] + 32'd3951;
    idx = (idx + acc + 32'd3958) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3965);
    acc = acc + m_hist[idx] + 32'd3972;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_124 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3844);
    acc = acc + m_hist[idx] + 32'd3851;
    idx = (idx + acc + 32'd3858) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3865);
    acc = acc + m_hist[idx] + 32'd3872;
    idx = (idx + acc + 32'd3879) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3886);
    acc = acc + m_hist[idx] + 32'd3893;
    idx = (idx + acc + 32'd3900) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3907);
    acc = acc + m_hist[idx] + 32'd3914;
    idx = (idx + acc + 32'd3921) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3928);
    acc = acc + m_hist[idx] + 32'd3935;
    idx = (idx + acc + 32'd3942) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3949);
    acc = acc + m_hist[idx] + 32'd3956;
    idx = (idx + acc + 32'd3963) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3970);
    acc = acc + m_hist[idx] + 32'd3977;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3857);
    acc = acc + m_hist[idx] + 32'd3864;
    idx = (idx + acc + 32'd3871) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3878);
    acc = acc + m_hist[idx] + 32'd3885;
    idx = (idx + acc + 32'd3892) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3899);
    acc = acc + m_hist[idx] + 32'd3906;
    idx = (idx + acc + 32'd3913) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3920);
    acc = acc + m_hist[idx] + 32'd3927;
    idx = (idx + acc + 32'd3934) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3941);
    acc = acc + m_hist[idx] + 32'd3948;
    idx = (idx + acc + 32'd3955) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3962);
    acc = acc + m_hist[idx] + 32'd3969;
    idx = (idx + acc + 32'd3976) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3983);
    acc = acc + m_hist[idx] + 32'd3990;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3870);
    acc = acc + m_hist[idx] + 32'd3877;
    idx = (idx + acc + 32'd3884) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3891);
    acc = acc + m_hist[idx] + 32'd3898;
    idx = (idx + acc + 32'd3905) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3912);
    acc = acc + m_hist[idx] + 32'd3919;
    idx = (idx + acc + 32'd3926) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3933);
    acc = acc + m_hist[idx] + 32'd3940;
    idx = (idx + acc + 32'd3947) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3954);
    acc = acc + m_hist[idx] + 32'd3961;
    idx = (idx + acc + 32'd3968) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3975);
    acc = acc + m_hist[idx] + 32'd3982;
    idx = (idx + acc + 32'd3989) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3996);
    acc = acc + m_hist[idx] + 32'd4003;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_125 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3875);
    acc = acc + m_hist[idx] + 32'd3882;
    idx = (idx + acc + 32'd3889) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3896);
    acc = acc + m_hist[idx] + 32'd3903;
    idx = (idx + acc + 32'd3910) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3917);
    acc = acc + m_hist[idx] + 32'd3924;
    idx = (idx + acc + 32'd3931) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3938);
    acc = acc + m_hist[idx] + 32'd3945;
    idx = (idx + acc + 32'd3952) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3959);
    acc = acc + m_hist[idx] + 32'd3966;
    idx = (idx + acc + 32'd3973) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3980);
    acc = acc + m_hist[idx] + 32'd3987;
    idx = (idx + acc + 32'd3994) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4001);
    acc = acc + m_hist[idx] + 32'd4008;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3888);
    acc = acc + m_hist[idx] + 32'd3895;
    idx = (idx + acc + 32'd3902) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3909);
    acc = acc + m_hist[idx] + 32'd3916;
    idx = (idx + acc + 32'd3923) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3930);
    acc = acc + m_hist[idx] + 32'd3937;
    idx = (idx + acc + 32'd3944) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3951);
    acc = acc + m_hist[idx] + 32'd3958;
    idx = (idx + acc + 32'd3965) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3972);
    acc = acc + m_hist[idx] + 32'd3979;
    idx = (idx + acc + 32'd3986) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3993);
    acc = acc + m_hist[idx] + 32'd4000;
    idx = (idx + acc + 32'd4007) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4014);
    acc = acc + m_hist[idx] + 32'd4021;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3901);
    acc = acc + m_hist[idx] + 32'd3908;
    idx = (idx + acc + 32'd3915) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3922);
    acc = acc + m_hist[idx] + 32'd3929;
    idx = (idx + acc + 32'd3936) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3943);
    acc = acc + m_hist[idx] + 32'd3950;
    idx = (idx + acc + 32'd3957) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3964);
    acc = acc + m_hist[idx] + 32'd3971;
    idx = (idx + acc + 32'd3978) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3985);
    acc = acc + m_hist[idx] + 32'd3992;
    idx = (idx + acc + 32'd3999) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4006);
    acc = acc + m_hist[idx] + 32'd4013;
    idx = (idx + acc + 32'd4020) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4027);
    acc = acc + m_hist[idx] + 32'd4034;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_126 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3906);
    acc = acc + m_hist[idx] + 32'd3913;
    idx = (idx + acc + 32'd3920) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3927);
    acc = acc + m_hist[idx] + 32'd3934;
    idx = (idx + acc + 32'd3941) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3948);
    acc = acc + m_hist[idx] + 32'd3955;
    idx = (idx + acc + 32'd3962) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3969);
    acc = acc + m_hist[idx] + 32'd3976;
    idx = (idx + acc + 32'd3983) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3990);
    acc = acc + m_hist[idx] + 32'd3997;
    idx = (idx + acc + 32'd4004) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4011);
    acc = acc + m_hist[idx] + 32'd4018;
    idx = (idx + acc + 32'd4025) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4032);
    acc = acc + m_hist[idx] + 32'd4039;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3919);
    acc = acc + m_hist[idx] + 32'd3926;
    idx = (idx + acc + 32'd3933) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3940);
    acc = acc + m_hist[idx] + 32'd3947;
    idx = (idx + acc + 32'd3954) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3961);
    acc = acc + m_hist[idx] + 32'd3968;
    idx = (idx + acc + 32'd3975) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3982);
    acc = acc + m_hist[idx] + 32'd3989;
    idx = (idx + acc + 32'd3996) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4003);
    acc = acc + m_hist[idx] + 32'd4010;
    idx = (idx + acc + 32'd4017) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4024);
    acc = acc + m_hist[idx] + 32'd4031;
    idx = (idx + acc + 32'd4038) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4045);
    acc = acc + m_hist[idx] + 32'd4052;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3932);
    acc = acc + m_hist[idx] + 32'd3939;
    idx = (idx + acc + 32'd3946) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3953);
    acc = acc + m_hist[idx] + 32'd3960;
    idx = (idx + acc + 32'd3967) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3974);
    acc = acc + m_hist[idx] + 32'd3981;
    idx = (idx + acc + 32'd3988) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3995);
    acc = acc + m_hist[idx] + 32'd4002;
    idx = (idx + acc + 32'd4009) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4016);
    acc = acc + m_hist[idx] + 32'd4023;
    idx = (idx + acc + 32'd4030) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4037);
    acc = acc + m_hist[idx] + 32'd4044;
    idx = (idx + acc + 32'd4051) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4058);
    acc = acc + m_hist[idx] + 32'd4065;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_127 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3937);
    acc = acc + m_hist[idx] + 32'd3944;
    idx = (idx + acc + 32'd3951) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3958);
    acc = acc + m_hist[idx] + 32'd3965;
    idx = (idx + acc + 32'd3972) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3979);
    acc = acc + m_hist[idx] + 32'd3986;
    idx = (idx + acc + 32'd3993) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4000);
    acc = acc + m_hist[idx] + 32'd4007;
    idx = (idx + acc + 32'd4014) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4021);
    acc = acc + m_hist[idx] + 32'd4028;
    idx = (idx + acc + 32'd4035) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4042);
    acc = acc + m_hist[idx] + 32'd4049;
    idx = (idx + acc + 32'd4056) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4063);
    acc = acc + m_hist[idx] + 32'd4070;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3950);
    acc = acc + m_hist[idx] + 32'd3957;
    idx = (idx + acc + 32'd3964) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3971);
    acc = acc + m_hist[idx] + 32'd3978;
    idx = (idx + acc + 32'd3985) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3992);
    acc = acc + m_hist[idx] + 32'd3999;
    idx = (idx + acc + 32'd4006) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4013);
    acc = acc + m_hist[idx] + 32'd4020;
    idx = (idx + acc + 32'd4027) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4034);
    acc = acc + m_hist[idx] + 32'd4041;
    idx = (idx + acc + 32'd4048) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4055);
    acc = acc + m_hist[idx] + 32'd4062;
    idx = (idx + acc + 32'd4069) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4076);
    acc = acc + m_hist[idx] + 32'd4083;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3963);
    acc = acc + m_hist[idx] + 32'd3970;
    idx = (idx + acc + 32'd3977) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3984);
    acc = acc + m_hist[idx] + 32'd3991;
    idx = (idx + acc + 32'd3998) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4005);
    acc = acc + m_hist[idx] + 32'd4012;
    idx = (idx + acc + 32'd4019) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4026);
    acc = acc + m_hist[idx] + 32'd4033;
    idx = (idx + acc + 32'd4040) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4047);
    acc = acc + m_hist[idx] + 32'd4054;
    idx = (idx + acc + 32'd4061) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4068);
    acc = acc + m_hist[idx] + 32'd4075;
    idx = (idx + acc + 32'd4082) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4089);
    acc = acc + m_hist[idx] + 32'd4096;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_128 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3968);
    acc = acc + m_hist[idx] + 32'd3975;
    idx = (idx + acc + 32'd3982) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3989);
    acc = acc + m_hist[idx] + 32'd3996;
    idx = (idx + acc + 32'd4003) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4010);
    acc = acc + m_hist[idx] + 32'd4017;
    idx = (idx + acc + 32'd4024) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4031);
    acc = acc + m_hist[idx] + 32'd4038;
    idx = (idx + acc + 32'd4045) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4052);
    acc = acc + m_hist[idx] + 32'd4059;
    idx = (idx + acc + 32'd4066) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4073);
    acc = acc + m_hist[idx] + 32'd4080;
    idx = (idx + acc + 32'd4087) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4094);
    acc = acc + m_hist[idx] + 32'd4101;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3981);
    acc = acc + m_hist[idx] + 32'd3988;
    idx = (idx + acc + 32'd3995) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4002);
    acc = acc + m_hist[idx] + 32'd4009;
    idx = (idx + acc + 32'd4016) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4023);
    acc = acc + m_hist[idx] + 32'd4030;
    idx = (idx + acc + 32'd4037) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4044);
    acc = acc + m_hist[idx] + 32'd4051;
    idx = (idx + acc + 32'd4058) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4065);
    acc = acc + m_hist[idx] + 32'd4072;
    idx = (idx + acc + 32'd4079) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4086);
    acc = acc + m_hist[idx] + 32'd4093;
    idx = (idx + acc + 32'd4100) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4107);
    acc = acc + m_hist[idx] + 32'd4114;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3994);
    acc = acc + m_hist[idx] + 32'd4001;
    idx = (idx + acc + 32'd4008) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4015);
    acc = acc + m_hist[idx] + 32'd4022;
    idx = (idx + acc + 32'd4029) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4036);
    acc = acc + m_hist[idx] + 32'd4043;
    idx = (idx + acc + 32'd4050) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4057);
    acc = acc + m_hist[idx] + 32'd4064;
    idx = (idx + acc + 32'd4071) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4078);
    acc = acc + m_hist[idx] + 32'd4085;
    idx = (idx + acc + 32'd4092) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4099);
    acc = acc + m_hist[idx] + 32'd4106;
    idx = (idx + acc + 32'd4113) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4120);
    acc = acc + m_hist[idx] + 32'd4127;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_129 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd3999);
    acc = acc + m_hist[idx] + 32'd4006;
    idx = (idx + acc + 32'd4013) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4020);
    acc = acc + m_hist[idx] + 32'd4027;
    idx = (idx + acc + 32'd4034) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4041);
    acc = acc + m_hist[idx] + 32'd4048;
    idx = (idx + acc + 32'd4055) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4062);
    acc = acc + m_hist[idx] + 32'd4069;
    idx = (idx + acc + 32'd4076) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4083);
    acc = acc + m_hist[idx] + 32'd4090;
    idx = (idx + acc + 32'd4097) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4104);
    acc = acc + m_hist[idx] + 32'd4111;
    idx = (idx + acc + 32'd4118) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4125);
    acc = acc + m_hist[idx] + 32'd4132;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4012);
    acc = acc + m_hist[idx] + 32'd4019;
    idx = (idx + acc + 32'd4026) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4033);
    acc = acc + m_hist[idx] + 32'd4040;
    idx = (idx + acc + 32'd4047) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4054);
    acc = acc + m_hist[idx] + 32'd4061;
    idx = (idx + acc + 32'd4068) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4075);
    acc = acc + m_hist[idx] + 32'd4082;
    idx = (idx + acc + 32'd4089) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4096);
    acc = acc + m_hist[idx] + 32'd4103;
    idx = (idx + acc + 32'd4110) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4117);
    acc = acc + m_hist[idx] + 32'd4124;
    idx = (idx + acc + 32'd4131) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4138);
    acc = acc + m_hist[idx] + 32'd4145;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4025);
    acc = acc + m_hist[idx] + 32'd4032;
    idx = (idx + acc + 32'd4039) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4046);
    acc = acc + m_hist[idx] + 32'd4053;
    idx = (idx + acc + 32'd4060) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4067);
    acc = acc + m_hist[idx] + 32'd4074;
    idx = (idx + acc + 32'd4081) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4088);
    acc = acc + m_hist[idx] + 32'd4095;
    idx = (idx + acc + 32'd4102) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4109);
    acc = acc + m_hist[idx] + 32'd4116;
    idx = (idx + acc + 32'd4123) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4130);
    acc = acc + m_hist[idx] + 32'd4137;
    idx = (idx + acc + 32'd4144) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4151);
    acc = acc + m_hist[idx] + 32'd4158;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_130 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4030);
    acc = acc + m_hist[idx] + 32'd4037;
    idx = (idx + acc + 32'd4044) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4051);
    acc = acc + m_hist[idx] + 32'd4058;
    idx = (idx + acc + 32'd4065) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4072);
    acc = acc + m_hist[idx] + 32'd4079;
    idx = (idx + acc + 32'd4086) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4093);
    acc = acc + m_hist[idx] + 32'd4100;
    idx = (idx + acc + 32'd4107) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4114);
    acc = acc + m_hist[idx] + 32'd4121;
    idx = (idx + acc + 32'd4128) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4135);
    acc = acc + m_hist[idx] + 32'd4142;
    idx = (idx + acc + 32'd4149) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4156);
    acc = acc + m_hist[idx] + 32'd4163;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4043);
    acc = acc + m_hist[idx] + 32'd4050;
    idx = (idx + acc + 32'd4057) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4064);
    acc = acc + m_hist[idx] + 32'd4071;
    idx = (idx + acc + 32'd4078) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4085);
    acc = acc + m_hist[idx] + 32'd4092;
    idx = (idx + acc + 32'd4099) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4106);
    acc = acc + m_hist[idx] + 32'd4113;
    idx = (idx + acc + 32'd4120) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4127);
    acc = acc + m_hist[idx] + 32'd4134;
    idx = (idx + acc + 32'd4141) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4148);
    acc = acc + m_hist[idx] + 32'd4155;
    idx = (idx + acc + 32'd4162) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4169);
    acc = acc + m_hist[idx] + 32'd4176;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4056);
    acc = acc + m_hist[idx] + 32'd4063;
    idx = (idx + acc + 32'd4070) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4077);
    acc = acc + m_hist[idx] + 32'd4084;
    idx = (idx + acc + 32'd4091) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4098);
    acc = acc + m_hist[idx] + 32'd4105;
    idx = (idx + acc + 32'd4112) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4119);
    acc = acc + m_hist[idx] + 32'd4126;
    idx = (idx + acc + 32'd4133) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4140);
    acc = acc + m_hist[idx] + 32'd4147;
    idx = (idx + acc + 32'd4154) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4161);
    acc = acc + m_hist[idx] + 32'd4168;
    idx = (idx + acc + 32'd4175) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4182);
    acc = acc + m_hist[idx] + 32'd4189;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_131 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4061);
    acc = acc + m_hist[idx] + 32'd4068;
    idx = (idx + acc + 32'd4075) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4082);
    acc = acc + m_hist[idx] + 32'd4089;
    idx = (idx + acc + 32'd4096) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4103);
    acc = acc + m_hist[idx] + 32'd4110;
    idx = (idx + acc + 32'd4117) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4124);
    acc = acc + m_hist[idx] + 32'd4131;
    idx = (idx + acc + 32'd4138) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4145);
    acc = acc + m_hist[idx] + 32'd4152;
    idx = (idx + acc + 32'd4159) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4166);
    acc = acc + m_hist[idx] + 32'd4173;
    idx = (idx + acc + 32'd4180) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4187);
    acc = acc + m_hist[idx] + 32'd4194;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4074);
    acc = acc + m_hist[idx] + 32'd4081;
    idx = (idx + acc + 32'd4088) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4095);
    acc = acc + m_hist[idx] + 32'd4102;
    idx = (idx + acc + 32'd4109) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4116);
    acc = acc + m_hist[idx] + 32'd4123;
    idx = (idx + acc + 32'd4130) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4137);
    acc = acc + m_hist[idx] + 32'd4144;
    idx = (idx + acc + 32'd4151) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4158);
    acc = acc + m_hist[idx] + 32'd4165;
    idx = (idx + acc + 32'd4172) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4179);
    acc = acc + m_hist[idx] + 32'd4186;
    idx = (idx + acc + 32'd4193) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4200);
    acc = acc + m_hist[idx] + 32'd4207;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4087);
    acc = acc + m_hist[idx] + 32'd4094;
    idx = (idx + acc + 32'd4101) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4108);
    acc = acc + m_hist[idx] + 32'd4115;
    idx = (idx + acc + 32'd4122) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4129);
    acc = acc + m_hist[idx] + 32'd4136;
    idx = (idx + acc + 32'd4143) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4150);
    acc = acc + m_hist[idx] + 32'd4157;
    idx = (idx + acc + 32'd4164) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4171);
    acc = acc + m_hist[idx] + 32'd4178;
    idx = (idx + acc + 32'd4185) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4192);
    acc = acc + m_hist[idx] + 32'd4199;
    idx = (idx + acc + 32'd4206) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4213);
    acc = acc + m_hist[idx] + 32'd4220;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_132 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4092);
    acc = acc + m_hist[idx] + 32'd4099;
    idx = (idx + acc + 32'd4106) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4113);
    acc = acc + m_hist[idx] + 32'd4120;
    idx = (idx + acc + 32'd4127) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4134);
    acc = acc + m_hist[idx] + 32'd4141;
    idx = (idx + acc + 32'd4148) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4155);
    acc = acc + m_hist[idx] + 32'd4162;
    idx = (idx + acc + 32'd4169) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4176);
    acc = acc + m_hist[idx] + 32'd4183;
    idx = (idx + acc + 32'd4190) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4197);
    acc = acc + m_hist[idx] + 32'd4204;
    idx = (idx + acc + 32'd4211) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4218);
    acc = acc + m_hist[idx] + 32'd4225;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4105);
    acc = acc + m_hist[idx] + 32'd4112;
    idx = (idx + acc + 32'd4119) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4126);
    acc = acc + m_hist[idx] + 32'd4133;
    idx = (idx + acc + 32'd4140) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4147);
    acc = acc + m_hist[idx] + 32'd4154;
    idx = (idx + acc + 32'd4161) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4168);
    acc = acc + m_hist[idx] + 32'd4175;
    idx = (idx + acc + 32'd4182) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4189);
    acc = acc + m_hist[idx] + 32'd4196;
    idx = (idx + acc + 32'd4203) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4210);
    acc = acc + m_hist[idx] + 32'd4217;
    idx = (idx + acc + 32'd4224) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4231);
    acc = acc + m_hist[idx] + 32'd4238;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4118);
    acc = acc + m_hist[idx] + 32'd4125;
    idx = (idx + acc + 32'd4132) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4139);
    acc = acc + m_hist[idx] + 32'd4146;
    idx = (idx + acc + 32'd4153) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4160);
    acc = acc + m_hist[idx] + 32'd4167;
    idx = (idx + acc + 32'd4174) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4181);
    acc = acc + m_hist[idx] + 32'd4188;
    idx = (idx + acc + 32'd4195) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4202);
    acc = acc + m_hist[idx] + 32'd4209;
    idx = (idx + acc + 32'd4216) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4223);
    acc = acc + m_hist[idx] + 32'd4230;
    idx = (idx + acc + 32'd4237) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4244);
    acc = acc + m_hist[idx] + 32'd4251;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_133 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4123);
    acc = acc + m_hist[idx] + 32'd4130;
    idx = (idx + acc + 32'd4137) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4144);
    acc = acc + m_hist[idx] + 32'd4151;
    idx = (idx + acc + 32'd4158) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4165);
    acc = acc + m_hist[idx] + 32'd4172;
    idx = (idx + acc + 32'd4179) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4186);
    acc = acc + m_hist[idx] + 32'd4193;
    idx = (idx + acc + 32'd4200) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4207);
    acc = acc + m_hist[idx] + 32'd4214;
    idx = (idx + acc + 32'd4221) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4228);
    acc = acc + m_hist[idx] + 32'd4235;
    idx = (idx + acc + 32'd4242) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4249);
    acc = acc + m_hist[idx] + 32'd4256;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4136);
    acc = acc + m_hist[idx] + 32'd4143;
    idx = (idx + acc + 32'd4150) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4157);
    acc = acc + m_hist[idx] + 32'd4164;
    idx = (idx + acc + 32'd4171) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4178);
    acc = acc + m_hist[idx] + 32'd4185;
    idx = (idx + acc + 32'd4192) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4199);
    acc = acc + m_hist[idx] + 32'd4206;
    idx = (idx + acc + 32'd4213) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4220);
    acc = acc + m_hist[idx] + 32'd4227;
    idx = (idx + acc + 32'd4234) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4241);
    acc = acc + m_hist[idx] + 32'd4248;
    idx = (idx + acc + 32'd4255) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4262);
    acc = acc + m_hist[idx] + 32'd4269;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4149);
    acc = acc + m_hist[idx] + 32'd4156;
    idx = (idx + acc + 32'd4163) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4170);
    acc = acc + m_hist[idx] + 32'd4177;
    idx = (idx + acc + 32'd4184) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4191);
    acc = acc + m_hist[idx] + 32'd4198;
    idx = (idx + acc + 32'd4205) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4212);
    acc = acc + m_hist[idx] + 32'd4219;
    idx = (idx + acc + 32'd4226) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4233);
    acc = acc + m_hist[idx] + 32'd4240;
    idx = (idx + acc + 32'd4247) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4254);
    acc = acc + m_hist[idx] + 32'd4261;
    idx = (idx + acc + 32'd4268) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4275);
    acc = acc + m_hist[idx] + 32'd4282;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_134 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4154);
    acc = acc + m_hist[idx] + 32'd4161;
    idx = (idx + acc + 32'd4168) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4175);
    acc = acc + m_hist[idx] + 32'd4182;
    idx = (idx + acc + 32'd4189) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4196);
    acc = acc + m_hist[idx] + 32'd4203;
    idx = (idx + acc + 32'd4210) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4217);
    acc = acc + m_hist[idx] + 32'd4224;
    idx = (idx + acc + 32'd4231) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4238);
    acc = acc + m_hist[idx] + 32'd4245;
    idx = (idx + acc + 32'd4252) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4259);
    acc = acc + m_hist[idx] + 32'd4266;
    idx = (idx + acc + 32'd4273) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4280);
    acc = acc + m_hist[idx] + 32'd4287;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4167);
    acc = acc + m_hist[idx] + 32'd4174;
    idx = (idx + acc + 32'd4181) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4188);
    acc = acc + m_hist[idx] + 32'd4195;
    idx = (idx + acc + 32'd4202) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4209);
    acc = acc + m_hist[idx] + 32'd4216;
    idx = (idx + acc + 32'd4223) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4230);
    acc = acc + m_hist[idx] + 32'd4237;
    idx = (idx + acc + 32'd4244) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4251);
    acc = acc + m_hist[idx] + 32'd4258;
    idx = (idx + acc + 32'd4265) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4272);
    acc = acc + m_hist[idx] + 32'd4279;
    idx = (idx + acc + 32'd4286) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4293);
    acc = acc + m_hist[idx] + 32'd4300;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4180);
    acc = acc + m_hist[idx] + 32'd4187;
    idx = (idx + acc + 32'd4194) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4201);
    acc = acc + m_hist[idx] + 32'd4208;
    idx = (idx + acc + 32'd4215) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4222);
    acc = acc + m_hist[idx] + 32'd4229;
    idx = (idx + acc + 32'd4236) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4243);
    acc = acc + m_hist[idx] + 32'd4250;
    idx = (idx + acc + 32'd4257) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4264);
    acc = acc + m_hist[idx] + 32'd4271;
    idx = (idx + acc + 32'd4278) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4285);
    acc = acc + m_hist[idx] + 32'd4292;
    idx = (idx + acc + 32'd4299) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4306);
    acc = acc + m_hist[idx] + 32'd4313;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_135 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4185);
    acc = acc + m_hist[idx] + 32'd4192;
    idx = (idx + acc + 32'd4199) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4206);
    acc = acc + m_hist[idx] + 32'd4213;
    idx = (idx + acc + 32'd4220) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4227);
    acc = acc + m_hist[idx] + 32'd4234;
    idx = (idx + acc + 32'd4241) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4248);
    acc = acc + m_hist[idx] + 32'd4255;
    idx = (idx + acc + 32'd4262) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4269);
    acc = acc + m_hist[idx] + 32'd4276;
    idx = (idx + acc + 32'd4283) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4290);
    acc = acc + m_hist[idx] + 32'd4297;
    idx = (idx + acc + 32'd4304) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4311);
    acc = acc + m_hist[idx] + 32'd4318;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4198);
    acc = acc + m_hist[idx] + 32'd4205;
    idx = (idx + acc + 32'd4212) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4219);
    acc = acc + m_hist[idx] + 32'd4226;
    idx = (idx + acc + 32'd4233) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4240);
    acc = acc + m_hist[idx] + 32'd4247;
    idx = (idx + acc + 32'd4254) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4261);
    acc = acc + m_hist[idx] + 32'd4268;
    idx = (idx + acc + 32'd4275) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4282);
    acc = acc + m_hist[idx] + 32'd4289;
    idx = (idx + acc + 32'd4296) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4303);
    acc = acc + m_hist[idx] + 32'd4310;
    idx = (idx + acc + 32'd4317) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4324);
    acc = acc + m_hist[idx] + 32'd4331;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4211);
    acc = acc + m_hist[idx] + 32'd4218;
    idx = (idx + acc + 32'd4225) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4232);
    acc = acc + m_hist[idx] + 32'd4239;
    idx = (idx + acc + 32'd4246) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4253);
    acc = acc + m_hist[idx] + 32'd4260;
    idx = (idx + acc + 32'd4267) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4274);
    acc = acc + m_hist[idx] + 32'd4281;
    idx = (idx + acc + 32'd4288) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4295);
    acc = acc + m_hist[idx] + 32'd4302;
    idx = (idx + acc + 32'd4309) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4316);
    acc = acc + m_hist[idx] + 32'd4323;
    idx = (idx + acc + 32'd4330) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4337);
    acc = acc + m_hist[idx] + 32'd4344;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_136 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4216);
    acc = acc + m_hist[idx] + 32'd4223;
    idx = (idx + acc + 32'd4230) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4237);
    acc = acc + m_hist[idx] + 32'd4244;
    idx = (idx + acc + 32'd4251) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4258);
    acc = acc + m_hist[idx] + 32'd4265;
    idx = (idx + acc + 32'd4272) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4279);
    acc = acc + m_hist[idx] + 32'd4286;
    idx = (idx + acc + 32'd4293) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4300);
    acc = acc + m_hist[idx] + 32'd4307;
    idx = (idx + acc + 32'd4314) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4321);
    acc = acc + m_hist[idx] + 32'd4328;
    idx = (idx + acc + 32'd4335) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4342);
    acc = acc + m_hist[idx] + 32'd4349;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4229);
    acc = acc + m_hist[idx] + 32'd4236;
    idx = (idx + acc + 32'd4243) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4250);
    acc = acc + m_hist[idx] + 32'd4257;
    idx = (idx + acc + 32'd4264) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4271);
    acc = acc + m_hist[idx] + 32'd4278;
    idx = (idx + acc + 32'd4285) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4292);
    acc = acc + m_hist[idx] + 32'd4299;
    idx = (idx + acc + 32'd4306) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4313);
    acc = acc + m_hist[idx] + 32'd4320;
    idx = (idx + acc + 32'd4327) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4334);
    acc = acc + m_hist[idx] + 32'd4341;
    idx = (idx + acc + 32'd4348) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4355);
    acc = acc + m_hist[idx] + 32'd4362;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4242);
    acc = acc + m_hist[idx] + 32'd4249;
    idx = (idx + acc + 32'd4256) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4263);
    acc = acc + m_hist[idx] + 32'd4270;
    idx = (idx + acc + 32'd4277) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4284);
    acc = acc + m_hist[idx] + 32'd4291;
    idx = (idx + acc + 32'd4298) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4305);
    acc = acc + m_hist[idx] + 32'd4312;
    idx = (idx + acc + 32'd4319) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4326);
    acc = acc + m_hist[idx] + 32'd4333;
    idx = (idx + acc + 32'd4340) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4347);
    acc = acc + m_hist[idx] + 32'd4354;
    idx = (idx + acc + 32'd4361) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4368);
    acc = acc + m_hist[idx] + 32'd4375;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_137 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4247);
    acc = acc + m_hist[idx] + 32'd4254;
    idx = (idx + acc + 32'd4261) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4268);
    acc = acc + m_hist[idx] + 32'd4275;
    idx = (idx + acc + 32'd4282) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4289);
    acc = acc + m_hist[idx] + 32'd4296;
    idx = (idx + acc + 32'd4303) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4310);
    acc = acc + m_hist[idx] + 32'd4317;
    idx = (idx + acc + 32'd4324) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4331);
    acc = acc + m_hist[idx] + 32'd4338;
    idx = (idx + acc + 32'd4345) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4352);
    acc = acc + m_hist[idx] + 32'd4359;
    idx = (idx + acc + 32'd4366) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4373);
    acc = acc + m_hist[idx] + 32'd4380;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4260);
    acc = acc + m_hist[idx] + 32'd4267;
    idx = (idx + acc + 32'd4274) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4281);
    acc = acc + m_hist[idx] + 32'd4288;
    idx = (idx + acc + 32'd4295) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4302);
    acc = acc + m_hist[idx] + 32'd4309;
    idx = (idx + acc + 32'd4316) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4323);
    acc = acc + m_hist[idx] + 32'd4330;
    idx = (idx + acc + 32'd4337) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4344);
    acc = acc + m_hist[idx] + 32'd4351;
    idx = (idx + acc + 32'd4358) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4365);
    acc = acc + m_hist[idx] + 32'd4372;
    idx = (idx + acc + 32'd4379) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4386);
    acc = acc + m_hist[idx] + 32'd4393;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4273);
    acc = acc + m_hist[idx] + 32'd4280;
    idx = (idx + acc + 32'd4287) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4294);
    acc = acc + m_hist[idx] + 32'd4301;
    idx = (idx + acc + 32'd4308) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4315);
    acc = acc + m_hist[idx] + 32'd4322;
    idx = (idx + acc + 32'd4329) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4336);
    acc = acc + m_hist[idx] + 32'd4343;
    idx = (idx + acc + 32'd4350) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4357);
    acc = acc + m_hist[idx] + 32'd4364;
    idx = (idx + acc + 32'd4371) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4378);
    acc = acc + m_hist[idx] + 32'd4385;
    idx = (idx + acc + 32'd4392) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4399);
    acc = acc + m_hist[idx] + 32'd4406;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_138 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4278);
    acc = acc + m_hist[idx] + 32'd4285;
    idx = (idx + acc + 32'd4292) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4299);
    acc = acc + m_hist[idx] + 32'd4306;
    idx = (idx + acc + 32'd4313) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4320);
    acc = acc + m_hist[idx] + 32'd4327;
    idx = (idx + acc + 32'd4334) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4341);
    acc = acc + m_hist[idx] + 32'd4348;
    idx = (idx + acc + 32'd4355) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4362);
    acc = acc + m_hist[idx] + 32'd4369;
    idx = (idx + acc + 32'd4376) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4383);
    acc = acc + m_hist[idx] + 32'd4390;
    idx = (idx + acc + 32'd4397) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4404);
    acc = acc + m_hist[idx] + 32'd4411;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4291);
    acc = acc + m_hist[idx] + 32'd4298;
    idx = (idx + acc + 32'd4305) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4312);
    acc = acc + m_hist[idx] + 32'd4319;
    idx = (idx + acc + 32'd4326) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4333);
    acc = acc + m_hist[idx] + 32'd4340;
    idx = (idx + acc + 32'd4347) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4354);
    acc = acc + m_hist[idx] + 32'd4361;
    idx = (idx + acc + 32'd4368) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4375);
    acc = acc + m_hist[idx] + 32'd4382;
    idx = (idx + acc + 32'd4389) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4396);
    acc = acc + m_hist[idx] + 32'd4403;
    idx = (idx + acc + 32'd4410) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4417);
    acc = acc + m_hist[idx] + 32'd4424;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4304);
    acc = acc + m_hist[idx] + 32'd4311;
    idx = (idx + acc + 32'd4318) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4325);
    acc = acc + m_hist[idx] + 32'd4332;
    idx = (idx + acc + 32'd4339) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4346);
    acc = acc + m_hist[idx] + 32'd4353;
    idx = (idx + acc + 32'd4360) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4367);
    acc = acc + m_hist[idx] + 32'd4374;
    idx = (idx + acc + 32'd4381) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4388);
    acc = acc + m_hist[idx] + 32'd4395;
    idx = (idx + acc + 32'd4402) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4409);
    acc = acc + m_hist[idx] + 32'd4416;
    idx = (idx + acc + 32'd4423) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4430);
    acc = acc + m_hist[idx] + 32'd4437;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_139 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4309);
    acc = acc + m_hist[idx] + 32'd4316;
    idx = (idx + acc + 32'd4323) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4330);
    acc = acc + m_hist[idx] + 32'd4337;
    idx = (idx + acc + 32'd4344) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4351);
    acc = acc + m_hist[idx] + 32'd4358;
    idx = (idx + acc + 32'd4365) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4372);
    acc = acc + m_hist[idx] + 32'd4379;
    idx = (idx + acc + 32'd4386) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4393);
    acc = acc + m_hist[idx] + 32'd4400;
    idx = (idx + acc + 32'd4407) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4414);
    acc = acc + m_hist[idx] + 32'd4421;
    idx = (idx + acc + 32'd4428) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4435);
    acc = acc + m_hist[idx] + 32'd4442;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4322);
    acc = acc + m_hist[idx] + 32'd4329;
    idx = (idx + acc + 32'd4336) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4343);
    acc = acc + m_hist[idx] + 32'd4350;
    idx = (idx + acc + 32'd4357) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4364);
    acc = acc + m_hist[idx] + 32'd4371;
    idx = (idx + acc + 32'd4378) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4385);
    acc = acc + m_hist[idx] + 32'd4392;
    idx = (idx + acc + 32'd4399) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4406);
    acc = acc + m_hist[idx] + 32'd4413;
    idx = (idx + acc + 32'd4420) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4427);
    acc = acc + m_hist[idx] + 32'd4434;
    idx = (idx + acc + 32'd4441) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4448);
    acc = acc + m_hist[idx] + 32'd4455;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4335);
    acc = acc + m_hist[idx] + 32'd4342;
    idx = (idx + acc + 32'd4349) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4356);
    acc = acc + m_hist[idx] + 32'd4363;
    idx = (idx + acc + 32'd4370) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4377);
    acc = acc + m_hist[idx] + 32'd4384;
    idx = (idx + acc + 32'd4391) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4398);
    acc = acc + m_hist[idx] + 32'd4405;
    idx = (idx + acc + 32'd4412) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4419);
    acc = acc + m_hist[idx] + 32'd4426;
    idx = (idx + acc + 32'd4433) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4440);
    acc = acc + m_hist[idx] + 32'd4447;
    idx = (idx + acc + 32'd4454) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4461);
    acc = acc + m_hist[idx] + 32'd4468;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_140 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4340);
    acc = acc + m_hist[idx] + 32'd4347;
    idx = (idx + acc + 32'd4354) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4361);
    acc = acc + m_hist[idx] + 32'd4368;
    idx = (idx + acc + 32'd4375) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4382);
    acc = acc + m_hist[idx] + 32'd4389;
    idx = (idx + acc + 32'd4396) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4403);
    acc = acc + m_hist[idx] + 32'd4410;
    idx = (idx + acc + 32'd4417) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4424);
    acc = acc + m_hist[idx] + 32'd4431;
    idx = (idx + acc + 32'd4438) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4445);
    acc = acc + m_hist[idx] + 32'd4452;
    idx = (idx + acc + 32'd4459) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4466);
    acc = acc + m_hist[idx] + 32'd4473;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4353);
    acc = acc + m_hist[idx] + 32'd4360;
    idx = (idx + acc + 32'd4367) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4374);
    acc = acc + m_hist[idx] + 32'd4381;
    idx = (idx + acc + 32'd4388) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4395);
    acc = acc + m_hist[idx] + 32'd4402;
    idx = (idx + acc + 32'd4409) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4416);
    acc = acc + m_hist[idx] + 32'd4423;
    idx = (idx + acc + 32'd4430) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4437);
    acc = acc + m_hist[idx] + 32'd4444;
    idx = (idx + acc + 32'd4451) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4458);
    acc = acc + m_hist[idx] + 32'd4465;
    idx = (idx + acc + 32'd4472) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4479);
    acc = acc + m_hist[idx] + 32'd4486;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4366);
    acc = acc + m_hist[idx] + 32'd4373;
    idx = (idx + acc + 32'd4380) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4387);
    acc = acc + m_hist[idx] + 32'd4394;
    idx = (idx + acc + 32'd4401) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4408);
    acc = acc + m_hist[idx] + 32'd4415;
    idx = (idx + acc + 32'd4422) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4429);
    acc = acc + m_hist[idx] + 32'd4436;
    idx = (idx + acc + 32'd4443) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4450);
    acc = acc + m_hist[idx] + 32'd4457;
    idx = (idx + acc + 32'd4464) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4471);
    acc = acc + m_hist[idx] + 32'd4478;
    idx = (idx + acc + 32'd4485) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4492);
    acc = acc + m_hist[idx] + 32'd4499;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_141 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4371);
    acc = acc + m_hist[idx] + 32'd4378;
    idx = (idx + acc + 32'd4385) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4392);
    acc = acc + m_hist[idx] + 32'd4399;
    idx = (idx + acc + 32'd4406) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4413);
    acc = acc + m_hist[idx] + 32'd4420;
    idx = (idx + acc + 32'd4427) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4434);
    acc = acc + m_hist[idx] + 32'd4441;
    idx = (idx + acc + 32'd4448) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4455);
    acc = acc + m_hist[idx] + 32'd4462;
    idx = (idx + acc + 32'd4469) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4476);
    acc = acc + m_hist[idx] + 32'd4483;
    idx = (idx + acc + 32'd4490) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4497);
    acc = acc + m_hist[idx] + 32'd4504;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4384);
    acc = acc + m_hist[idx] + 32'd4391;
    idx = (idx + acc + 32'd4398) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4405);
    acc = acc + m_hist[idx] + 32'd4412;
    idx = (idx + acc + 32'd4419) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4426);
    acc = acc + m_hist[idx] + 32'd4433;
    idx = (idx + acc + 32'd4440) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4447);
    acc = acc + m_hist[idx] + 32'd4454;
    idx = (idx + acc + 32'd4461) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4468);
    acc = acc + m_hist[idx] + 32'd4475;
    idx = (idx + acc + 32'd4482) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4489);
    acc = acc + m_hist[idx] + 32'd4496;
    idx = (idx + acc + 32'd4503) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4510);
    acc = acc + m_hist[idx] + 32'd4517;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4397);
    acc = acc + m_hist[idx] + 32'd4404;
    idx = (idx + acc + 32'd4411) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4418);
    acc = acc + m_hist[idx] + 32'd4425;
    idx = (idx + acc + 32'd4432) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4439);
    acc = acc + m_hist[idx] + 32'd4446;
    idx = (idx + acc + 32'd4453) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4460);
    acc = acc + m_hist[idx] + 32'd4467;
    idx = (idx + acc + 32'd4474) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4481);
    acc = acc + m_hist[idx] + 32'd4488;
    idx = (idx + acc + 32'd4495) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4502);
    acc = acc + m_hist[idx] + 32'd4509;
    idx = (idx + acc + 32'd4516) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4523);
    acc = acc + m_hist[idx] + 32'd4530;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_142 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4402);
    acc = acc + m_hist[idx] + 32'd4409;
    idx = (idx + acc + 32'd4416) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4423);
    acc = acc + m_hist[idx] + 32'd4430;
    idx = (idx + acc + 32'd4437) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4444);
    acc = acc + m_hist[idx] + 32'd4451;
    idx = (idx + acc + 32'd4458) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4465);
    acc = acc + m_hist[idx] + 32'd4472;
    idx = (idx + acc + 32'd4479) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4486);
    acc = acc + m_hist[idx] + 32'd4493;
    idx = (idx + acc + 32'd4500) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4507);
    acc = acc + m_hist[idx] + 32'd4514;
    idx = (idx + acc + 32'd4521) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4528);
    acc = acc + m_hist[idx] + 32'd4535;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4415);
    acc = acc + m_hist[idx] + 32'd4422;
    idx = (idx + acc + 32'd4429) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4436);
    acc = acc + m_hist[idx] + 32'd4443;
    idx = (idx + acc + 32'd4450) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4457);
    acc = acc + m_hist[idx] + 32'd4464;
    idx = (idx + acc + 32'd4471) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4478);
    acc = acc + m_hist[idx] + 32'd4485;
    idx = (idx + acc + 32'd4492) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4499);
    acc = acc + m_hist[idx] + 32'd4506;
    idx = (idx + acc + 32'd4513) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4520);
    acc = acc + m_hist[idx] + 32'd4527;
    idx = (idx + acc + 32'd4534) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4541);
    acc = acc + m_hist[idx] + 32'd4548;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4428);
    acc = acc + m_hist[idx] + 32'd4435;
    idx = (idx + acc + 32'd4442) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4449);
    acc = acc + m_hist[idx] + 32'd4456;
    idx = (idx + acc + 32'd4463) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4470);
    acc = acc + m_hist[idx] + 32'd4477;
    idx = (idx + acc + 32'd4484) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4491);
    acc = acc + m_hist[idx] + 32'd4498;
    idx = (idx + acc + 32'd4505) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4512);
    acc = acc + m_hist[idx] + 32'd4519;
    idx = (idx + acc + 32'd4526) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4533);
    acc = acc + m_hist[idx] + 32'd4540;
    idx = (idx + acc + 32'd4547) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4554);
    acc = acc + m_hist[idx] + 32'd4561;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_143 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4433);
    acc = acc + m_hist[idx] + 32'd4440;
    idx = (idx + acc + 32'd4447) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4454);
    acc = acc + m_hist[idx] + 32'd4461;
    idx = (idx + acc + 32'd4468) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4475);
    acc = acc + m_hist[idx] + 32'd4482;
    idx = (idx + acc + 32'd4489) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4496);
    acc = acc + m_hist[idx] + 32'd4503;
    idx = (idx + acc + 32'd4510) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4517);
    acc = acc + m_hist[idx] + 32'd4524;
    idx = (idx + acc + 32'd4531) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4538);
    acc = acc + m_hist[idx] + 32'd4545;
    idx = (idx + acc + 32'd4552) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4559);
    acc = acc + m_hist[idx] + 32'd4566;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4446);
    acc = acc + m_hist[idx] + 32'd4453;
    idx = (idx + acc + 32'd4460) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4467);
    acc = acc + m_hist[idx] + 32'd4474;
    idx = (idx + acc + 32'd4481) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4488);
    acc = acc + m_hist[idx] + 32'd4495;
    idx = (idx + acc + 32'd4502) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4509);
    acc = acc + m_hist[idx] + 32'd4516;
    idx = (idx + acc + 32'd4523) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4530);
    acc = acc + m_hist[idx] + 32'd4537;
    idx = (idx + acc + 32'd4544) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4551);
    acc = acc + m_hist[idx] + 32'd4558;
    idx = (idx + acc + 32'd4565) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4572);
    acc = acc + m_hist[idx] + 32'd4579;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4459);
    acc = acc + m_hist[idx] + 32'd4466;
    idx = (idx + acc + 32'd4473) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4480);
    acc = acc + m_hist[idx] + 32'd4487;
    idx = (idx + acc + 32'd4494) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4501);
    acc = acc + m_hist[idx] + 32'd4508;
    idx = (idx + acc + 32'd4515) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4522);
    acc = acc + m_hist[idx] + 32'd4529;
    idx = (idx + acc + 32'd4536) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4543);
    acc = acc + m_hist[idx] + 32'd4550;
    idx = (idx + acc + 32'd4557) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4564);
    acc = acc + m_hist[idx] + 32'd4571;
    idx = (idx + acc + 32'd4578) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4585);
    acc = acc + m_hist[idx] + 32'd4592;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_144 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4464);
    acc = acc + m_hist[idx] + 32'd4471;
    idx = (idx + acc + 32'd4478) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4485);
    acc = acc + m_hist[idx] + 32'd4492;
    idx = (idx + acc + 32'd4499) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4506);
    acc = acc + m_hist[idx] + 32'd4513;
    idx = (idx + acc + 32'd4520) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4527);
    acc = acc + m_hist[idx] + 32'd4534;
    idx = (idx + acc + 32'd4541) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4548);
    acc = acc + m_hist[idx] + 32'd4555;
    idx = (idx + acc + 32'd4562) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4569);
    acc = acc + m_hist[idx] + 32'd4576;
    idx = (idx + acc + 32'd4583) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4590);
    acc = acc + m_hist[idx] + 32'd4597;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4477);
    acc = acc + m_hist[idx] + 32'd4484;
    idx = (idx + acc + 32'd4491) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4498);
    acc = acc + m_hist[idx] + 32'd4505;
    idx = (idx + acc + 32'd4512) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4519);
    acc = acc + m_hist[idx] + 32'd4526;
    idx = (idx + acc + 32'd4533) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4540);
    acc = acc + m_hist[idx] + 32'd4547;
    idx = (idx + acc + 32'd4554) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4561);
    acc = acc + m_hist[idx] + 32'd4568;
    idx = (idx + acc + 32'd4575) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4582);
    acc = acc + m_hist[idx] + 32'd4589;
    idx = (idx + acc + 32'd4596) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4603);
    acc = acc + m_hist[idx] + 32'd4610;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4490);
    acc = acc + m_hist[idx] + 32'd4497;
    idx = (idx + acc + 32'd4504) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4511);
    acc = acc + m_hist[idx] + 32'd4518;
    idx = (idx + acc + 32'd4525) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4532);
    acc = acc + m_hist[idx] + 32'd4539;
    idx = (idx + acc + 32'd4546) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4553);
    acc = acc + m_hist[idx] + 32'd4560;
    idx = (idx + acc + 32'd4567) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4574);
    acc = acc + m_hist[idx] + 32'd4581;
    idx = (idx + acc + 32'd4588) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4595);
    acc = acc + m_hist[idx] + 32'd4602;
    idx = (idx + acc + 32'd4609) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4616);
    acc = acc + m_hist[idx] + 32'd4623;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_145 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4495);
    acc = acc + m_hist[idx] + 32'd4502;
    idx = (idx + acc + 32'd4509) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4516);
    acc = acc + m_hist[idx] + 32'd4523;
    idx = (idx + acc + 32'd4530) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4537);
    acc = acc + m_hist[idx] + 32'd4544;
    idx = (idx + acc + 32'd4551) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4558);
    acc = acc + m_hist[idx] + 32'd4565;
    idx = (idx + acc + 32'd4572) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4579);
    acc = acc + m_hist[idx] + 32'd4586;
    idx = (idx + acc + 32'd4593) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4600);
    acc = acc + m_hist[idx] + 32'd4607;
    idx = (idx + acc + 32'd4614) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4621);
    acc = acc + m_hist[idx] + 32'd4628;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4508);
    acc = acc + m_hist[idx] + 32'd4515;
    idx = (idx + acc + 32'd4522) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4529);
    acc = acc + m_hist[idx] + 32'd4536;
    idx = (idx + acc + 32'd4543) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4550);
    acc = acc + m_hist[idx] + 32'd4557;
    idx = (idx + acc + 32'd4564) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4571);
    acc = acc + m_hist[idx] + 32'd4578;
    idx = (idx + acc + 32'd4585) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4592);
    acc = acc + m_hist[idx] + 32'd4599;
    idx = (idx + acc + 32'd4606) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4613);
    acc = acc + m_hist[idx] + 32'd4620;
    idx = (idx + acc + 32'd4627) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4634);
    acc = acc + m_hist[idx] + 32'd4641;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4521);
    acc = acc + m_hist[idx] + 32'd4528;
    idx = (idx + acc + 32'd4535) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4542);
    acc = acc + m_hist[idx] + 32'd4549;
    idx = (idx + acc + 32'd4556) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4563);
    acc = acc + m_hist[idx] + 32'd4570;
    idx = (idx + acc + 32'd4577) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4584);
    acc = acc + m_hist[idx] + 32'd4591;
    idx = (idx + acc + 32'd4598) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4605);
    acc = acc + m_hist[idx] + 32'd4612;
    idx = (idx + acc + 32'd4619) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4626);
    acc = acc + m_hist[idx] + 32'd4633;
    idx = (idx + acc + 32'd4640) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4647);
    acc = acc + m_hist[idx] + 32'd4654;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_146 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4526);
    acc = acc + m_hist[idx] + 32'd4533;
    idx = (idx + acc + 32'd4540) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4547);
    acc = acc + m_hist[idx] + 32'd4554;
    idx = (idx + acc + 32'd4561) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4568);
    acc = acc + m_hist[idx] + 32'd4575;
    idx = (idx + acc + 32'd4582) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4589);
    acc = acc + m_hist[idx] + 32'd4596;
    idx = (idx + acc + 32'd4603) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4610);
    acc = acc + m_hist[idx] + 32'd4617;
    idx = (idx + acc + 32'd4624) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4631);
    acc = acc + m_hist[idx] + 32'd4638;
    idx = (idx + acc + 32'd4645) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4652);
    acc = acc + m_hist[idx] + 32'd4659;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4539);
    acc = acc + m_hist[idx] + 32'd4546;
    idx = (idx + acc + 32'd4553) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4560);
    acc = acc + m_hist[idx] + 32'd4567;
    idx = (idx + acc + 32'd4574) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4581);
    acc = acc + m_hist[idx] + 32'd4588;
    idx = (idx + acc + 32'd4595) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4602);
    acc = acc + m_hist[idx] + 32'd4609;
    idx = (idx + acc + 32'd4616) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4623);
    acc = acc + m_hist[idx] + 32'd4630;
    idx = (idx + acc + 32'd4637) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4644);
    acc = acc + m_hist[idx] + 32'd4651;
    idx = (idx + acc + 32'd4658) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4665);
    acc = acc + m_hist[idx] + 32'd4672;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4552);
    acc = acc + m_hist[idx] + 32'd4559;
    idx = (idx + acc + 32'd4566) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4573);
    acc = acc + m_hist[idx] + 32'd4580;
    idx = (idx + acc + 32'd4587) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4594);
    acc = acc + m_hist[idx] + 32'd4601;
    idx = (idx + acc + 32'd4608) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4615);
    acc = acc + m_hist[idx] + 32'd4622;
    idx = (idx + acc + 32'd4629) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4636);
    acc = acc + m_hist[idx] + 32'd4643;
    idx = (idx + acc + 32'd4650) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4657);
    acc = acc + m_hist[idx] + 32'd4664;
    idx = (idx + acc + 32'd4671) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4678);
    acc = acc + m_hist[idx] + 32'd4685;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_147 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4557);
    acc = acc + m_hist[idx] + 32'd4564;
    idx = (idx + acc + 32'd4571) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4578);
    acc = acc + m_hist[idx] + 32'd4585;
    idx = (idx + acc + 32'd4592) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4599);
    acc = acc + m_hist[idx] + 32'd4606;
    idx = (idx + acc + 32'd4613) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4620);
    acc = acc + m_hist[idx] + 32'd4627;
    idx = (idx + acc + 32'd4634) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4641);
    acc = acc + m_hist[idx] + 32'd4648;
    idx = (idx + acc + 32'd4655) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4662);
    acc = acc + m_hist[idx] + 32'd4669;
    idx = (idx + acc + 32'd4676) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4683);
    acc = acc + m_hist[idx] + 32'd4690;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4570);
    acc = acc + m_hist[idx] + 32'd4577;
    idx = (idx + acc + 32'd4584) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4591);
    acc = acc + m_hist[idx] + 32'd4598;
    idx = (idx + acc + 32'd4605) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4612);
    acc = acc + m_hist[idx] + 32'd4619;
    idx = (idx + acc + 32'd4626) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4633);
    acc = acc + m_hist[idx] + 32'd4640;
    idx = (idx + acc + 32'd4647) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4654);
    acc = acc + m_hist[idx] + 32'd4661;
    idx = (idx + acc + 32'd4668) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4675);
    acc = acc + m_hist[idx] + 32'd4682;
    idx = (idx + acc + 32'd4689) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4696);
    acc = acc + m_hist[idx] + 32'd4703;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4583);
    acc = acc + m_hist[idx] + 32'd4590;
    idx = (idx + acc + 32'd4597) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4604);
    acc = acc + m_hist[idx] + 32'd4611;
    idx = (idx + acc + 32'd4618) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4625);
    acc = acc + m_hist[idx] + 32'd4632;
    idx = (idx + acc + 32'd4639) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4646);
    acc = acc + m_hist[idx] + 32'd4653;
    idx = (idx + acc + 32'd4660) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4667);
    acc = acc + m_hist[idx] + 32'd4674;
    idx = (idx + acc + 32'd4681) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4688);
    acc = acc + m_hist[idx] + 32'd4695;
    idx = (idx + acc + 32'd4702) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4709);
    acc = acc + m_hist[idx] + 32'd4716;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_148 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4588);
    acc = acc + m_hist[idx] + 32'd4595;
    idx = (idx + acc + 32'd4602) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4609);
    acc = acc + m_hist[idx] + 32'd4616;
    idx = (idx + acc + 32'd4623) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4630);
    acc = acc + m_hist[idx] + 32'd4637;
    idx = (idx + acc + 32'd4644) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4651);
    acc = acc + m_hist[idx] + 32'd4658;
    idx = (idx + acc + 32'd4665) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4672);
    acc = acc + m_hist[idx] + 32'd4679;
    idx = (idx + acc + 32'd4686) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4693);
    acc = acc + m_hist[idx] + 32'd4700;
    idx = (idx + acc + 32'd4707) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4714);
    acc = acc + m_hist[idx] + 32'd4721;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4601);
    acc = acc + m_hist[idx] + 32'd4608;
    idx = (idx + acc + 32'd4615) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4622);
    acc = acc + m_hist[idx] + 32'd4629;
    idx = (idx + acc + 32'd4636) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4643);
    acc = acc + m_hist[idx] + 32'd4650;
    idx = (idx + acc + 32'd4657) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4664);
    acc = acc + m_hist[idx] + 32'd4671;
    idx = (idx + acc + 32'd4678) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4685);
    acc = acc + m_hist[idx] + 32'd4692;
    idx = (idx + acc + 32'd4699) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4706);
    acc = acc + m_hist[idx] + 32'd4713;
    idx = (idx + acc + 32'd4720) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4727);
    acc = acc + m_hist[idx] + 32'd4734;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4614);
    acc = acc + m_hist[idx] + 32'd4621;
    idx = (idx + acc + 32'd4628) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4635);
    acc = acc + m_hist[idx] + 32'd4642;
    idx = (idx + acc + 32'd4649) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4656);
    acc = acc + m_hist[idx] + 32'd4663;
    idx = (idx + acc + 32'd4670) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4677);
    acc = acc + m_hist[idx] + 32'd4684;
    idx = (idx + acc + 32'd4691) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4698);
    acc = acc + m_hist[idx] + 32'd4705;
    idx = (idx + acc + 32'd4712) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4719);
    acc = acc + m_hist[idx] + 32'd4726;
    idx = (idx + acc + 32'd4733) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4740);
    acc = acc + m_hist[idx] + 32'd4747;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_149 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4619);
    acc = acc + m_hist[idx] + 32'd4626;
    idx = (idx + acc + 32'd4633) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4640);
    acc = acc + m_hist[idx] + 32'd4647;
    idx = (idx + acc + 32'd4654) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4661);
    acc = acc + m_hist[idx] + 32'd4668;
    idx = (idx + acc + 32'd4675) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4682);
    acc = acc + m_hist[idx] + 32'd4689;
    idx = (idx + acc + 32'd4696) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4703);
    acc = acc + m_hist[idx] + 32'd4710;
    idx = (idx + acc + 32'd4717) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4724);
    acc = acc + m_hist[idx] + 32'd4731;
    idx = (idx + acc + 32'd4738) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4745);
    acc = acc + m_hist[idx] + 32'd4752;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4632);
    acc = acc + m_hist[idx] + 32'd4639;
    idx = (idx + acc + 32'd4646) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4653);
    acc = acc + m_hist[idx] + 32'd4660;
    idx = (idx + acc + 32'd4667) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4674);
    acc = acc + m_hist[idx] + 32'd4681;
    idx = (idx + acc + 32'd4688) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4695);
    acc = acc + m_hist[idx] + 32'd4702;
    idx = (idx + acc + 32'd4709) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4716);
    acc = acc + m_hist[idx] + 32'd4723;
    idx = (idx + acc + 32'd4730) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4737);
    acc = acc + m_hist[idx] + 32'd4744;
    idx = (idx + acc + 32'd4751) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4758);
    acc = acc + m_hist[idx] + 32'd4765;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4645);
    acc = acc + m_hist[idx] + 32'd4652;
    idx = (idx + acc + 32'd4659) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4666);
    acc = acc + m_hist[idx] + 32'd4673;
    idx = (idx + acc + 32'd4680) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4687);
    acc = acc + m_hist[idx] + 32'd4694;
    idx = (idx + acc + 32'd4701) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4708);
    acc = acc + m_hist[idx] + 32'd4715;
    idx = (idx + acc + 32'd4722) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4729);
    acc = acc + m_hist[idx] + 32'd4736;
    idx = (idx + acc + 32'd4743) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4750);
    acc = acc + m_hist[idx] + 32'd4757;
    idx = (idx + acc + 32'd4764) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4771);
    acc = acc + m_hist[idx] + 32'd4778;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_150 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4650);
    acc = acc + m_hist[idx] + 32'd4657;
    idx = (idx + acc + 32'd4664) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4671);
    acc = acc + m_hist[idx] + 32'd4678;
    idx = (idx + acc + 32'd4685) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4692);
    acc = acc + m_hist[idx] + 32'd4699;
    idx = (idx + acc + 32'd4706) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4713);
    acc = acc + m_hist[idx] + 32'd4720;
    idx = (idx + acc + 32'd4727) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4734);
    acc = acc + m_hist[idx] + 32'd4741;
    idx = (idx + acc + 32'd4748) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4755);
    acc = acc + m_hist[idx] + 32'd4762;
    idx = (idx + acc + 32'd4769) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4776);
    acc = acc + m_hist[idx] + 32'd4783;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4663);
    acc = acc + m_hist[idx] + 32'd4670;
    idx = (idx + acc + 32'd4677) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4684);
    acc = acc + m_hist[idx] + 32'd4691;
    idx = (idx + acc + 32'd4698) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4705);
    acc = acc + m_hist[idx] + 32'd4712;
    idx = (idx + acc + 32'd4719) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4726);
    acc = acc + m_hist[idx] + 32'd4733;
    idx = (idx + acc + 32'd4740) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4747);
    acc = acc + m_hist[idx] + 32'd4754;
    idx = (idx + acc + 32'd4761) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4768);
    acc = acc + m_hist[idx] + 32'd4775;
    idx = (idx + acc + 32'd4782) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4789);
    acc = acc + m_hist[idx] + 32'd4796;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4676);
    acc = acc + m_hist[idx] + 32'd4683;
    idx = (idx + acc + 32'd4690) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4697);
    acc = acc + m_hist[idx] + 32'd4704;
    idx = (idx + acc + 32'd4711) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4718);
    acc = acc + m_hist[idx] + 32'd4725;
    idx = (idx + acc + 32'd4732) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4739);
    acc = acc + m_hist[idx] + 32'd4746;
    idx = (idx + acc + 32'd4753) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4760);
    acc = acc + m_hist[idx] + 32'd4767;
    idx = (idx + acc + 32'd4774) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4781);
    acc = acc + m_hist[idx] + 32'd4788;
    idx = (idx + acc + 32'd4795) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4802);
    acc = acc + m_hist[idx] + 32'd4809;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_151 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4681);
    acc = acc + m_hist[idx] + 32'd4688;
    idx = (idx + acc + 32'd4695) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4702);
    acc = acc + m_hist[idx] + 32'd4709;
    idx = (idx + acc + 32'd4716) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4723);
    acc = acc + m_hist[idx] + 32'd4730;
    idx = (idx + acc + 32'd4737) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4744);
    acc = acc + m_hist[idx] + 32'd4751;
    idx = (idx + acc + 32'd4758) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4765);
    acc = acc + m_hist[idx] + 32'd4772;
    idx = (idx + acc + 32'd4779) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4786);
    acc = acc + m_hist[idx] + 32'd4793;
    idx = (idx + acc + 32'd4800) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4807);
    acc = acc + m_hist[idx] + 32'd4814;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4694);
    acc = acc + m_hist[idx] + 32'd4701;
    idx = (idx + acc + 32'd4708) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4715);
    acc = acc + m_hist[idx] + 32'd4722;
    idx = (idx + acc + 32'd4729) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4736);
    acc = acc + m_hist[idx] + 32'd4743;
    idx = (idx + acc + 32'd4750) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4757);
    acc = acc + m_hist[idx] + 32'd4764;
    idx = (idx + acc + 32'd4771) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4778);
    acc = acc + m_hist[idx] + 32'd4785;
    idx = (idx + acc + 32'd4792) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4799);
    acc = acc + m_hist[idx] + 32'd4806;
    idx = (idx + acc + 32'd4813) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4820);
    acc = acc + m_hist[idx] + 32'd4827;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4707);
    acc = acc + m_hist[idx] + 32'd4714;
    idx = (idx + acc + 32'd4721) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4728);
    acc = acc + m_hist[idx] + 32'd4735;
    idx = (idx + acc + 32'd4742) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4749);
    acc = acc + m_hist[idx] + 32'd4756;
    idx = (idx + acc + 32'd4763) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4770);
    acc = acc + m_hist[idx] + 32'd4777;
    idx = (idx + acc + 32'd4784) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4791);
    acc = acc + m_hist[idx] + 32'd4798;
    idx = (idx + acc + 32'd4805) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4812);
    acc = acc + m_hist[idx] + 32'd4819;
    idx = (idx + acc + 32'd4826) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4833);
    acc = acc + m_hist[idx] + 32'd4840;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_152 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4712);
    acc = acc + m_hist[idx] + 32'd4719;
    idx = (idx + acc + 32'd4726) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4733);
    acc = acc + m_hist[idx] + 32'd4740;
    idx = (idx + acc + 32'd4747) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4754);
    acc = acc + m_hist[idx] + 32'd4761;
    idx = (idx + acc + 32'd4768) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4775);
    acc = acc + m_hist[idx] + 32'd4782;
    idx = (idx + acc + 32'd4789) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4796);
    acc = acc + m_hist[idx] + 32'd4803;
    idx = (idx + acc + 32'd4810) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4817);
    acc = acc + m_hist[idx] + 32'd4824;
    idx = (idx + acc + 32'd4831) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4838);
    acc = acc + m_hist[idx] + 32'd4845;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4725);
    acc = acc + m_hist[idx] + 32'd4732;
    idx = (idx + acc + 32'd4739) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4746);
    acc = acc + m_hist[idx] + 32'd4753;
    idx = (idx + acc + 32'd4760) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4767);
    acc = acc + m_hist[idx] + 32'd4774;
    idx = (idx + acc + 32'd4781) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4788);
    acc = acc + m_hist[idx] + 32'd4795;
    idx = (idx + acc + 32'd4802) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4809);
    acc = acc + m_hist[idx] + 32'd4816;
    idx = (idx + acc + 32'd4823) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4830);
    acc = acc + m_hist[idx] + 32'd4837;
    idx = (idx + acc + 32'd4844) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4851);
    acc = acc + m_hist[idx] + 32'd4858;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4738);
    acc = acc + m_hist[idx] + 32'd4745;
    idx = (idx + acc + 32'd4752) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4759);
    acc = acc + m_hist[idx] + 32'd4766;
    idx = (idx + acc + 32'd4773) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4780);
    acc = acc + m_hist[idx] + 32'd4787;
    idx = (idx + acc + 32'd4794) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4801);
    acc = acc + m_hist[idx] + 32'd4808;
    idx = (idx + acc + 32'd4815) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4822);
    acc = acc + m_hist[idx] + 32'd4829;
    idx = (idx + acc + 32'd4836) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4843);
    acc = acc + m_hist[idx] + 32'd4850;
    idx = (idx + acc + 32'd4857) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4864);
    acc = acc + m_hist[idx] + 32'd4871;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_153 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4743);
    acc = acc + m_hist[idx] + 32'd4750;
    idx = (idx + acc + 32'd4757) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4764);
    acc = acc + m_hist[idx] + 32'd4771;
    idx = (idx + acc + 32'd4778) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4785);
    acc = acc + m_hist[idx] + 32'd4792;
    idx = (idx + acc + 32'd4799) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4806);
    acc = acc + m_hist[idx] + 32'd4813;
    idx = (idx + acc + 32'd4820) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4827);
    acc = acc + m_hist[idx] + 32'd4834;
    idx = (idx + acc + 32'd4841) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4848);
    acc = acc + m_hist[idx] + 32'd4855;
    idx = (idx + acc + 32'd4862) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4869);
    acc = acc + m_hist[idx] + 32'd4876;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4756);
    acc = acc + m_hist[idx] + 32'd4763;
    idx = (idx + acc + 32'd4770) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4777);
    acc = acc + m_hist[idx] + 32'd4784;
    idx = (idx + acc + 32'd4791) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4798);
    acc = acc + m_hist[idx] + 32'd4805;
    idx = (idx + acc + 32'd4812) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4819);
    acc = acc + m_hist[idx] + 32'd4826;
    idx = (idx + acc + 32'd4833) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4840);
    acc = acc + m_hist[idx] + 32'd4847;
    idx = (idx + acc + 32'd4854) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4861);
    acc = acc + m_hist[idx] + 32'd4868;
    idx = (idx + acc + 32'd4875) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4882);
    acc = acc + m_hist[idx] + 32'd4889;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4769);
    acc = acc + m_hist[idx] + 32'd4776;
    idx = (idx + acc + 32'd4783) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4790);
    acc = acc + m_hist[idx] + 32'd4797;
    idx = (idx + acc + 32'd4804) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4811);
    acc = acc + m_hist[idx] + 32'd4818;
    idx = (idx + acc + 32'd4825) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4832);
    acc = acc + m_hist[idx] + 32'd4839;
    idx = (idx + acc + 32'd4846) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4853);
    acc = acc + m_hist[idx] + 32'd4860;
    idx = (idx + acc + 32'd4867) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4874);
    acc = acc + m_hist[idx] + 32'd4881;
    idx = (idx + acc + 32'd4888) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4895);
    acc = acc + m_hist[idx] + 32'd4902;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_154 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4774);
    acc = acc + m_hist[idx] + 32'd4781;
    idx = (idx + acc + 32'd4788) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4795);
    acc = acc + m_hist[idx] + 32'd4802;
    idx = (idx + acc + 32'd4809) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4816);
    acc = acc + m_hist[idx] + 32'd4823;
    idx = (idx + acc + 32'd4830) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4837);
    acc = acc + m_hist[idx] + 32'd4844;
    idx = (idx + acc + 32'd4851) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4858);
    acc = acc + m_hist[idx] + 32'd4865;
    idx = (idx + acc + 32'd4872) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4879);
    acc = acc + m_hist[idx] + 32'd4886;
    idx = (idx + acc + 32'd4893) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4900);
    acc = acc + m_hist[idx] + 32'd4907;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4787);
    acc = acc + m_hist[idx] + 32'd4794;
    idx = (idx + acc + 32'd4801) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4808);
    acc = acc + m_hist[idx] + 32'd4815;
    idx = (idx + acc + 32'd4822) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4829);
    acc = acc + m_hist[idx] + 32'd4836;
    idx = (idx + acc + 32'd4843) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4850);
    acc = acc + m_hist[idx] + 32'd4857;
    idx = (idx + acc + 32'd4864) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4871);
    acc = acc + m_hist[idx] + 32'd4878;
    idx = (idx + acc + 32'd4885) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4892);
    acc = acc + m_hist[idx] + 32'd4899;
    idx = (idx + acc + 32'd4906) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4913);
    acc = acc + m_hist[idx] + 32'd4920;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4800);
    acc = acc + m_hist[idx] + 32'd4807;
    idx = (idx + acc + 32'd4814) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4821);
    acc = acc + m_hist[idx] + 32'd4828;
    idx = (idx + acc + 32'd4835) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4842);
    acc = acc + m_hist[idx] + 32'd4849;
    idx = (idx + acc + 32'd4856) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4863);
    acc = acc + m_hist[idx] + 32'd4870;
    idx = (idx + acc + 32'd4877) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4884);
    acc = acc + m_hist[idx] + 32'd4891;
    idx = (idx + acc + 32'd4898) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4905);
    acc = acc + m_hist[idx] + 32'd4912;
    idx = (idx + acc + 32'd4919) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4926);
    acc = acc + m_hist[idx] + 32'd4933;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_155 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4805);
    acc = acc + m_hist[idx] + 32'd4812;
    idx = (idx + acc + 32'd4819) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4826);
    acc = acc + m_hist[idx] + 32'd4833;
    idx = (idx + acc + 32'd4840) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4847);
    acc = acc + m_hist[idx] + 32'd4854;
    idx = (idx + acc + 32'd4861) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4868);
    acc = acc + m_hist[idx] + 32'd4875;
    idx = (idx + acc + 32'd4882) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4889);
    acc = acc + m_hist[idx] + 32'd4896;
    idx = (idx + acc + 32'd4903) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4910);
    acc = acc + m_hist[idx] + 32'd4917;
    idx = (idx + acc + 32'd4924) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4931);
    acc = acc + m_hist[idx] + 32'd4938;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4818);
    acc = acc + m_hist[idx] + 32'd4825;
    idx = (idx + acc + 32'd4832) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4839);
    acc = acc + m_hist[idx] + 32'd4846;
    idx = (idx + acc + 32'd4853) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4860);
    acc = acc + m_hist[idx] + 32'd4867;
    idx = (idx + acc + 32'd4874) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4881);
    acc = acc + m_hist[idx] + 32'd4888;
    idx = (idx + acc + 32'd4895) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4902);
    acc = acc + m_hist[idx] + 32'd4909;
    idx = (idx + acc + 32'd4916) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4923);
    acc = acc + m_hist[idx] + 32'd4930;
    idx = (idx + acc + 32'd4937) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4944);
    acc = acc + m_hist[idx] + 32'd4951;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4831);
    acc = acc + m_hist[idx] + 32'd4838;
    idx = (idx + acc + 32'd4845) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4852);
    acc = acc + m_hist[idx] + 32'd4859;
    idx = (idx + acc + 32'd4866) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4873);
    acc = acc + m_hist[idx] + 32'd4880;
    idx = (idx + acc + 32'd4887) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4894);
    acc = acc + m_hist[idx] + 32'd4901;
    idx = (idx + acc + 32'd4908) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4915);
    acc = acc + m_hist[idx] + 32'd4922;
    idx = (idx + acc + 32'd4929) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4936);
    acc = acc + m_hist[idx] + 32'd4943;
    idx = (idx + acc + 32'd4950) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4957);
    acc = acc + m_hist[idx] + 32'd4964;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_156 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4836);
    acc = acc + m_hist[idx] + 32'd4843;
    idx = (idx + acc + 32'd4850) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4857);
    acc = acc + m_hist[idx] + 32'd4864;
    idx = (idx + acc + 32'd4871) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4878);
    acc = acc + m_hist[idx] + 32'd4885;
    idx = (idx + acc + 32'd4892) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4899);
    acc = acc + m_hist[idx] + 32'd4906;
    idx = (idx + acc + 32'd4913) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4920);
    acc = acc + m_hist[idx] + 32'd4927;
    idx = (idx + acc + 32'd4934) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4941);
    acc = acc + m_hist[idx] + 32'd4948;
    idx = (idx + acc + 32'd4955) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4962);
    acc = acc + m_hist[idx] + 32'd4969;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4849);
    acc = acc + m_hist[idx] + 32'd4856;
    idx = (idx + acc + 32'd4863) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4870);
    acc = acc + m_hist[idx] + 32'd4877;
    idx = (idx + acc + 32'd4884) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4891);
    acc = acc + m_hist[idx] + 32'd4898;
    idx = (idx + acc + 32'd4905) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4912);
    acc = acc + m_hist[idx] + 32'd4919;
    idx = (idx + acc + 32'd4926) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4933);
    acc = acc + m_hist[idx] + 32'd4940;
    idx = (idx + acc + 32'd4947) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4954);
    acc = acc + m_hist[idx] + 32'd4961;
    idx = (idx + acc + 32'd4968) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4975);
    acc = acc + m_hist[idx] + 32'd4982;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4862);
    acc = acc + m_hist[idx] + 32'd4869;
    idx = (idx + acc + 32'd4876) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4883);
    acc = acc + m_hist[idx] + 32'd4890;
    idx = (idx + acc + 32'd4897) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4904);
    acc = acc + m_hist[idx] + 32'd4911;
    idx = (idx + acc + 32'd4918) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4925);
    acc = acc + m_hist[idx] + 32'd4932;
    idx = (idx + acc + 32'd4939) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4946);
    acc = acc + m_hist[idx] + 32'd4953;
    idx = (idx + acc + 32'd4960) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4967);
    acc = acc + m_hist[idx] + 32'd4974;
    idx = (idx + acc + 32'd4981) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4988);
    acc = acc + m_hist[idx] + 32'd4995;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_157 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4867);
    acc = acc + m_hist[idx] + 32'd4874;
    idx = (idx + acc + 32'd4881) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4888);
    acc = acc + m_hist[idx] + 32'd4895;
    idx = (idx + acc + 32'd4902) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4909);
    acc = acc + m_hist[idx] + 32'd4916;
    idx = (idx + acc + 32'd4923) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4930);
    acc = acc + m_hist[idx] + 32'd4937;
    idx = (idx + acc + 32'd4944) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4951);
    acc = acc + m_hist[idx] + 32'd4958;
    idx = (idx + acc + 32'd4965) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4972);
    acc = acc + m_hist[idx] + 32'd4979;
    idx = (idx + acc + 32'd4986) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4993);
    acc = acc + m_hist[idx] + 32'd5000;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4880);
    acc = acc + m_hist[idx] + 32'd4887;
    idx = (idx + acc + 32'd4894) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4901);
    acc = acc + m_hist[idx] + 32'd4908;
    idx = (idx + acc + 32'd4915) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4922);
    acc = acc + m_hist[idx] + 32'd4929;
    idx = (idx + acc + 32'd4936) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4943);
    acc = acc + m_hist[idx] + 32'd4950;
    idx = (idx + acc + 32'd4957) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4964);
    acc = acc + m_hist[idx] + 32'd4971;
    idx = (idx + acc + 32'd4978) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4985);
    acc = acc + m_hist[idx] + 32'd4992;
    idx = (idx + acc + 32'd4999) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5006);
    acc = acc + m_hist[idx] + 32'd5013;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4893);
    acc = acc + m_hist[idx] + 32'd4900;
    idx = (idx + acc + 32'd4907) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4914);
    acc = acc + m_hist[idx] + 32'd4921;
    idx = (idx + acc + 32'd4928) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4935);
    acc = acc + m_hist[idx] + 32'd4942;
    idx = (idx + acc + 32'd4949) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4956);
    acc = acc + m_hist[idx] + 32'd4963;
    idx = (idx + acc + 32'd4970) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4977);
    acc = acc + m_hist[idx] + 32'd4984;
    idx = (idx + acc + 32'd4991) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4998);
    acc = acc + m_hist[idx] + 32'd5005;
    idx = (idx + acc + 32'd5012) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5019);
    acc = acc + m_hist[idx] + 32'd5026;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_158 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4898);
    acc = acc + m_hist[idx] + 32'd4905;
    idx = (idx + acc + 32'd4912) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4919);
    acc = acc + m_hist[idx] + 32'd4926;
    idx = (idx + acc + 32'd4933) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4940);
    acc = acc + m_hist[idx] + 32'd4947;
    idx = (idx + acc + 32'd4954) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4961);
    acc = acc + m_hist[idx] + 32'd4968;
    idx = (idx + acc + 32'd4975) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4982);
    acc = acc + m_hist[idx] + 32'd4989;
    idx = (idx + acc + 32'd4996) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5003);
    acc = acc + m_hist[idx] + 32'd5010;
    idx = (idx + acc + 32'd5017) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5024);
    acc = acc + m_hist[idx] + 32'd5031;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4911);
    acc = acc + m_hist[idx] + 32'd4918;
    idx = (idx + acc + 32'd4925) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4932);
    acc = acc + m_hist[idx] + 32'd4939;
    idx = (idx + acc + 32'd4946) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4953);
    acc = acc + m_hist[idx] + 32'd4960;
    idx = (idx + acc + 32'd4967) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4974);
    acc = acc + m_hist[idx] + 32'd4981;
    idx = (idx + acc + 32'd4988) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4995);
    acc = acc + m_hist[idx] + 32'd5002;
    idx = (idx + acc + 32'd5009) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5016);
    acc = acc + m_hist[idx] + 32'd5023;
    idx = (idx + acc + 32'd5030) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5037);
    acc = acc + m_hist[idx] + 32'd5044;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4924);
    acc = acc + m_hist[idx] + 32'd4931;
    idx = (idx + acc + 32'd4938) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4945);
    acc = acc + m_hist[idx] + 32'd4952;
    idx = (idx + acc + 32'd4959) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4966);
    acc = acc + m_hist[idx] + 32'd4973;
    idx = (idx + acc + 32'd4980) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4987);
    acc = acc + m_hist[idx] + 32'd4994;
    idx = (idx + acc + 32'd5001) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5008);
    acc = acc + m_hist[idx] + 32'd5015;
    idx = (idx + acc + 32'd5022) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5029);
    acc = acc + m_hist[idx] + 32'd5036;
    idx = (idx + acc + 32'd5043) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5050);
    acc = acc + m_hist[idx] + 32'd5057;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_159 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4929);
    acc = acc + m_hist[idx] + 32'd4936;
    idx = (idx + acc + 32'd4943) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4950);
    acc = acc + m_hist[idx] + 32'd4957;
    idx = (idx + acc + 32'd4964) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4971);
    acc = acc + m_hist[idx] + 32'd4978;
    idx = (idx + acc + 32'd4985) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4992);
    acc = acc + m_hist[idx] + 32'd4999;
    idx = (idx + acc + 32'd5006) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5013);
    acc = acc + m_hist[idx] + 32'd5020;
    idx = (idx + acc + 32'd5027) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5034);
    acc = acc + m_hist[idx] + 32'd5041;
    idx = (idx + acc + 32'd5048) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5055);
    acc = acc + m_hist[idx] + 32'd5062;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4942);
    acc = acc + m_hist[idx] + 32'd4949;
    idx = (idx + acc + 32'd4956) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4963);
    acc = acc + m_hist[idx] + 32'd4970;
    idx = (idx + acc + 32'd4977) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4984);
    acc = acc + m_hist[idx] + 32'd4991;
    idx = (idx + acc + 32'd4998) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5005);
    acc = acc + m_hist[idx] + 32'd5012;
    idx = (idx + acc + 32'd5019) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5026);
    acc = acc + m_hist[idx] + 32'd5033;
    idx = (idx + acc + 32'd5040) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5047);
    acc = acc + m_hist[idx] + 32'd5054;
    idx = (idx + acc + 32'd5061) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5068);
    acc = acc + m_hist[idx] + 32'd5075;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4955);
    acc = acc + m_hist[idx] + 32'd4962;
    idx = (idx + acc + 32'd4969) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4976);
    acc = acc + m_hist[idx] + 32'd4983;
    idx = (idx + acc + 32'd4990) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4997);
    acc = acc + m_hist[idx] + 32'd5004;
    idx = (idx + acc + 32'd5011) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5018);
    acc = acc + m_hist[idx] + 32'd5025;
    idx = (idx + acc + 32'd5032) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5039);
    acc = acc + m_hist[idx] + 32'd5046;
    idx = (idx + acc + 32'd5053) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5060);
    acc = acc + m_hist[idx] + 32'd5067;
    idx = (idx + acc + 32'd5074) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5081);
    acc = acc + m_hist[idx] + 32'd5088;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_160 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4960);
    acc = acc + m_hist[idx] + 32'd4967;
    idx = (idx + acc + 32'd4974) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4981);
    acc = acc + m_hist[idx] + 32'd4988;
    idx = (idx + acc + 32'd4995) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5002);
    acc = acc + m_hist[idx] + 32'd5009;
    idx = (idx + acc + 32'd5016) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5023);
    acc = acc + m_hist[idx] + 32'd5030;
    idx = (idx + acc + 32'd5037) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5044);
    acc = acc + m_hist[idx] + 32'd5051;
    idx = (idx + acc + 32'd5058) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5065);
    acc = acc + m_hist[idx] + 32'd5072;
    idx = (idx + acc + 32'd5079) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5086);
    acc = acc + m_hist[idx] + 32'd5093;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4973);
    acc = acc + m_hist[idx] + 32'd4980;
    idx = (idx + acc + 32'd4987) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4994);
    acc = acc + m_hist[idx] + 32'd5001;
    idx = (idx + acc + 32'd5008) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5015);
    acc = acc + m_hist[idx] + 32'd5022;
    idx = (idx + acc + 32'd5029) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5036);
    acc = acc + m_hist[idx] + 32'd5043;
    idx = (idx + acc + 32'd5050) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5057);
    acc = acc + m_hist[idx] + 32'd5064;
    idx = (idx + acc + 32'd5071) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5078);
    acc = acc + m_hist[idx] + 32'd5085;
    idx = (idx + acc + 32'd5092) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5099);
    acc = acc + m_hist[idx] + 32'd5106;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4986);
    acc = acc + m_hist[idx] + 32'd4993;
    idx = (idx + acc + 32'd5000) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5007);
    acc = acc + m_hist[idx] + 32'd5014;
    idx = (idx + acc + 32'd5021) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5028);
    acc = acc + m_hist[idx] + 32'd5035;
    idx = (idx + acc + 32'd5042) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5049);
    acc = acc + m_hist[idx] + 32'd5056;
    idx = (idx + acc + 32'd5063) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5070);
    acc = acc + m_hist[idx] + 32'd5077;
    idx = (idx + acc + 32'd5084) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5091);
    acc = acc + m_hist[idx] + 32'd5098;
    idx = (idx + acc + 32'd5105) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5112);
    acc = acc + m_hist[idx] + 32'd5119;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_161 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd4991);
    acc = acc + m_hist[idx] + 32'd4998;
    idx = (idx + acc + 32'd5005) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5012);
    acc = acc + m_hist[idx] + 32'd5019;
    idx = (idx + acc + 32'd5026) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5033);
    acc = acc + m_hist[idx] + 32'd5040;
    idx = (idx + acc + 32'd5047) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5054);
    acc = acc + m_hist[idx] + 32'd5061;
    idx = (idx + acc + 32'd5068) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5075);
    acc = acc + m_hist[idx] + 32'd5082;
    idx = (idx + acc + 32'd5089) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5096);
    acc = acc + m_hist[idx] + 32'd5103;
    idx = (idx + acc + 32'd5110) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5117);
    acc = acc + m_hist[idx] + 32'd5124;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5004);
    acc = acc + m_hist[idx] + 32'd5011;
    idx = (idx + acc + 32'd5018) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5025);
    acc = acc + m_hist[idx] + 32'd5032;
    idx = (idx + acc + 32'd5039) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5046);
    acc = acc + m_hist[idx] + 32'd5053;
    idx = (idx + acc + 32'd5060) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5067);
    acc = acc + m_hist[idx] + 32'd5074;
    idx = (idx + acc + 32'd5081) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5088);
    acc = acc + m_hist[idx] + 32'd5095;
    idx = (idx + acc + 32'd5102) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5109);
    acc = acc + m_hist[idx] + 32'd5116;
    idx = (idx + acc + 32'd5123) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5130);
    acc = acc + m_hist[idx] + 32'd5137;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5017);
    acc = acc + m_hist[idx] + 32'd5024;
    idx = (idx + acc + 32'd5031) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5038);
    acc = acc + m_hist[idx] + 32'd5045;
    idx = (idx + acc + 32'd5052) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5059);
    acc = acc + m_hist[idx] + 32'd5066;
    idx = (idx + acc + 32'd5073) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5080);
    acc = acc + m_hist[idx] + 32'd5087;
    idx = (idx + acc + 32'd5094) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5101);
    acc = acc + m_hist[idx] + 32'd5108;
    idx = (idx + acc + 32'd5115) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5122);
    acc = acc + m_hist[idx] + 32'd5129;
    idx = (idx + acc + 32'd5136) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5143);
    acc = acc + m_hist[idx] + 32'd5150;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_162 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5022);
    acc = acc + m_hist[idx] + 32'd5029;
    idx = (idx + acc + 32'd5036) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5043);
    acc = acc + m_hist[idx] + 32'd5050;
    idx = (idx + acc + 32'd5057) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5064);
    acc = acc + m_hist[idx] + 32'd5071;
    idx = (idx + acc + 32'd5078) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5085);
    acc = acc + m_hist[idx] + 32'd5092;
    idx = (idx + acc + 32'd5099) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5106);
    acc = acc + m_hist[idx] + 32'd5113;
    idx = (idx + acc + 32'd5120) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5127);
    acc = acc + m_hist[idx] + 32'd5134;
    idx = (idx + acc + 32'd5141) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5148);
    acc = acc + m_hist[idx] + 32'd5155;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5035);
    acc = acc + m_hist[idx] + 32'd5042;
    idx = (idx + acc + 32'd5049) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5056);
    acc = acc + m_hist[idx] + 32'd5063;
    idx = (idx + acc + 32'd5070) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5077);
    acc = acc + m_hist[idx] + 32'd5084;
    idx = (idx + acc + 32'd5091) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5098);
    acc = acc + m_hist[idx] + 32'd5105;
    idx = (idx + acc + 32'd5112) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5119);
    acc = acc + m_hist[idx] + 32'd5126;
    idx = (idx + acc + 32'd5133) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5140);
    acc = acc + m_hist[idx] + 32'd5147;
    idx = (idx + acc + 32'd5154) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5161);
    acc = acc + m_hist[idx] + 32'd5168;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5048);
    acc = acc + m_hist[idx] + 32'd5055;
    idx = (idx + acc + 32'd5062) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5069);
    acc = acc + m_hist[idx] + 32'd5076;
    idx = (idx + acc + 32'd5083) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5090);
    acc = acc + m_hist[idx] + 32'd5097;
    idx = (idx + acc + 32'd5104) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5111);
    acc = acc + m_hist[idx] + 32'd5118;
    idx = (idx + acc + 32'd5125) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5132);
    acc = acc + m_hist[idx] + 32'd5139;
    idx = (idx + acc + 32'd5146) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5153);
    acc = acc + m_hist[idx] + 32'd5160;
    idx = (idx + acc + 32'd5167) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5174);
    acc = acc + m_hist[idx] + 32'd5181;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_163 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5053);
    acc = acc + m_hist[idx] + 32'd5060;
    idx = (idx + acc + 32'd5067) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5074);
    acc = acc + m_hist[idx] + 32'd5081;
    idx = (idx + acc + 32'd5088) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5095);
    acc = acc + m_hist[idx] + 32'd5102;
    idx = (idx + acc + 32'd5109) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5116);
    acc = acc + m_hist[idx] + 32'd5123;
    idx = (idx + acc + 32'd5130) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5137);
    acc = acc + m_hist[idx] + 32'd5144;
    idx = (idx + acc + 32'd5151) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5158);
    acc = acc + m_hist[idx] + 32'd5165;
    idx = (idx + acc + 32'd5172) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5179);
    acc = acc + m_hist[idx] + 32'd5186;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5066);
    acc = acc + m_hist[idx] + 32'd5073;
    idx = (idx + acc + 32'd5080) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5087);
    acc = acc + m_hist[idx] + 32'd5094;
    idx = (idx + acc + 32'd5101) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5108);
    acc = acc + m_hist[idx] + 32'd5115;
    idx = (idx + acc + 32'd5122) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5129);
    acc = acc + m_hist[idx] + 32'd5136;
    idx = (idx + acc + 32'd5143) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5150);
    acc = acc + m_hist[idx] + 32'd5157;
    idx = (idx + acc + 32'd5164) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5171);
    acc = acc + m_hist[idx] + 32'd5178;
    idx = (idx + acc + 32'd5185) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5192);
    acc = acc + m_hist[idx] + 32'd5199;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5079);
    acc = acc + m_hist[idx] + 32'd5086;
    idx = (idx + acc + 32'd5093) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5100);
    acc = acc + m_hist[idx] + 32'd5107;
    idx = (idx + acc + 32'd5114) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5121);
    acc = acc + m_hist[idx] + 32'd5128;
    idx = (idx + acc + 32'd5135) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5142);
    acc = acc + m_hist[idx] + 32'd5149;
    idx = (idx + acc + 32'd5156) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5163);
    acc = acc + m_hist[idx] + 32'd5170;
    idx = (idx + acc + 32'd5177) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5184);
    acc = acc + m_hist[idx] + 32'd5191;
    idx = (idx + acc + 32'd5198) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5205);
    acc = acc + m_hist[idx] + 32'd5212;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_164 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5084);
    acc = acc + m_hist[idx] + 32'd5091;
    idx = (idx + acc + 32'd5098) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5105);
    acc = acc + m_hist[idx] + 32'd5112;
    idx = (idx + acc + 32'd5119) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5126);
    acc = acc + m_hist[idx] + 32'd5133;
    idx = (idx + acc + 32'd5140) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5147);
    acc = acc + m_hist[idx] + 32'd5154;
    idx = (idx + acc + 32'd5161) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5168);
    acc = acc + m_hist[idx] + 32'd5175;
    idx = (idx + acc + 32'd5182) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5189);
    acc = acc + m_hist[idx] + 32'd5196;
    idx = (idx + acc + 32'd5203) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5210);
    acc = acc + m_hist[idx] + 32'd5217;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5097);
    acc = acc + m_hist[idx] + 32'd5104;
    idx = (idx + acc + 32'd5111) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5118);
    acc = acc + m_hist[idx] + 32'd5125;
    idx = (idx + acc + 32'd5132) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5139);
    acc = acc + m_hist[idx] + 32'd5146;
    idx = (idx + acc + 32'd5153) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5160);
    acc = acc + m_hist[idx] + 32'd5167;
    idx = (idx + acc + 32'd5174) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5181);
    acc = acc + m_hist[idx] + 32'd5188;
    idx = (idx + acc + 32'd5195) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5202);
    acc = acc + m_hist[idx] + 32'd5209;
    idx = (idx + acc + 32'd5216) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5223);
    acc = acc + m_hist[idx] + 32'd5230;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5110);
    acc = acc + m_hist[idx] + 32'd5117;
    idx = (idx + acc + 32'd5124) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5131);
    acc = acc + m_hist[idx] + 32'd5138;
    idx = (idx + acc + 32'd5145) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5152);
    acc = acc + m_hist[idx] + 32'd5159;
    idx = (idx + acc + 32'd5166) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5173);
    acc = acc + m_hist[idx] + 32'd5180;
    idx = (idx + acc + 32'd5187) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5194);
    acc = acc + m_hist[idx] + 32'd5201;
    idx = (idx + acc + 32'd5208) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5215);
    acc = acc + m_hist[idx] + 32'd5222;
    idx = (idx + acc + 32'd5229) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5236);
    acc = acc + m_hist[idx] + 32'd5243;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_165 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5115);
    acc = acc + m_hist[idx] + 32'd5122;
    idx = (idx + acc + 32'd5129) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5136);
    acc = acc + m_hist[idx] + 32'd5143;
    idx = (idx + acc + 32'd5150) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5157);
    acc = acc + m_hist[idx] + 32'd5164;
    idx = (idx + acc + 32'd5171) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5178);
    acc = acc + m_hist[idx] + 32'd5185;
    idx = (idx + acc + 32'd5192) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5199);
    acc = acc + m_hist[idx] + 32'd5206;
    idx = (idx + acc + 32'd5213) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5220);
    acc = acc + m_hist[idx] + 32'd5227;
    idx = (idx + acc + 32'd5234) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5241);
    acc = acc + m_hist[idx] + 32'd5248;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5128);
    acc = acc + m_hist[idx] + 32'd5135;
    idx = (idx + acc + 32'd5142) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5149);
    acc = acc + m_hist[idx] + 32'd5156;
    idx = (idx + acc + 32'd5163) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5170);
    acc = acc + m_hist[idx] + 32'd5177;
    idx = (idx + acc + 32'd5184) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5191);
    acc = acc + m_hist[idx] + 32'd5198;
    idx = (idx + acc + 32'd5205) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5212);
    acc = acc + m_hist[idx] + 32'd5219;
    idx = (idx + acc + 32'd5226) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5233);
    acc = acc + m_hist[idx] + 32'd5240;
    idx = (idx + acc + 32'd5247) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5254);
    acc = acc + m_hist[idx] + 32'd5261;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5141);
    acc = acc + m_hist[idx] + 32'd5148;
    idx = (idx + acc + 32'd5155) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5162);
    acc = acc + m_hist[idx] + 32'd5169;
    idx = (idx + acc + 32'd5176) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5183);
    acc = acc + m_hist[idx] + 32'd5190;
    idx = (idx + acc + 32'd5197) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5204);
    acc = acc + m_hist[idx] + 32'd5211;
    idx = (idx + acc + 32'd5218) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5225);
    acc = acc + m_hist[idx] + 32'd5232;
    idx = (idx + acc + 32'd5239) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5246);
    acc = acc + m_hist[idx] + 32'd5253;
    idx = (idx + acc + 32'd5260) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5267);
    acc = acc + m_hist[idx] + 32'd5274;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_166 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5146);
    acc = acc + m_hist[idx] + 32'd5153;
    idx = (idx + acc + 32'd5160) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5167);
    acc = acc + m_hist[idx] + 32'd5174;
    idx = (idx + acc + 32'd5181) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5188);
    acc = acc + m_hist[idx] + 32'd5195;
    idx = (idx + acc + 32'd5202) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5209);
    acc = acc + m_hist[idx] + 32'd5216;
    idx = (idx + acc + 32'd5223) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5230);
    acc = acc + m_hist[idx] + 32'd5237;
    idx = (idx + acc + 32'd5244) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5251);
    acc = acc + m_hist[idx] + 32'd5258;
    idx = (idx + acc + 32'd5265) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5272);
    acc = acc + m_hist[idx] + 32'd5279;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5159);
    acc = acc + m_hist[idx] + 32'd5166;
    idx = (idx + acc + 32'd5173) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5180);
    acc = acc + m_hist[idx] + 32'd5187;
    idx = (idx + acc + 32'd5194) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5201);
    acc = acc + m_hist[idx] + 32'd5208;
    idx = (idx + acc + 32'd5215) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5222);
    acc = acc + m_hist[idx] + 32'd5229;
    idx = (idx + acc + 32'd5236) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5243);
    acc = acc + m_hist[idx] + 32'd5250;
    idx = (idx + acc + 32'd5257) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5264);
    acc = acc + m_hist[idx] + 32'd5271;
    idx = (idx + acc + 32'd5278) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5285);
    acc = acc + m_hist[idx] + 32'd5292;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5172);
    acc = acc + m_hist[idx] + 32'd5179;
    idx = (idx + acc + 32'd5186) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5193);
    acc = acc + m_hist[idx] + 32'd5200;
    idx = (idx + acc + 32'd5207) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5214);
    acc = acc + m_hist[idx] + 32'd5221;
    idx = (idx + acc + 32'd5228) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5235);
    acc = acc + m_hist[idx] + 32'd5242;
    idx = (idx + acc + 32'd5249) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5256);
    acc = acc + m_hist[idx] + 32'd5263;
    idx = (idx + acc + 32'd5270) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5277);
    acc = acc + m_hist[idx] + 32'd5284;
    idx = (idx + acc + 32'd5291) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5298);
    acc = acc + m_hist[idx] + 32'd5305;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_167 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5177);
    acc = acc + m_hist[idx] + 32'd5184;
    idx = (idx + acc + 32'd5191) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5198);
    acc = acc + m_hist[idx] + 32'd5205;
    idx = (idx + acc + 32'd5212) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5219);
    acc = acc + m_hist[idx] + 32'd5226;
    idx = (idx + acc + 32'd5233) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5240);
    acc = acc + m_hist[idx] + 32'd5247;
    idx = (idx + acc + 32'd5254) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5261);
    acc = acc + m_hist[idx] + 32'd5268;
    idx = (idx + acc + 32'd5275) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5282);
    acc = acc + m_hist[idx] + 32'd5289;
    idx = (idx + acc + 32'd5296) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5303);
    acc = acc + m_hist[idx] + 32'd5310;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5190);
    acc = acc + m_hist[idx] + 32'd5197;
    idx = (idx + acc + 32'd5204) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5211);
    acc = acc + m_hist[idx] + 32'd5218;
    idx = (idx + acc + 32'd5225) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5232);
    acc = acc + m_hist[idx] + 32'd5239;
    idx = (idx + acc + 32'd5246) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5253);
    acc = acc + m_hist[idx] + 32'd5260;
    idx = (idx + acc + 32'd5267) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5274);
    acc = acc + m_hist[idx] + 32'd5281;
    idx = (idx + acc + 32'd5288) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5295);
    acc = acc + m_hist[idx] + 32'd5302;
    idx = (idx + acc + 32'd5309) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5316);
    acc = acc + m_hist[idx] + 32'd5323;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5203);
    acc = acc + m_hist[idx] + 32'd5210;
    idx = (idx + acc + 32'd5217) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5224);
    acc = acc + m_hist[idx] + 32'd5231;
    idx = (idx + acc + 32'd5238) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5245);
    acc = acc + m_hist[idx] + 32'd5252;
    idx = (idx + acc + 32'd5259) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5266);
    acc = acc + m_hist[idx] + 32'd5273;
    idx = (idx + acc + 32'd5280) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5287);
    acc = acc + m_hist[idx] + 32'd5294;
    idx = (idx + acc + 32'd5301) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5308);
    acc = acc + m_hist[idx] + 32'd5315;
    idx = (idx + acc + 32'd5322) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5329);
    acc = acc + m_hist[idx] + 32'd5336;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_168 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5208);
    acc = acc + m_hist[idx] + 32'd5215;
    idx = (idx + acc + 32'd5222) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5229);
    acc = acc + m_hist[idx] + 32'd5236;
    idx = (idx + acc + 32'd5243) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5250);
    acc = acc + m_hist[idx] + 32'd5257;
    idx = (idx + acc + 32'd5264) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5271);
    acc = acc + m_hist[idx] + 32'd5278;
    idx = (idx + acc + 32'd5285) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5292);
    acc = acc + m_hist[idx] + 32'd5299;
    idx = (idx + acc + 32'd5306) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5313);
    acc = acc + m_hist[idx] + 32'd5320;
    idx = (idx + acc + 32'd5327) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5334);
    acc = acc + m_hist[idx] + 32'd5341;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5221);
    acc = acc + m_hist[idx] + 32'd5228;
    idx = (idx + acc + 32'd5235) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5242);
    acc = acc + m_hist[idx] + 32'd5249;
    idx = (idx + acc + 32'd5256) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5263);
    acc = acc + m_hist[idx] + 32'd5270;
    idx = (idx + acc + 32'd5277) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5284);
    acc = acc + m_hist[idx] + 32'd5291;
    idx = (idx + acc + 32'd5298) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5305);
    acc = acc + m_hist[idx] + 32'd5312;
    idx = (idx + acc + 32'd5319) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5326);
    acc = acc + m_hist[idx] + 32'd5333;
    idx = (idx + acc + 32'd5340) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5347);
    acc = acc + m_hist[idx] + 32'd5354;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5234);
    acc = acc + m_hist[idx] + 32'd5241;
    idx = (idx + acc + 32'd5248) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5255);
    acc = acc + m_hist[idx] + 32'd5262;
    idx = (idx + acc + 32'd5269) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5276);
    acc = acc + m_hist[idx] + 32'd5283;
    idx = (idx + acc + 32'd5290) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5297);
    acc = acc + m_hist[idx] + 32'd5304;
    idx = (idx + acc + 32'd5311) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5318);
    acc = acc + m_hist[idx] + 32'd5325;
    idx = (idx + acc + 32'd5332) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5339);
    acc = acc + m_hist[idx] + 32'd5346;
    idx = (idx + acc + 32'd5353) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5360);
    acc = acc + m_hist[idx] + 32'd5367;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_169 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5239);
    acc = acc + m_hist[idx] + 32'd5246;
    idx = (idx + acc + 32'd5253) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5260);
    acc = acc + m_hist[idx] + 32'd5267;
    idx = (idx + acc + 32'd5274) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5281);
    acc = acc + m_hist[idx] + 32'd5288;
    idx = (idx + acc + 32'd5295) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5302);
    acc = acc + m_hist[idx] + 32'd5309;
    idx = (idx + acc + 32'd5316) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5323);
    acc = acc + m_hist[idx] + 32'd5330;
    idx = (idx + acc + 32'd5337) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5344);
    acc = acc + m_hist[idx] + 32'd5351;
    idx = (idx + acc + 32'd5358) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5365);
    acc = acc + m_hist[idx] + 32'd5372;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5252);
    acc = acc + m_hist[idx] + 32'd5259;
    idx = (idx + acc + 32'd5266) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5273);
    acc = acc + m_hist[idx] + 32'd5280;
    idx = (idx + acc + 32'd5287) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5294);
    acc = acc + m_hist[idx] + 32'd5301;
    idx = (idx + acc + 32'd5308) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5315);
    acc = acc + m_hist[idx] + 32'd5322;
    idx = (idx + acc + 32'd5329) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5336);
    acc = acc + m_hist[idx] + 32'd5343;
    idx = (idx + acc + 32'd5350) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5357);
    acc = acc + m_hist[idx] + 32'd5364;
    idx = (idx + acc + 32'd5371) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5378);
    acc = acc + m_hist[idx] + 32'd5385;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5265);
    acc = acc + m_hist[idx] + 32'd5272;
    idx = (idx + acc + 32'd5279) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5286);
    acc = acc + m_hist[idx] + 32'd5293;
    idx = (idx + acc + 32'd5300) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5307);
    acc = acc + m_hist[idx] + 32'd5314;
    idx = (idx + acc + 32'd5321) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5328);
    acc = acc + m_hist[idx] + 32'd5335;
    idx = (idx + acc + 32'd5342) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5349);
    acc = acc + m_hist[idx] + 32'd5356;
    idx = (idx + acc + 32'd5363) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5370);
    acc = acc + m_hist[idx] + 32'd5377;
    idx = (idx + acc + 32'd5384) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5391);
    acc = acc + m_hist[idx] + 32'd5398;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_170 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5270);
    acc = acc + m_hist[idx] + 32'd5277;
    idx = (idx + acc + 32'd5284) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5291);
    acc = acc + m_hist[idx] + 32'd5298;
    idx = (idx + acc + 32'd5305) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5312);
    acc = acc + m_hist[idx] + 32'd5319;
    idx = (idx + acc + 32'd5326) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5333);
    acc = acc + m_hist[idx] + 32'd5340;
    idx = (idx + acc + 32'd5347) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5354);
    acc = acc + m_hist[idx] + 32'd5361;
    idx = (idx + acc + 32'd5368) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5375);
    acc = acc + m_hist[idx] + 32'd5382;
    idx = (idx + acc + 32'd5389) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5396);
    acc = acc + m_hist[idx] + 32'd5403;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5283);
    acc = acc + m_hist[idx] + 32'd5290;
    idx = (idx + acc + 32'd5297) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5304);
    acc = acc + m_hist[idx] + 32'd5311;
    idx = (idx + acc + 32'd5318) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5325);
    acc = acc + m_hist[idx] + 32'd5332;
    idx = (idx + acc + 32'd5339) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5346);
    acc = acc + m_hist[idx] + 32'd5353;
    idx = (idx + acc + 32'd5360) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5367);
    acc = acc + m_hist[idx] + 32'd5374;
    idx = (idx + acc + 32'd5381) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5388);
    acc = acc + m_hist[idx] + 32'd5395;
    idx = (idx + acc + 32'd5402) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5409);
    acc = acc + m_hist[idx] + 32'd5416;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5296);
    acc = acc + m_hist[idx] + 32'd5303;
    idx = (idx + acc + 32'd5310) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5317);
    acc = acc + m_hist[idx] + 32'd5324;
    idx = (idx + acc + 32'd5331) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5338);
    acc = acc + m_hist[idx] + 32'd5345;
    idx = (idx + acc + 32'd5352) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5359);
    acc = acc + m_hist[idx] + 32'd5366;
    idx = (idx + acc + 32'd5373) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5380);
    acc = acc + m_hist[idx] + 32'd5387;
    idx = (idx + acc + 32'd5394) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5401);
    acc = acc + m_hist[idx] + 32'd5408;
    idx = (idx + acc + 32'd5415) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5422);
    acc = acc + m_hist[idx] + 32'd5429;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_171 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5301);
    acc = acc + m_hist[idx] + 32'd5308;
    idx = (idx + acc + 32'd5315) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5322);
    acc = acc + m_hist[idx] + 32'd5329;
    idx = (idx + acc + 32'd5336) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5343);
    acc = acc + m_hist[idx] + 32'd5350;
    idx = (idx + acc + 32'd5357) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5364);
    acc = acc + m_hist[idx] + 32'd5371;
    idx = (idx + acc + 32'd5378) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5385);
    acc = acc + m_hist[idx] + 32'd5392;
    idx = (idx + acc + 32'd5399) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5406);
    acc = acc + m_hist[idx] + 32'd5413;
    idx = (idx + acc + 32'd5420) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5427);
    acc = acc + m_hist[idx] + 32'd5434;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5314);
    acc = acc + m_hist[idx] + 32'd5321;
    idx = (idx + acc + 32'd5328) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5335);
    acc = acc + m_hist[idx] + 32'd5342;
    idx = (idx + acc + 32'd5349) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5356);
    acc = acc + m_hist[idx] + 32'd5363;
    idx = (idx + acc + 32'd5370) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5377);
    acc = acc + m_hist[idx] + 32'd5384;
    idx = (idx + acc + 32'd5391) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5398);
    acc = acc + m_hist[idx] + 32'd5405;
    idx = (idx + acc + 32'd5412) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5419);
    acc = acc + m_hist[idx] + 32'd5426;
    idx = (idx + acc + 32'd5433) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5440);
    acc = acc + m_hist[idx] + 32'd5447;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5327);
    acc = acc + m_hist[idx] + 32'd5334;
    idx = (idx + acc + 32'd5341) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5348);
    acc = acc + m_hist[idx] + 32'd5355;
    idx = (idx + acc + 32'd5362) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5369);
    acc = acc + m_hist[idx] + 32'd5376;
    idx = (idx + acc + 32'd5383) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5390);
    acc = acc + m_hist[idx] + 32'd5397;
    idx = (idx + acc + 32'd5404) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5411);
    acc = acc + m_hist[idx] + 32'd5418;
    idx = (idx + acc + 32'd5425) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5432);
    acc = acc + m_hist[idx] + 32'd5439;
    idx = (idx + acc + 32'd5446) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5453);
    acc = acc + m_hist[idx] + 32'd5460;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_172 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5332);
    acc = acc + m_hist[idx] + 32'd5339;
    idx = (idx + acc + 32'd5346) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5353);
    acc = acc + m_hist[idx] + 32'd5360;
    idx = (idx + acc + 32'd5367) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5374);
    acc = acc + m_hist[idx] + 32'd5381;
    idx = (idx + acc + 32'd5388) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5395);
    acc = acc + m_hist[idx] + 32'd5402;
    idx = (idx + acc + 32'd5409) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5416);
    acc = acc + m_hist[idx] + 32'd5423;
    idx = (idx + acc + 32'd5430) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5437);
    acc = acc + m_hist[idx] + 32'd5444;
    idx = (idx + acc + 32'd5451) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5458);
    acc = acc + m_hist[idx] + 32'd5465;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5345);
    acc = acc + m_hist[idx] + 32'd5352;
    idx = (idx + acc + 32'd5359) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5366);
    acc = acc + m_hist[idx] + 32'd5373;
    idx = (idx + acc + 32'd5380) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5387);
    acc = acc + m_hist[idx] + 32'd5394;
    idx = (idx + acc + 32'd5401) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5408);
    acc = acc + m_hist[idx] + 32'd5415;
    idx = (idx + acc + 32'd5422) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5429);
    acc = acc + m_hist[idx] + 32'd5436;
    idx = (idx + acc + 32'd5443) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5450);
    acc = acc + m_hist[idx] + 32'd5457;
    idx = (idx + acc + 32'd5464) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5471);
    acc = acc + m_hist[idx] + 32'd5478;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5358);
    acc = acc + m_hist[idx] + 32'd5365;
    idx = (idx + acc + 32'd5372) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5379);
    acc = acc + m_hist[idx] + 32'd5386;
    idx = (idx + acc + 32'd5393) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5400);
    acc = acc + m_hist[idx] + 32'd5407;
    idx = (idx + acc + 32'd5414) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5421);
    acc = acc + m_hist[idx] + 32'd5428;
    idx = (idx + acc + 32'd5435) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5442);
    acc = acc + m_hist[idx] + 32'd5449;
    idx = (idx + acc + 32'd5456) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5463);
    acc = acc + m_hist[idx] + 32'd5470;
    idx = (idx + acc + 32'd5477) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5484);
    acc = acc + m_hist[idx] + 32'd5491;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_173 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5363);
    acc = acc + m_hist[idx] + 32'd5370;
    idx = (idx + acc + 32'd5377) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5384);
    acc = acc + m_hist[idx] + 32'd5391;
    idx = (idx + acc + 32'd5398) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5405);
    acc = acc + m_hist[idx] + 32'd5412;
    idx = (idx + acc + 32'd5419) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5426);
    acc = acc + m_hist[idx] + 32'd5433;
    idx = (idx + acc + 32'd5440) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5447);
    acc = acc + m_hist[idx] + 32'd5454;
    idx = (idx + acc + 32'd5461) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5468);
    acc = acc + m_hist[idx] + 32'd5475;
    idx = (idx + acc + 32'd5482) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5489);
    acc = acc + m_hist[idx] + 32'd5496;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5376);
    acc = acc + m_hist[idx] + 32'd5383;
    idx = (idx + acc + 32'd5390) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5397);
    acc = acc + m_hist[idx] + 32'd5404;
    idx = (idx + acc + 32'd5411) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5418);
    acc = acc + m_hist[idx] + 32'd5425;
    idx = (idx + acc + 32'd5432) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5439);
    acc = acc + m_hist[idx] + 32'd5446;
    idx = (idx + acc + 32'd5453) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5460);
    acc = acc + m_hist[idx] + 32'd5467;
    idx = (idx + acc + 32'd5474) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5481);
    acc = acc + m_hist[idx] + 32'd5488;
    idx = (idx + acc + 32'd5495) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5502);
    acc = acc + m_hist[idx] + 32'd5509;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5389);
    acc = acc + m_hist[idx] + 32'd5396;
    idx = (idx + acc + 32'd5403) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5410);
    acc = acc + m_hist[idx] + 32'd5417;
    idx = (idx + acc + 32'd5424) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5431);
    acc = acc + m_hist[idx] + 32'd5438;
    idx = (idx + acc + 32'd5445) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5452);
    acc = acc + m_hist[idx] + 32'd5459;
    idx = (idx + acc + 32'd5466) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5473);
    acc = acc + m_hist[idx] + 32'd5480;
    idx = (idx + acc + 32'd5487) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5494);
    acc = acc + m_hist[idx] + 32'd5501;
    idx = (idx + acc + 32'd5508) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5515);
    acc = acc + m_hist[idx] + 32'd5522;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_174 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5394);
    acc = acc + m_hist[idx] + 32'd5401;
    idx = (idx + acc + 32'd5408) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5415);
    acc = acc + m_hist[idx] + 32'd5422;
    idx = (idx + acc + 32'd5429) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5436);
    acc = acc + m_hist[idx] + 32'd5443;
    idx = (idx + acc + 32'd5450) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5457);
    acc = acc + m_hist[idx] + 32'd5464;
    idx = (idx + acc + 32'd5471) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5478);
    acc = acc + m_hist[idx] + 32'd5485;
    idx = (idx + acc + 32'd5492) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5499);
    acc = acc + m_hist[idx] + 32'd5506;
    idx = (idx + acc + 32'd5513) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5520);
    acc = acc + m_hist[idx] + 32'd5527;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5407);
    acc = acc + m_hist[idx] + 32'd5414;
    idx = (idx + acc + 32'd5421) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5428);
    acc = acc + m_hist[idx] + 32'd5435;
    idx = (idx + acc + 32'd5442) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5449);
    acc = acc + m_hist[idx] + 32'd5456;
    idx = (idx + acc + 32'd5463) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5470);
    acc = acc + m_hist[idx] + 32'd5477;
    idx = (idx + acc + 32'd5484) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5491);
    acc = acc + m_hist[idx] + 32'd5498;
    idx = (idx + acc + 32'd5505) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5512);
    acc = acc + m_hist[idx] + 32'd5519;
    idx = (idx + acc + 32'd5526) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5533);
    acc = acc + m_hist[idx] + 32'd5540;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5420);
    acc = acc + m_hist[idx] + 32'd5427;
    idx = (idx + acc + 32'd5434) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5441);
    acc = acc + m_hist[idx] + 32'd5448;
    idx = (idx + acc + 32'd5455) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5462);
    acc = acc + m_hist[idx] + 32'd5469;
    idx = (idx + acc + 32'd5476) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5483);
    acc = acc + m_hist[idx] + 32'd5490;
    idx = (idx + acc + 32'd5497) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5504);
    acc = acc + m_hist[idx] + 32'd5511;
    idx = (idx + acc + 32'd5518) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5525);
    acc = acc + m_hist[idx] + 32'd5532;
    idx = (idx + acc + 32'd5539) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5546);
    acc = acc + m_hist[idx] + 32'd5553;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_175 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5425);
    acc = acc + m_hist[idx] + 32'd5432;
    idx = (idx + acc + 32'd5439) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5446);
    acc = acc + m_hist[idx] + 32'd5453;
    idx = (idx + acc + 32'd5460) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5467);
    acc = acc + m_hist[idx] + 32'd5474;
    idx = (idx + acc + 32'd5481) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5488);
    acc = acc + m_hist[idx] + 32'd5495;
    idx = (idx + acc + 32'd5502) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5509);
    acc = acc + m_hist[idx] + 32'd5516;
    idx = (idx + acc + 32'd5523) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5530);
    acc = acc + m_hist[idx] + 32'd5537;
    idx = (idx + acc + 32'd5544) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5551);
    acc = acc + m_hist[idx] + 32'd5558;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5438);
    acc = acc + m_hist[idx] + 32'd5445;
    idx = (idx + acc + 32'd5452) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5459);
    acc = acc + m_hist[idx] + 32'd5466;
    idx = (idx + acc + 32'd5473) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5480);
    acc = acc + m_hist[idx] + 32'd5487;
    idx = (idx + acc + 32'd5494) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5501);
    acc = acc + m_hist[idx] + 32'd5508;
    idx = (idx + acc + 32'd5515) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5522);
    acc = acc + m_hist[idx] + 32'd5529;
    idx = (idx + acc + 32'd5536) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5543);
    acc = acc + m_hist[idx] + 32'd5550;
    idx = (idx + acc + 32'd5557) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5564);
    acc = acc + m_hist[idx] + 32'd5571;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5451);
    acc = acc + m_hist[idx] + 32'd5458;
    idx = (idx + acc + 32'd5465) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5472);
    acc = acc + m_hist[idx] + 32'd5479;
    idx = (idx + acc + 32'd5486) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5493);
    acc = acc + m_hist[idx] + 32'd5500;
    idx = (idx + acc + 32'd5507) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5514);
    acc = acc + m_hist[idx] + 32'd5521;
    idx = (idx + acc + 32'd5528) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5535);
    acc = acc + m_hist[idx] + 32'd5542;
    idx = (idx + acc + 32'd5549) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5556);
    acc = acc + m_hist[idx] + 32'd5563;
    idx = (idx + acc + 32'd5570) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5577);
    acc = acc + m_hist[idx] + 32'd5584;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_176 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5456);
    acc = acc + m_hist[idx] + 32'd5463;
    idx = (idx + acc + 32'd5470) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5477);
    acc = acc + m_hist[idx] + 32'd5484;
    idx = (idx + acc + 32'd5491) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5498);
    acc = acc + m_hist[idx] + 32'd5505;
    idx = (idx + acc + 32'd5512) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5519);
    acc = acc + m_hist[idx] + 32'd5526;
    idx = (idx + acc + 32'd5533) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5540);
    acc = acc + m_hist[idx] + 32'd5547;
    idx = (idx + acc + 32'd5554) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5561);
    acc = acc + m_hist[idx] + 32'd5568;
    idx = (idx + acc + 32'd5575) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5582);
    acc = acc + m_hist[idx] + 32'd5589;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5469);
    acc = acc + m_hist[idx] + 32'd5476;
    idx = (idx + acc + 32'd5483) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5490);
    acc = acc + m_hist[idx] + 32'd5497;
    idx = (idx + acc + 32'd5504) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5511);
    acc = acc + m_hist[idx] + 32'd5518;
    idx = (idx + acc + 32'd5525) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5532);
    acc = acc + m_hist[idx] + 32'd5539;
    idx = (idx + acc + 32'd5546) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5553);
    acc = acc + m_hist[idx] + 32'd5560;
    idx = (idx + acc + 32'd5567) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5574);
    acc = acc + m_hist[idx] + 32'd5581;
    idx = (idx + acc + 32'd5588) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5595);
    acc = acc + m_hist[idx] + 32'd5602;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5482);
    acc = acc + m_hist[idx] + 32'd5489;
    idx = (idx + acc + 32'd5496) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5503);
    acc = acc + m_hist[idx] + 32'd5510;
    idx = (idx + acc + 32'd5517) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5524);
    acc = acc + m_hist[idx] + 32'd5531;
    idx = (idx + acc + 32'd5538) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5545);
    acc = acc + m_hist[idx] + 32'd5552;
    idx = (idx + acc + 32'd5559) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5566);
    acc = acc + m_hist[idx] + 32'd5573;
    idx = (idx + acc + 32'd5580) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5587);
    acc = acc + m_hist[idx] + 32'd5594;
    idx = (idx + acc + 32'd5601) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5608);
    acc = acc + m_hist[idx] + 32'd5615;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_177 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5487);
    acc = acc + m_hist[idx] + 32'd5494;
    idx = (idx + acc + 32'd5501) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5508);
    acc = acc + m_hist[idx] + 32'd5515;
    idx = (idx + acc + 32'd5522) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5529);
    acc = acc + m_hist[idx] + 32'd5536;
    idx = (idx + acc + 32'd5543) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5550);
    acc = acc + m_hist[idx] + 32'd5557;
    idx = (idx + acc + 32'd5564) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5571);
    acc = acc + m_hist[idx] + 32'd5578;
    idx = (idx + acc + 32'd5585) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5592);
    acc = acc + m_hist[idx] + 32'd5599;
    idx = (idx + acc + 32'd5606) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5613);
    acc = acc + m_hist[idx] + 32'd5620;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5500);
    acc = acc + m_hist[idx] + 32'd5507;
    idx = (idx + acc + 32'd5514) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5521);
    acc = acc + m_hist[idx] + 32'd5528;
    idx = (idx + acc + 32'd5535) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5542);
    acc = acc + m_hist[idx] + 32'd5549;
    idx = (idx + acc + 32'd5556) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5563);
    acc = acc + m_hist[idx] + 32'd5570;
    idx = (idx + acc + 32'd5577) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5584);
    acc = acc + m_hist[idx] + 32'd5591;
    idx = (idx + acc + 32'd5598) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5605);
    acc = acc + m_hist[idx] + 32'd5612;
    idx = (idx + acc + 32'd5619) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5626);
    acc = acc + m_hist[idx] + 32'd5633;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5513);
    acc = acc + m_hist[idx] + 32'd5520;
    idx = (idx + acc + 32'd5527) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5534);
    acc = acc + m_hist[idx] + 32'd5541;
    idx = (idx + acc + 32'd5548) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5555);
    acc = acc + m_hist[idx] + 32'd5562;
    idx = (idx + acc + 32'd5569) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5576);
    acc = acc + m_hist[idx] + 32'd5583;
    idx = (idx + acc + 32'd5590) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5597);
    acc = acc + m_hist[idx] + 32'd5604;
    idx = (idx + acc + 32'd5611) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5618);
    acc = acc + m_hist[idx] + 32'd5625;
    idx = (idx + acc + 32'd5632) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5639);
    acc = acc + m_hist[idx] + 32'd5646;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_178 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5518);
    acc = acc + m_hist[idx] + 32'd5525;
    idx = (idx + acc + 32'd5532) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5539);
    acc = acc + m_hist[idx] + 32'd5546;
    idx = (idx + acc + 32'd5553) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5560);
    acc = acc + m_hist[idx] + 32'd5567;
    idx = (idx + acc + 32'd5574) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5581);
    acc = acc + m_hist[idx] + 32'd5588;
    idx = (idx + acc + 32'd5595) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5602);
    acc = acc + m_hist[idx] + 32'd5609;
    idx = (idx + acc + 32'd5616) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5623);
    acc = acc + m_hist[idx] + 32'd5630;
    idx = (idx + acc + 32'd5637) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5644);
    acc = acc + m_hist[idx] + 32'd5651;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5531);
    acc = acc + m_hist[idx] + 32'd5538;
    idx = (idx + acc + 32'd5545) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5552);
    acc = acc + m_hist[idx] + 32'd5559;
    idx = (idx + acc + 32'd5566) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5573);
    acc = acc + m_hist[idx] + 32'd5580;
    idx = (idx + acc + 32'd5587) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5594);
    acc = acc + m_hist[idx] + 32'd5601;
    idx = (idx + acc + 32'd5608) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5615);
    acc = acc + m_hist[idx] + 32'd5622;
    idx = (idx + acc + 32'd5629) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5636);
    acc = acc + m_hist[idx] + 32'd5643;
    idx = (idx + acc + 32'd5650) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5657);
    acc = acc + m_hist[idx] + 32'd5664;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5544);
    acc = acc + m_hist[idx] + 32'd5551;
    idx = (idx + acc + 32'd5558) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5565);
    acc = acc + m_hist[idx] + 32'd5572;
    idx = (idx + acc + 32'd5579) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5586);
    acc = acc + m_hist[idx] + 32'd5593;
    idx = (idx + acc + 32'd5600) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5607);
    acc = acc + m_hist[idx] + 32'd5614;
    idx = (idx + acc + 32'd5621) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5628);
    acc = acc + m_hist[idx] + 32'd5635;
    idx = (idx + acc + 32'd5642) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5649);
    acc = acc + m_hist[idx] + 32'd5656;
    idx = (idx + acc + 32'd5663) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5670);
    acc = acc + m_hist[idx] + 32'd5677;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_179 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5549);
    acc = acc + m_hist[idx] + 32'd5556;
    idx = (idx + acc + 32'd5563) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5570);
    acc = acc + m_hist[idx] + 32'd5577;
    idx = (idx + acc + 32'd5584) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5591);
    acc = acc + m_hist[idx] + 32'd5598;
    idx = (idx + acc + 32'd5605) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5612);
    acc = acc + m_hist[idx] + 32'd5619;
    idx = (idx + acc + 32'd5626) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5633);
    acc = acc + m_hist[idx] + 32'd5640;
    idx = (idx + acc + 32'd5647) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5654);
    acc = acc + m_hist[idx] + 32'd5661;
    idx = (idx + acc + 32'd5668) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5675);
    acc = acc + m_hist[idx] + 32'd5682;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5562);
    acc = acc + m_hist[idx] + 32'd5569;
    idx = (idx + acc + 32'd5576) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5583);
    acc = acc + m_hist[idx] + 32'd5590;
    idx = (idx + acc + 32'd5597) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5604);
    acc = acc + m_hist[idx] + 32'd5611;
    idx = (idx + acc + 32'd5618) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5625);
    acc = acc + m_hist[idx] + 32'd5632;
    idx = (idx + acc + 32'd5639) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5646);
    acc = acc + m_hist[idx] + 32'd5653;
    idx = (idx + acc + 32'd5660) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5667);
    acc = acc + m_hist[idx] + 32'd5674;
    idx = (idx + acc + 32'd5681) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5688);
    acc = acc + m_hist[idx] + 32'd5695;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5575);
    acc = acc + m_hist[idx] + 32'd5582;
    idx = (idx + acc + 32'd5589) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5596);
    acc = acc + m_hist[idx] + 32'd5603;
    idx = (idx + acc + 32'd5610) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5617);
    acc = acc + m_hist[idx] + 32'd5624;
    idx = (idx + acc + 32'd5631) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5638);
    acc = acc + m_hist[idx] + 32'd5645;
    idx = (idx + acc + 32'd5652) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5659);
    acc = acc + m_hist[idx] + 32'd5666;
    idx = (idx + acc + 32'd5673) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5680);
    acc = acc + m_hist[idx] + 32'd5687;
    idx = (idx + acc + 32'd5694) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5701);
    acc = acc + m_hist[idx] + 32'd5708;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_180 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5580);
    acc = acc + m_hist[idx] + 32'd5587;
    idx = (idx + acc + 32'd5594) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5601);
    acc = acc + m_hist[idx] + 32'd5608;
    idx = (idx + acc + 32'd5615) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5622);
    acc = acc + m_hist[idx] + 32'd5629;
    idx = (idx + acc + 32'd5636) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5643);
    acc = acc + m_hist[idx] + 32'd5650;
    idx = (idx + acc + 32'd5657) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5664);
    acc = acc + m_hist[idx] + 32'd5671;
    idx = (idx + acc + 32'd5678) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5685);
    acc = acc + m_hist[idx] + 32'd5692;
    idx = (idx + acc + 32'd5699) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5706);
    acc = acc + m_hist[idx] + 32'd5713;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5593);
    acc = acc + m_hist[idx] + 32'd5600;
    idx = (idx + acc + 32'd5607) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5614);
    acc = acc + m_hist[idx] + 32'd5621;
    idx = (idx + acc + 32'd5628) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5635);
    acc = acc + m_hist[idx] + 32'd5642;
    idx = (idx + acc + 32'd5649) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5656);
    acc = acc + m_hist[idx] + 32'd5663;
    idx = (idx + acc + 32'd5670) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5677);
    acc = acc + m_hist[idx] + 32'd5684;
    idx = (idx + acc + 32'd5691) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5698);
    acc = acc + m_hist[idx] + 32'd5705;
    idx = (idx + acc + 32'd5712) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5719);
    acc = acc + m_hist[idx] + 32'd5726;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5606);
    acc = acc + m_hist[idx] + 32'd5613;
    idx = (idx + acc + 32'd5620) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5627);
    acc = acc + m_hist[idx] + 32'd5634;
    idx = (idx + acc + 32'd5641) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5648);
    acc = acc + m_hist[idx] + 32'd5655;
    idx = (idx + acc + 32'd5662) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5669);
    acc = acc + m_hist[idx] + 32'd5676;
    idx = (idx + acc + 32'd5683) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5690);
    acc = acc + m_hist[idx] + 32'd5697;
    idx = (idx + acc + 32'd5704) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5711);
    acc = acc + m_hist[idx] + 32'd5718;
    idx = (idx + acc + 32'd5725) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5732);
    acc = acc + m_hist[idx] + 32'd5739;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_181 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5611);
    acc = acc + m_hist[idx] + 32'd5618;
    idx = (idx + acc + 32'd5625) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5632);
    acc = acc + m_hist[idx] + 32'd5639;
    idx = (idx + acc + 32'd5646) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5653);
    acc = acc + m_hist[idx] + 32'd5660;
    idx = (idx + acc + 32'd5667) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5674);
    acc = acc + m_hist[idx] + 32'd5681;
    idx = (idx + acc + 32'd5688) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5695);
    acc = acc + m_hist[idx] + 32'd5702;
    idx = (idx + acc + 32'd5709) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5716);
    acc = acc + m_hist[idx] + 32'd5723;
    idx = (idx + acc + 32'd5730) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5737);
    acc = acc + m_hist[idx] + 32'd5744;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5624);
    acc = acc + m_hist[idx] + 32'd5631;
    idx = (idx + acc + 32'd5638) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5645);
    acc = acc + m_hist[idx] + 32'd5652;
    idx = (idx + acc + 32'd5659) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5666);
    acc = acc + m_hist[idx] + 32'd5673;
    idx = (idx + acc + 32'd5680) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5687);
    acc = acc + m_hist[idx] + 32'd5694;
    idx = (idx + acc + 32'd5701) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5708);
    acc = acc + m_hist[idx] + 32'd5715;
    idx = (idx + acc + 32'd5722) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5729);
    acc = acc + m_hist[idx] + 32'd5736;
    idx = (idx + acc + 32'd5743) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5750);
    acc = acc + m_hist[idx] + 32'd5757;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5637);
    acc = acc + m_hist[idx] + 32'd5644;
    idx = (idx + acc + 32'd5651) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5658);
    acc = acc + m_hist[idx] + 32'd5665;
    idx = (idx + acc + 32'd5672) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5679);
    acc = acc + m_hist[idx] + 32'd5686;
    idx = (idx + acc + 32'd5693) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5700);
    acc = acc + m_hist[idx] + 32'd5707;
    idx = (idx + acc + 32'd5714) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5721);
    acc = acc + m_hist[idx] + 32'd5728;
    idx = (idx + acc + 32'd5735) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5742);
    acc = acc + m_hist[idx] + 32'd5749;
    idx = (idx + acc + 32'd5756) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5763);
    acc = acc + m_hist[idx] + 32'd5770;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_182 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5642);
    acc = acc + m_hist[idx] + 32'd5649;
    idx = (idx + acc + 32'd5656) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5663);
    acc = acc + m_hist[idx] + 32'd5670;
    idx = (idx + acc + 32'd5677) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5684);
    acc = acc + m_hist[idx] + 32'd5691;
    idx = (idx + acc + 32'd5698) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5705);
    acc = acc + m_hist[idx] + 32'd5712;
    idx = (idx + acc + 32'd5719) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5726);
    acc = acc + m_hist[idx] + 32'd5733;
    idx = (idx + acc + 32'd5740) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5747);
    acc = acc + m_hist[idx] + 32'd5754;
    idx = (idx + acc + 32'd5761) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5768);
    acc = acc + m_hist[idx] + 32'd5775;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5655);
    acc = acc + m_hist[idx] + 32'd5662;
    idx = (idx + acc + 32'd5669) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5676);
    acc = acc + m_hist[idx] + 32'd5683;
    idx = (idx + acc + 32'd5690) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5697);
    acc = acc + m_hist[idx] + 32'd5704;
    idx = (idx + acc + 32'd5711) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5718);
    acc = acc + m_hist[idx] + 32'd5725;
    idx = (idx + acc + 32'd5732) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5739);
    acc = acc + m_hist[idx] + 32'd5746;
    idx = (idx + acc + 32'd5753) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5760);
    acc = acc + m_hist[idx] + 32'd5767;
    idx = (idx + acc + 32'd5774) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5781);
    acc = acc + m_hist[idx] + 32'd5788;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5668);
    acc = acc + m_hist[idx] + 32'd5675;
    idx = (idx + acc + 32'd5682) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5689);
    acc = acc + m_hist[idx] + 32'd5696;
    idx = (idx + acc + 32'd5703) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5710);
    acc = acc + m_hist[idx] + 32'd5717;
    idx = (idx + acc + 32'd5724) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5731);
    acc = acc + m_hist[idx] + 32'd5738;
    idx = (idx + acc + 32'd5745) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5752);
    acc = acc + m_hist[idx] + 32'd5759;
    idx = (idx + acc + 32'd5766) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5773);
    acc = acc + m_hist[idx] + 32'd5780;
    idx = (idx + acc + 32'd5787) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5794);
    acc = acc + m_hist[idx] + 32'd5801;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_183 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5673);
    acc = acc + m_hist[idx] + 32'd5680;
    idx = (idx + acc + 32'd5687) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5694);
    acc = acc + m_hist[idx] + 32'd5701;
    idx = (idx + acc + 32'd5708) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5715);
    acc = acc + m_hist[idx] + 32'd5722;
    idx = (idx + acc + 32'd5729) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5736);
    acc = acc + m_hist[idx] + 32'd5743;
    idx = (idx + acc + 32'd5750) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5757);
    acc = acc + m_hist[idx] + 32'd5764;
    idx = (idx + acc + 32'd5771) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5778);
    acc = acc + m_hist[idx] + 32'd5785;
    idx = (idx + acc + 32'd5792) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5799);
    acc = acc + m_hist[idx] + 32'd5806;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5686);
    acc = acc + m_hist[idx] + 32'd5693;
    idx = (idx + acc + 32'd5700) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5707);
    acc = acc + m_hist[idx] + 32'd5714;
    idx = (idx + acc + 32'd5721) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5728);
    acc = acc + m_hist[idx] + 32'd5735;
    idx = (idx + acc + 32'd5742) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5749);
    acc = acc + m_hist[idx] + 32'd5756;
    idx = (idx + acc + 32'd5763) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5770);
    acc = acc + m_hist[idx] + 32'd5777;
    idx = (idx + acc + 32'd5784) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5791);
    acc = acc + m_hist[idx] + 32'd5798;
    idx = (idx + acc + 32'd5805) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5812);
    acc = acc + m_hist[idx] + 32'd5819;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5699);
    acc = acc + m_hist[idx] + 32'd5706;
    idx = (idx + acc + 32'd5713) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5720);
    acc = acc + m_hist[idx] + 32'd5727;
    idx = (idx + acc + 32'd5734) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5741);
    acc = acc + m_hist[idx] + 32'd5748;
    idx = (idx + acc + 32'd5755) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5762);
    acc = acc + m_hist[idx] + 32'd5769;
    idx = (idx + acc + 32'd5776) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5783);
    acc = acc + m_hist[idx] + 32'd5790;
    idx = (idx + acc + 32'd5797) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5804);
    acc = acc + m_hist[idx] + 32'd5811;
    idx = (idx + acc + 32'd5818) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5825);
    acc = acc + m_hist[idx] + 32'd5832;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_184 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5704);
    acc = acc + m_hist[idx] + 32'd5711;
    idx = (idx + acc + 32'd5718) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5725);
    acc = acc + m_hist[idx] + 32'd5732;
    idx = (idx + acc + 32'd5739) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5746);
    acc = acc + m_hist[idx] + 32'd5753;
    idx = (idx + acc + 32'd5760) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5767);
    acc = acc + m_hist[idx] + 32'd5774;
    idx = (idx + acc + 32'd5781) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5788);
    acc = acc + m_hist[idx] + 32'd5795;
    idx = (idx + acc + 32'd5802) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5809);
    acc = acc + m_hist[idx] + 32'd5816;
    idx = (idx + acc + 32'd5823) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5830);
    acc = acc + m_hist[idx] + 32'd5837;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5717);
    acc = acc + m_hist[idx] + 32'd5724;
    idx = (idx + acc + 32'd5731) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5738);
    acc = acc + m_hist[idx] + 32'd5745;
    idx = (idx + acc + 32'd5752) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5759);
    acc = acc + m_hist[idx] + 32'd5766;
    idx = (idx + acc + 32'd5773) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5780);
    acc = acc + m_hist[idx] + 32'd5787;
    idx = (idx + acc + 32'd5794) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5801);
    acc = acc + m_hist[idx] + 32'd5808;
    idx = (idx + acc + 32'd5815) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5822);
    acc = acc + m_hist[idx] + 32'd5829;
    idx = (idx + acc + 32'd5836) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5843);
    acc = acc + m_hist[idx] + 32'd5850;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5730);
    acc = acc + m_hist[idx] + 32'd5737;
    idx = (idx + acc + 32'd5744) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5751);
    acc = acc + m_hist[idx] + 32'd5758;
    idx = (idx + acc + 32'd5765) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5772);
    acc = acc + m_hist[idx] + 32'd5779;
    idx = (idx + acc + 32'd5786) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5793);
    acc = acc + m_hist[idx] + 32'd5800;
    idx = (idx + acc + 32'd5807) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5814);
    acc = acc + m_hist[idx] + 32'd5821;
    idx = (idx + acc + 32'd5828) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5835);
    acc = acc + m_hist[idx] + 32'd5842;
    idx = (idx + acc + 32'd5849) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5856);
    acc = acc + m_hist[idx] + 32'd5863;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_185 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5735);
    acc = acc + m_hist[idx] + 32'd5742;
    idx = (idx + acc + 32'd5749) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5756);
    acc = acc + m_hist[idx] + 32'd5763;
    idx = (idx + acc + 32'd5770) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5777);
    acc = acc + m_hist[idx] + 32'd5784;
    idx = (idx + acc + 32'd5791) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5798);
    acc = acc + m_hist[idx] + 32'd5805;
    idx = (idx + acc + 32'd5812) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5819);
    acc = acc + m_hist[idx] + 32'd5826;
    idx = (idx + acc + 32'd5833) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5840);
    acc = acc + m_hist[idx] + 32'd5847;
    idx = (idx + acc + 32'd5854) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5861);
    acc = acc + m_hist[idx] + 32'd5868;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5748);
    acc = acc + m_hist[idx] + 32'd5755;
    idx = (idx + acc + 32'd5762) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5769);
    acc = acc + m_hist[idx] + 32'd5776;
    idx = (idx + acc + 32'd5783) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5790);
    acc = acc + m_hist[idx] + 32'd5797;
    idx = (idx + acc + 32'd5804) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5811);
    acc = acc + m_hist[idx] + 32'd5818;
    idx = (idx + acc + 32'd5825) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5832);
    acc = acc + m_hist[idx] + 32'd5839;
    idx = (idx + acc + 32'd5846) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5853);
    acc = acc + m_hist[idx] + 32'd5860;
    idx = (idx + acc + 32'd5867) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5874);
    acc = acc + m_hist[idx] + 32'd5881;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5761);
    acc = acc + m_hist[idx] + 32'd5768;
    idx = (idx + acc + 32'd5775) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5782);
    acc = acc + m_hist[idx] + 32'd5789;
    idx = (idx + acc + 32'd5796) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5803);
    acc = acc + m_hist[idx] + 32'd5810;
    idx = (idx + acc + 32'd5817) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5824);
    acc = acc + m_hist[idx] + 32'd5831;
    idx = (idx + acc + 32'd5838) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5845);
    acc = acc + m_hist[idx] + 32'd5852;
    idx = (idx + acc + 32'd5859) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5866);
    acc = acc + m_hist[idx] + 32'd5873;
    idx = (idx + acc + 32'd5880) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5887);
    acc = acc + m_hist[idx] + 32'd5894;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_186 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5766);
    acc = acc + m_hist[idx] + 32'd5773;
    idx = (idx + acc + 32'd5780) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5787);
    acc = acc + m_hist[idx] + 32'd5794;
    idx = (idx + acc + 32'd5801) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5808);
    acc = acc + m_hist[idx] + 32'd5815;
    idx = (idx + acc + 32'd5822) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5829);
    acc = acc + m_hist[idx] + 32'd5836;
    idx = (idx + acc + 32'd5843) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5850);
    acc = acc + m_hist[idx] + 32'd5857;
    idx = (idx + acc + 32'd5864) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5871);
    acc = acc + m_hist[idx] + 32'd5878;
    idx = (idx + acc + 32'd5885) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5892);
    acc = acc + m_hist[idx] + 32'd5899;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5779);
    acc = acc + m_hist[idx] + 32'd5786;
    idx = (idx + acc + 32'd5793) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5800);
    acc = acc + m_hist[idx] + 32'd5807;
    idx = (idx + acc + 32'd5814) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5821);
    acc = acc + m_hist[idx] + 32'd5828;
    idx = (idx + acc + 32'd5835) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5842);
    acc = acc + m_hist[idx] + 32'd5849;
    idx = (idx + acc + 32'd5856) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5863);
    acc = acc + m_hist[idx] + 32'd5870;
    idx = (idx + acc + 32'd5877) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5884);
    acc = acc + m_hist[idx] + 32'd5891;
    idx = (idx + acc + 32'd5898) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5905);
    acc = acc + m_hist[idx] + 32'd5912;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5792);
    acc = acc + m_hist[idx] + 32'd5799;
    idx = (idx + acc + 32'd5806) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5813);
    acc = acc + m_hist[idx] + 32'd5820;
    idx = (idx + acc + 32'd5827) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5834);
    acc = acc + m_hist[idx] + 32'd5841;
    idx = (idx + acc + 32'd5848) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5855);
    acc = acc + m_hist[idx] + 32'd5862;
    idx = (idx + acc + 32'd5869) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5876);
    acc = acc + m_hist[idx] + 32'd5883;
    idx = (idx + acc + 32'd5890) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5897);
    acc = acc + m_hist[idx] + 32'd5904;
    idx = (idx + acc + 32'd5911) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5918);
    acc = acc + m_hist[idx] + 32'd5925;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_187 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5797);
    acc = acc + m_hist[idx] + 32'd5804;
    idx = (idx + acc + 32'd5811) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5818);
    acc = acc + m_hist[idx] + 32'd5825;
    idx = (idx + acc + 32'd5832) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5839);
    acc = acc + m_hist[idx] + 32'd5846;
    idx = (idx + acc + 32'd5853) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5860);
    acc = acc + m_hist[idx] + 32'd5867;
    idx = (idx + acc + 32'd5874) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5881);
    acc = acc + m_hist[idx] + 32'd5888;
    idx = (idx + acc + 32'd5895) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5902);
    acc = acc + m_hist[idx] + 32'd5909;
    idx = (idx + acc + 32'd5916) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5923);
    acc = acc + m_hist[idx] + 32'd5930;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5810);
    acc = acc + m_hist[idx] + 32'd5817;
    idx = (idx + acc + 32'd5824) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5831);
    acc = acc + m_hist[idx] + 32'd5838;
    idx = (idx + acc + 32'd5845) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5852);
    acc = acc + m_hist[idx] + 32'd5859;
    idx = (idx + acc + 32'd5866) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5873);
    acc = acc + m_hist[idx] + 32'd5880;
    idx = (idx + acc + 32'd5887) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5894);
    acc = acc + m_hist[idx] + 32'd5901;
    idx = (idx + acc + 32'd5908) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5915);
    acc = acc + m_hist[idx] + 32'd5922;
    idx = (idx + acc + 32'd5929) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5936);
    acc = acc + m_hist[idx] + 32'd5943;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5823);
    acc = acc + m_hist[idx] + 32'd5830;
    idx = (idx + acc + 32'd5837) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5844);
    acc = acc + m_hist[idx] + 32'd5851;
    idx = (idx + acc + 32'd5858) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5865);
    acc = acc + m_hist[idx] + 32'd5872;
    idx = (idx + acc + 32'd5879) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5886);
    acc = acc + m_hist[idx] + 32'd5893;
    idx = (idx + acc + 32'd5900) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5907);
    acc = acc + m_hist[idx] + 32'd5914;
    idx = (idx + acc + 32'd5921) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5928);
    acc = acc + m_hist[idx] + 32'd5935;
    idx = (idx + acc + 32'd5942) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5949);
    acc = acc + m_hist[idx] + 32'd5956;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_188 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5828);
    acc = acc + m_hist[idx] + 32'd5835;
    idx = (idx + acc + 32'd5842) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5849);
    acc = acc + m_hist[idx] + 32'd5856;
    idx = (idx + acc + 32'd5863) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5870);
    acc = acc + m_hist[idx] + 32'd5877;
    idx = (idx + acc + 32'd5884) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5891);
    acc = acc + m_hist[idx] + 32'd5898;
    idx = (idx + acc + 32'd5905) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5912);
    acc = acc + m_hist[idx] + 32'd5919;
    idx = (idx + acc + 32'd5926) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5933);
    acc = acc + m_hist[idx] + 32'd5940;
    idx = (idx + acc + 32'd5947) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5954);
    acc = acc + m_hist[idx] + 32'd5961;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5841);
    acc = acc + m_hist[idx] + 32'd5848;
    idx = (idx + acc + 32'd5855) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5862);
    acc = acc + m_hist[idx] + 32'd5869;
    idx = (idx + acc + 32'd5876) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5883);
    acc = acc + m_hist[idx] + 32'd5890;
    idx = (idx + acc + 32'd5897) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5904);
    acc = acc + m_hist[idx] + 32'd5911;
    idx = (idx + acc + 32'd5918) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5925);
    acc = acc + m_hist[idx] + 32'd5932;
    idx = (idx + acc + 32'd5939) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5946);
    acc = acc + m_hist[idx] + 32'd5953;
    idx = (idx + acc + 32'd5960) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5967);
    acc = acc + m_hist[idx] + 32'd5974;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5854);
    acc = acc + m_hist[idx] + 32'd5861;
    idx = (idx + acc + 32'd5868) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5875);
    acc = acc + m_hist[idx] + 32'd5882;
    idx = (idx + acc + 32'd5889) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5896);
    acc = acc + m_hist[idx] + 32'd5903;
    idx = (idx + acc + 32'd5910) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5917);
    acc = acc + m_hist[idx] + 32'd5924;
    idx = (idx + acc + 32'd5931) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5938);
    acc = acc + m_hist[idx] + 32'd5945;
    idx = (idx + acc + 32'd5952) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5959);
    acc = acc + m_hist[idx] + 32'd5966;
    idx = (idx + acc + 32'd5973) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5980);
    acc = acc + m_hist[idx] + 32'd5987;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_189 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5859);
    acc = acc + m_hist[idx] + 32'd5866;
    idx = (idx + acc + 32'd5873) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5880);
    acc = acc + m_hist[idx] + 32'd5887;
    idx = (idx + acc + 32'd5894) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5901);
    acc = acc + m_hist[idx] + 32'd5908;
    idx = (idx + acc + 32'd5915) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5922);
    acc = acc + m_hist[idx] + 32'd5929;
    idx = (idx + acc + 32'd5936) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5943);
    acc = acc + m_hist[idx] + 32'd5950;
    idx = (idx + acc + 32'd5957) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5964);
    acc = acc + m_hist[idx] + 32'd5971;
    idx = (idx + acc + 32'd5978) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5985);
    acc = acc + m_hist[idx] + 32'd5992;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5872);
    acc = acc + m_hist[idx] + 32'd5879;
    idx = (idx + acc + 32'd5886) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5893);
    acc = acc + m_hist[idx] + 32'd5900;
    idx = (idx + acc + 32'd5907) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5914);
    acc = acc + m_hist[idx] + 32'd5921;
    idx = (idx + acc + 32'd5928) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5935);
    acc = acc + m_hist[idx] + 32'd5942;
    idx = (idx + acc + 32'd5949) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5956);
    acc = acc + m_hist[idx] + 32'd5963;
    idx = (idx + acc + 32'd5970) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5977);
    acc = acc + m_hist[idx] + 32'd5984;
    idx = (idx + acc + 32'd5991) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5998);
    acc = acc + m_hist[idx] + 32'd6005;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5885);
    acc = acc + m_hist[idx] + 32'd5892;
    idx = (idx + acc + 32'd5899) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5906);
    acc = acc + m_hist[idx] + 32'd5913;
    idx = (idx + acc + 32'd5920) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5927);
    acc = acc + m_hist[idx] + 32'd5934;
    idx = (idx + acc + 32'd5941) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5948);
    acc = acc + m_hist[idx] + 32'd5955;
    idx = (idx + acc + 32'd5962) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5969);
    acc = acc + m_hist[idx] + 32'd5976;
    idx = (idx + acc + 32'd5983) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5990);
    acc = acc + m_hist[idx] + 32'd5997;
    idx = (idx + acc + 32'd6004) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6011);
    acc = acc + m_hist[idx] + 32'd6018;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_190 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5890);
    acc = acc + m_hist[idx] + 32'd5897;
    idx = (idx + acc + 32'd5904) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5911);
    acc = acc + m_hist[idx] + 32'd5918;
    idx = (idx + acc + 32'd5925) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5932);
    acc = acc + m_hist[idx] + 32'd5939;
    idx = (idx + acc + 32'd5946) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5953);
    acc = acc + m_hist[idx] + 32'd5960;
    idx = (idx + acc + 32'd5967) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5974);
    acc = acc + m_hist[idx] + 32'd5981;
    idx = (idx + acc + 32'd5988) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5995);
    acc = acc + m_hist[idx] + 32'd6002;
    idx = (idx + acc + 32'd6009) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6016);
    acc = acc + m_hist[idx] + 32'd6023;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5903);
    acc = acc + m_hist[idx] + 32'd5910;
    idx = (idx + acc + 32'd5917) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5924);
    acc = acc + m_hist[idx] + 32'd5931;
    idx = (idx + acc + 32'd5938) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5945);
    acc = acc + m_hist[idx] + 32'd5952;
    idx = (idx + acc + 32'd5959) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5966);
    acc = acc + m_hist[idx] + 32'd5973;
    idx = (idx + acc + 32'd5980) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5987);
    acc = acc + m_hist[idx] + 32'd5994;
    idx = (idx + acc + 32'd6001) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6008);
    acc = acc + m_hist[idx] + 32'd6015;
    idx = (idx + acc + 32'd6022) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6029);
    acc = acc + m_hist[idx] + 32'd6036;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5916);
    acc = acc + m_hist[idx] + 32'd5923;
    idx = (idx + acc + 32'd5930) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5937);
    acc = acc + m_hist[idx] + 32'd5944;
    idx = (idx + acc + 32'd5951) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5958);
    acc = acc + m_hist[idx] + 32'd5965;
    idx = (idx + acc + 32'd5972) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5979);
    acc = acc + m_hist[idx] + 32'd5986;
    idx = (idx + acc + 32'd5993) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6000);
    acc = acc + m_hist[idx] + 32'd6007;
    idx = (idx + acc + 32'd6014) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6021);
    acc = acc + m_hist[idx] + 32'd6028;
    idx = (idx + acc + 32'd6035) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6042);
    acc = acc + m_hist[idx] + 32'd6049;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_191 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5921);
    acc = acc + m_hist[idx] + 32'd5928;
    idx = (idx + acc + 32'd5935) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5942);
    acc = acc + m_hist[idx] + 32'd5949;
    idx = (idx + acc + 32'd5956) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5963);
    acc = acc + m_hist[idx] + 32'd5970;
    idx = (idx + acc + 32'd5977) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5984);
    acc = acc + m_hist[idx] + 32'd5991;
    idx = (idx + acc + 32'd5998) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6005);
    acc = acc + m_hist[idx] + 32'd6012;
    idx = (idx + acc + 32'd6019) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6026);
    acc = acc + m_hist[idx] + 32'd6033;
    idx = (idx + acc + 32'd6040) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6047);
    acc = acc + m_hist[idx] + 32'd6054;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5934);
    acc = acc + m_hist[idx] + 32'd5941;
    idx = (idx + acc + 32'd5948) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5955);
    acc = acc + m_hist[idx] + 32'd5962;
    idx = (idx + acc + 32'd5969) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5976);
    acc = acc + m_hist[idx] + 32'd5983;
    idx = (idx + acc + 32'd5990) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5997);
    acc = acc + m_hist[idx] + 32'd6004;
    idx = (idx + acc + 32'd6011) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6018);
    acc = acc + m_hist[idx] + 32'd6025;
    idx = (idx + acc + 32'd6032) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6039);
    acc = acc + m_hist[idx] + 32'd6046;
    idx = (idx + acc + 32'd6053) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6060);
    acc = acc + m_hist[idx] + 32'd6067;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5947);
    acc = acc + m_hist[idx] + 32'd5954;
    idx = (idx + acc + 32'd5961) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5968);
    acc = acc + m_hist[idx] + 32'd5975;
    idx = (idx + acc + 32'd5982) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5989);
    acc = acc + m_hist[idx] + 32'd5996;
    idx = (idx + acc + 32'd6003) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6010);
    acc = acc + m_hist[idx] + 32'd6017;
    idx = (idx + acc + 32'd6024) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6031);
    acc = acc + m_hist[idx] + 32'd6038;
    idx = (idx + acc + 32'd6045) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6052);
    acc = acc + m_hist[idx] + 32'd6059;
    idx = (idx + acc + 32'd6066) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6073);
    acc = acc + m_hist[idx] + 32'd6080;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_192 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5952);
    acc = acc + m_hist[idx] + 32'd5959;
    idx = (idx + acc + 32'd5966) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5973);
    acc = acc + m_hist[idx] + 32'd5980;
    idx = (idx + acc + 32'd5987) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5994);
    acc = acc + m_hist[idx] + 32'd6001;
    idx = (idx + acc + 32'd6008) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6015);
    acc = acc + m_hist[idx] + 32'd6022;
    idx = (idx + acc + 32'd6029) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6036);
    acc = acc + m_hist[idx] + 32'd6043;
    idx = (idx + acc + 32'd6050) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6057);
    acc = acc + m_hist[idx] + 32'd6064;
    idx = (idx + acc + 32'd6071) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6078);
    acc = acc + m_hist[idx] + 32'd6085;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5965);
    acc = acc + m_hist[idx] + 32'd5972;
    idx = (idx + acc + 32'd5979) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5986);
    acc = acc + m_hist[idx] + 32'd5993;
    idx = (idx + acc + 32'd6000) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6007);
    acc = acc + m_hist[idx] + 32'd6014;
    idx = (idx + acc + 32'd6021) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6028);
    acc = acc + m_hist[idx] + 32'd6035;
    idx = (idx + acc + 32'd6042) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6049);
    acc = acc + m_hist[idx] + 32'd6056;
    idx = (idx + acc + 32'd6063) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6070);
    acc = acc + m_hist[idx] + 32'd6077;
    idx = (idx + acc + 32'd6084) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6091);
    acc = acc + m_hist[idx] + 32'd6098;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5978);
    acc = acc + m_hist[idx] + 32'd5985;
    idx = (idx + acc + 32'd5992) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5999);
    acc = acc + m_hist[idx] + 32'd6006;
    idx = (idx + acc + 32'd6013) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6020);
    acc = acc + m_hist[idx] + 32'd6027;
    idx = (idx + acc + 32'd6034) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6041);
    acc = acc + m_hist[idx] + 32'd6048;
    idx = (idx + acc + 32'd6055) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6062);
    acc = acc + m_hist[idx] + 32'd6069;
    idx = (idx + acc + 32'd6076) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6083);
    acc = acc + m_hist[idx] + 32'd6090;
    idx = (idx + acc + 32'd6097) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6104);
    acc = acc + m_hist[idx] + 32'd6111;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_193 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5983);
    acc = acc + m_hist[idx] + 32'd5990;
    idx = (idx + acc + 32'd5997) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6004);
    acc = acc + m_hist[idx] + 32'd6011;
    idx = (idx + acc + 32'd6018) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6025);
    acc = acc + m_hist[idx] + 32'd6032;
    idx = (idx + acc + 32'd6039) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6046);
    acc = acc + m_hist[idx] + 32'd6053;
    idx = (idx + acc + 32'd6060) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6067);
    acc = acc + m_hist[idx] + 32'd6074;
    idx = (idx + acc + 32'd6081) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6088);
    acc = acc + m_hist[idx] + 32'd6095;
    idx = (idx + acc + 32'd6102) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6109);
    acc = acc + m_hist[idx] + 32'd6116;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd5996);
    acc = acc + m_hist[idx] + 32'd6003;
    idx = (idx + acc + 32'd6010) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6017);
    acc = acc + m_hist[idx] + 32'd6024;
    idx = (idx + acc + 32'd6031) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6038);
    acc = acc + m_hist[idx] + 32'd6045;
    idx = (idx + acc + 32'd6052) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6059);
    acc = acc + m_hist[idx] + 32'd6066;
    idx = (idx + acc + 32'd6073) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6080);
    acc = acc + m_hist[idx] + 32'd6087;
    idx = (idx + acc + 32'd6094) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6101);
    acc = acc + m_hist[idx] + 32'd6108;
    idx = (idx + acc + 32'd6115) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6122);
    acc = acc + m_hist[idx] + 32'd6129;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6009);
    acc = acc + m_hist[idx] + 32'd6016;
    idx = (idx + acc + 32'd6023) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6030);
    acc = acc + m_hist[idx] + 32'd6037;
    idx = (idx + acc + 32'd6044) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6051);
    acc = acc + m_hist[idx] + 32'd6058;
    idx = (idx + acc + 32'd6065) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6072);
    acc = acc + m_hist[idx] + 32'd6079;
    idx = (idx + acc + 32'd6086) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6093);
    acc = acc + m_hist[idx] + 32'd6100;
    idx = (idx + acc + 32'd6107) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6114);
    acc = acc + m_hist[idx] + 32'd6121;
    idx = (idx + acc + 32'd6128) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6135);
    acc = acc + m_hist[idx] + 32'd6142;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_194 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6014);
    acc = acc + m_hist[idx] + 32'd6021;
    idx = (idx + acc + 32'd6028) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6035);
    acc = acc + m_hist[idx] + 32'd6042;
    idx = (idx + acc + 32'd6049) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6056);
    acc = acc + m_hist[idx] + 32'd6063;
    idx = (idx + acc + 32'd6070) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6077);
    acc = acc + m_hist[idx] + 32'd6084;
    idx = (idx + acc + 32'd6091) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6098);
    acc = acc + m_hist[idx] + 32'd6105;
    idx = (idx + acc + 32'd6112) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6119);
    acc = acc + m_hist[idx] + 32'd6126;
    idx = (idx + acc + 32'd6133) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6140);
    acc = acc + m_hist[idx] + 32'd6147;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6027);
    acc = acc + m_hist[idx] + 32'd6034;
    idx = (idx + acc + 32'd6041) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6048);
    acc = acc + m_hist[idx] + 32'd6055;
    idx = (idx + acc + 32'd6062) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6069);
    acc = acc + m_hist[idx] + 32'd6076;
    idx = (idx + acc + 32'd6083) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6090);
    acc = acc + m_hist[idx] + 32'd6097;
    idx = (idx + acc + 32'd6104) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6111);
    acc = acc + m_hist[idx] + 32'd6118;
    idx = (idx + acc + 32'd6125) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6132);
    acc = acc + m_hist[idx] + 32'd6139;
    idx = (idx + acc + 32'd6146) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6153);
    acc = acc + m_hist[idx] + 32'd6160;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6040);
    acc = acc + m_hist[idx] + 32'd6047;
    idx = (idx + acc + 32'd6054) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6061);
    acc = acc + m_hist[idx] + 32'd6068;
    idx = (idx + acc + 32'd6075) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6082);
    acc = acc + m_hist[idx] + 32'd6089;
    idx = (idx + acc + 32'd6096) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6103);
    acc = acc + m_hist[idx] + 32'd6110;
    idx = (idx + acc + 32'd6117) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6124);
    acc = acc + m_hist[idx] + 32'd6131;
    idx = (idx + acc + 32'd6138) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6145);
    acc = acc + m_hist[idx] + 32'd6152;
    idx = (idx + acc + 32'd6159) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6166);
    acc = acc + m_hist[idx] + 32'd6173;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_195 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6045);
    acc = acc + m_hist[idx] + 32'd6052;
    idx = (idx + acc + 32'd6059) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6066);
    acc = acc + m_hist[idx] + 32'd6073;
    idx = (idx + acc + 32'd6080) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6087);
    acc = acc + m_hist[idx] + 32'd6094;
    idx = (idx + acc + 32'd6101) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6108);
    acc = acc + m_hist[idx] + 32'd6115;
    idx = (idx + acc + 32'd6122) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6129);
    acc = acc + m_hist[idx] + 32'd6136;
    idx = (idx + acc + 32'd6143) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6150);
    acc = acc + m_hist[idx] + 32'd6157;
    idx = (idx + acc + 32'd6164) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6171);
    acc = acc + m_hist[idx] + 32'd6178;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6058);
    acc = acc + m_hist[idx] + 32'd6065;
    idx = (idx + acc + 32'd6072) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6079);
    acc = acc + m_hist[idx] + 32'd6086;
    idx = (idx + acc + 32'd6093) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6100);
    acc = acc + m_hist[idx] + 32'd6107;
    idx = (idx + acc + 32'd6114) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6121);
    acc = acc + m_hist[idx] + 32'd6128;
    idx = (idx + acc + 32'd6135) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6142);
    acc = acc + m_hist[idx] + 32'd6149;
    idx = (idx + acc + 32'd6156) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6163);
    acc = acc + m_hist[idx] + 32'd6170;
    idx = (idx + acc + 32'd6177) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6184);
    acc = acc + m_hist[idx] + 32'd6191;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6071);
    acc = acc + m_hist[idx] + 32'd6078;
    idx = (idx + acc + 32'd6085) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6092);
    acc = acc + m_hist[idx] + 32'd6099;
    idx = (idx + acc + 32'd6106) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6113);
    acc = acc + m_hist[idx] + 32'd6120;
    idx = (idx + acc + 32'd6127) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6134);
    acc = acc + m_hist[idx] + 32'd6141;
    idx = (idx + acc + 32'd6148) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6155);
    acc = acc + m_hist[idx] + 32'd6162;
    idx = (idx + acc + 32'd6169) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6176);
    acc = acc + m_hist[idx] + 32'd6183;
    idx = (idx + acc + 32'd6190) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6197);
    acc = acc + m_hist[idx] + 32'd6204;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_196 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6076);
    acc = acc + m_hist[idx] + 32'd6083;
    idx = (idx + acc + 32'd6090) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6097);
    acc = acc + m_hist[idx] + 32'd6104;
    idx = (idx + acc + 32'd6111) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6118);
    acc = acc + m_hist[idx] + 32'd6125;
    idx = (idx + acc + 32'd6132) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6139);
    acc = acc + m_hist[idx] + 32'd6146;
    idx = (idx + acc + 32'd6153) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6160);
    acc = acc + m_hist[idx] + 32'd6167;
    idx = (idx + acc + 32'd6174) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6181);
    acc = acc + m_hist[idx] + 32'd6188;
    idx = (idx + acc + 32'd6195) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6202);
    acc = acc + m_hist[idx] + 32'd6209;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6089);
    acc = acc + m_hist[idx] + 32'd6096;
    idx = (idx + acc + 32'd6103) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6110);
    acc = acc + m_hist[idx] + 32'd6117;
    idx = (idx + acc + 32'd6124) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6131);
    acc = acc + m_hist[idx] + 32'd6138;
    idx = (idx + acc + 32'd6145) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6152);
    acc = acc + m_hist[idx] + 32'd6159;
    idx = (idx + acc + 32'd6166) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6173);
    acc = acc + m_hist[idx] + 32'd6180;
    idx = (idx + acc + 32'd6187) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6194);
    acc = acc + m_hist[idx] + 32'd6201;
    idx = (idx + acc + 32'd6208) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6215);
    acc = acc + m_hist[idx] + 32'd6222;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6102);
    acc = acc + m_hist[idx] + 32'd6109;
    idx = (idx + acc + 32'd6116) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6123);
    acc = acc + m_hist[idx] + 32'd6130;
    idx = (idx + acc + 32'd6137) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6144);
    acc = acc + m_hist[idx] + 32'd6151;
    idx = (idx + acc + 32'd6158) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6165);
    acc = acc + m_hist[idx] + 32'd6172;
    idx = (idx + acc + 32'd6179) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6186);
    acc = acc + m_hist[idx] + 32'd6193;
    idx = (idx + acc + 32'd6200) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6207);
    acc = acc + m_hist[idx] + 32'd6214;
    idx = (idx + acc + 32'd6221) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6228);
    acc = acc + m_hist[idx] + 32'd6235;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_197 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6107);
    acc = acc + m_hist[idx] + 32'd6114;
    idx = (idx + acc + 32'd6121) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6128);
    acc = acc + m_hist[idx] + 32'd6135;
    idx = (idx + acc + 32'd6142) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6149);
    acc = acc + m_hist[idx] + 32'd6156;
    idx = (idx + acc + 32'd6163) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6170);
    acc = acc + m_hist[idx] + 32'd6177;
    idx = (idx + acc + 32'd6184) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6191);
    acc = acc + m_hist[idx] + 32'd6198;
    idx = (idx + acc + 32'd6205) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6212);
    acc = acc + m_hist[idx] + 32'd6219;
    idx = (idx + acc + 32'd6226) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6233);
    acc = acc + m_hist[idx] + 32'd6240;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6120);
    acc = acc + m_hist[idx] + 32'd6127;
    idx = (idx + acc + 32'd6134) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6141);
    acc = acc + m_hist[idx] + 32'd6148;
    idx = (idx + acc + 32'd6155) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6162);
    acc = acc + m_hist[idx] + 32'd6169;
    idx = (idx + acc + 32'd6176) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6183);
    acc = acc + m_hist[idx] + 32'd6190;
    idx = (idx + acc + 32'd6197) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6204);
    acc = acc + m_hist[idx] + 32'd6211;
    idx = (idx + acc + 32'd6218) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6225);
    acc = acc + m_hist[idx] + 32'd6232;
    idx = (idx + acc + 32'd6239) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6246);
    acc = acc + m_hist[idx] + 32'd6253;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6133);
    acc = acc + m_hist[idx] + 32'd6140;
    idx = (idx + acc + 32'd6147) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6154);
    acc = acc + m_hist[idx] + 32'd6161;
    idx = (idx + acc + 32'd6168) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6175);
    acc = acc + m_hist[idx] + 32'd6182;
    idx = (idx + acc + 32'd6189) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6196);
    acc = acc + m_hist[idx] + 32'd6203;
    idx = (idx + acc + 32'd6210) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6217);
    acc = acc + m_hist[idx] + 32'd6224;
    idx = (idx + acc + 32'd6231) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6238);
    acc = acc + m_hist[idx] + 32'd6245;
    idx = (idx + acc + 32'd6252) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6259);
    acc = acc + m_hist[idx] + 32'd6266;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_198 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6138);
    acc = acc + m_hist[idx] + 32'd6145;
    idx = (idx + acc + 32'd6152) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6159);
    acc = acc + m_hist[idx] + 32'd6166;
    idx = (idx + acc + 32'd6173) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6180);
    acc = acc + m_hist[idx] + 32'd6187;
    idx = (idx + acc + 32'd6194) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6201);
    acc = acc + m_hist[idx] + 32'd6208;
    idx = (idx + acc + 32'd6215) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6222);
    acc = acc + m_hist[idx] + 32'd6229;
    idx = (idx + acc + 32'd6236) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6243);
    acc = acc + m_hist[idx] + 32'd6250;
    idx = (idx + acc + 32'd6257) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6264);
    acc = acc + m_hist[idx] + 32'd6271;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6151);
    acc = acc + m_hist[idx] + 32'd6158;
    idx = (idx + acc + 32'd6165) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6172);
    acc = acc + m_hist[idx] + 32'd6179;
    idx = (idx + acc + 32'd6186) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6193);
    acc = acc + m_hist[idx] + 32'd6200;
    idx = (idx + acc + 32'd6207) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6214);
    acc = acc + m_hist[idx] + 32'd6221;
    idx = (idx + acc + 32'd6228) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6235);
    acc = acc + m_hist[idx] + 32'd6242;
    idx = (idx + acc + 32'd6249) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6256);
    acc = acc + m_hist[idx] + 32'd6263;
    idx = (idx + acc + 32'd6270) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6277);
    acc = acc + m_hist[idx] + 32'd6284;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6164);
    acc = acc + m_hist[idx] + 32'd6171;
    idx = (idx + acc + 32'd6178) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6185);
    acc = acc + m_hist[idx] + 32'd6192;
    idx = (idx + acc + 32'd6199) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6206);
    acc = acc + m_hist[idx] + 32'd6213;
    idx = (idx + acc + 32'd6220) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6227);
    acc = acc + m_hist[idx] + 32'd6234;
    idx = (idx + acc + 32'd6241) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6248);
    acc = acc + m_hist[idx] + 32'd6255;
    idx = (idx + acc + 32'd6262) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6269);
    acc = acc + m_hist[idx] + 32'd6276;
    idx = (idx + acc + 32'd6283) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6290);
    acc = acc + m_hist[idx] + 32'd6297;
    m_seed = acc;
    return acc;
  endfunction
endclass

class mc_comp_199 extends mc_base;
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
    idx = (seed + 0) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6169);
    acc = acc + m_hist[idx] + 32'd6176;
    idx = (idx + acc + 32'd6183) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6190);
    acc = acc + m_hist[idx] + 32'd6197;
    idx = (idx + acc + 32'd6204) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6211);
    acc = acc + m_hist[idx] + 32'd6218;
    idx = (idx + acc + 32'd6225) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6232);
    acc = acc + m_hist[idx] + 32'd6239;
    idx = (idx + acc + 32'd6246) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6253);
    acc = acc + m_hist[idx] + 32'd6260;
    idx = (idx + acc + 32'd6267) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6274);
    acc = acc + m_hist[idx] + 32'd6281;
    idx = (idx + acc + 32'd6288) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6295);
    acc = acc + m_hist[idx] + 32'd6302;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op1(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 1) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6182);
    acc = acc + m_hist[idx] + 32'd6189;
    idx = (idx + acc + 32'd6196) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6203);
    acc = acc + m_hist[idx] + 32'd6210;
    idx = (idx + acc + 32'd6217) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6224);
    acc = acc + m_hist[idx] + 32'd6231;
    idx = (idx + acc + 32'd6238) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6245);
    acc = acc + m_hist[idx] + 32'd6252;
    idx = (idx + acc + 32'd6259) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6266);
    acc = acc + m_hist[idx] + 32'd6273;
    idx = (idx + acc + 32'd6280) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6287);
    acc = acc + m_hist[idx] + 32'd6294;
    idx = (idx + acc + 32'd6301) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6308);
    acc = acc + m_hist[idx] + 32'd6315;
    m_seed = acc;
    return acc;
  endfunction

  function int unsigned op2(int unsigned seed);
    int unsigned acc;
    int unsigned idx;
    acc = seed ^ m_seed;
    idx = (seed + 2) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6195);
    acc = acc + m_hist[idx] + 32'd6202;
    idx = (idx + acc + 32'd6209) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6216);
    acc = acc + m_hist[idx] + 32'd6223;
    idx = (idx + acc + 32'd6230) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6237);
    acc = acc + m_hist[idx] + 32'd6244;
    idx = (idx + acc + 32'd6251) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6258);
    acc = acc + m_hist[idx] + 32'd6265;
    idx = (idx + acc + 32'd6272) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6279);
    acc = acc + m_hist[idx] + 32'd6286;
    idx = (idx + acc + 32'd6293) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6300);
    acc = acc + m_hist[idx] + 32'd6307;
    idx = (idx + acc + 32'd6314) % MC_HIST_DEPTH;
    m_hist[idx] = m_hist[idx] ^ (acc + 32'd6321);
    acc = acc + m_hist[idx] + 32'd6328;
    m_seed = acc;
    return acc;
  endfunction
endclass

// Optional driver for the classes above.  Verilator emits a .cpp pair for
// every class in a package whether or not anything references it, so simply
// `include'ing this file is enough to grow the output-file count; instantiate
// mc_registry only if you also want the code to execute at runtime.
class mc_registry;
  mc_base comps[$];

  function void build();
    begin mc_comp_0 c; c = new(32'd0); comps.push_back(c); end
    begin mc_comp_1 c; c = new(32'd1); comps.push_back(c); end
    begin mc_comp_2 c; c = new(32'd2); comps.push_back(c); end
    begin mc_comp_3 c; c = new(32'd3); comps.push_back(c); end
    begin mc_comp_4 c; c = new(32'd4); comps.push_back(c); end
    begin mc_comp_5 c; c = new(32'd5); comps.push_back(c); end
    begin mc_comp_6 c; c = new(32'd6); comps.push_back(c); end
    begin mc_comp_7 c; c = new(32'd7); comps.push_back(c); end
    begin mc_comp_8 c; c = new(32'd8); comps.push_back(c); end
    begin mc_comp_9 c; c = new(32'd9); comps.push_back(c); end
    begin mc_comp_10 c; c = new(32'd10); comps.push_back(c); end
    begin mc_comp_11 c; c = new(32'd11); comps.push_back(c); end
    begin mc_comp_12 c; c = new(32'd12); comps.push_back(c); end
    begin mc_comp_13 c; c = new(32'd13); comps.push_back(c); end
    begin mc_comp_14 c; c = new(32'd14); comps.push_back(c); end
    begin mc_comp_15 c; c = new(32'd15); comps.push_back(c); end
    begin mc_comp_16 c; c = new(32'd16); comps.push_back(c); end
    begin mc_comp_17 c; c = new(32'd17); comps.push_back(c); end
    begin mc_comp_18 c; c = new(32'd18); comps.push_back(c); end
    begin mc_comp_19 c; c = new(32'd19); comps.push_back(c); end
    begin mc_comp_20 c; c = new(32'd20); comps.push_back(c); end
    begin mc_comp_21 c; c = new(32'd21); comps.push_back(c); end
    begin mc_comp_22 c; c = new(32'd22); comps.push_back(c); end
    begin mc_comp_23 c; c = new(32'd23); comps.push_back(c); end
    begin mc_comp_24 c; c = new(32'd24); comps.push_back(c); end
    begin mc_comp_25 c; c = new(32'd25); comps.push_back(c); end
    begin mc_comp_26 c; c = new(32'd26); comps.push_back(c); end
    begin mc_comp_27 c; c = new(32'd27); comps.push_back(c); end
    begin mc_comp_28 c; c = new(32'd28); comps.push_back(c); end
    begin mc_comp_29 c; c = new(32'd29); comps.push_back(c); end
    begin mc_comp_30 c; c = new(32'd30); comps.push_back(c); end
    begin mc_comp_31 c; c = new(32'd31); comps.push_back(c); end
    begin mc_comp_32 c; c = new(32'd32); comps.push_back(c); end
    begin mc_comp_33 c; c = new(32'd33); comps.push_back(c); end
    begin mc_comp_34 c; c = new(32'd34); comps.push_back(c); end
    begin mc_comp_35 c; c = new(32'd35); comps.push_back(c); end
    begin mc_comp_36 c; c = new(32'd36); comps.push_back(c); end
    begin mc_comp_37 c; c = new(32'd37); comps.push_back(c); end
    begin mc_comp_38 c; c = new(32'd38); comps.push_back(c); end
    begin mc_comp_39 c; c = new(32'd39); comps.push_back(c); end
    begin mc_comp_40 c; c = new(32'd40); comps.push_back(c); end
    begin mc_comp_41 c; c = new(32'd41); comps.push_back(c); end
    begin mc_comp_42 c; c = new(32'd42); comps.push_back(c); end
    begin mc_comp_43 c; c = new(32'd43); comps.push_back(c); end
    begin mc_comp_44 c; c = new(32'd44); comps.push_back(c); end
    begin mc_comp_45 c; c = new(32'd45); comps.push_back(c); end
    begin mc_comp_46 c; c = new(32'd46); comps.push_back(c); end
    begin mc_comp_47 c; c = new(32'd47); comps.push_back(c); end
    begin mc_comp_48 c; c = new(32'd48); comps.push_back(c); end
    begin mc_comp_49 c; c = new(32'd49); comps.push_back(c); end
    begin mc_comp_50 c; c = new(32'd50); comps.push_back(c); end
    begin mc_comp_51 c; c = new(32'd51); comps.push_back(c); end
    begin mc_comp_52 c; c = new(32'd52); comps.push_back(c); end
    begin mc_comp_53 c; c = new(32'd53); comps.push_back(c); end
    begin mc_comp_54 c; c = new(32'd54); comps.push_back(c); end
    begin mc_comp_55 c; c = new(32'd55); comps.push_back(c); end
    begin mc_comp_56 c; c = new(32'd56); comps.push_back(c); end
    begin mc_comp_57 c; c = new(32'd57); comps.push_back(c); end
    begin mc_comp_58 c; c = new(32'd58); comps.push_back(c); end
    begin mc_comp_59 c; c = new(32'd59); comps.push_back(c); end
    begin mc_comp_60 c; c = new(32'd60); comps.push_back(c); end
    begin mc_comp_61 c; c = new(32'd61); comps.push_back(c); end
    begin mc_comp_62 c; c = new(32'd62); comps.push_back(c); end
    begin mc_comp_63 c; c = new(32'd63); comps.push_back(c); end
    begin mc_comp_64 c; c = new(32'd64); comps.push_back(c); end
    begin mc_comp_65 c; c = new(32'd65); comps.push_back(c); end
    begin mc_comp_66 c; c = new(32'd66); comps.push_back(c); end
    begin mc_comp_67 c; c = new(32'd67); comps.push_back(c); end
    begin mc_comp_68 c; c = new(32'd68); comps.push_back(c); end
    begin mc_comp_69 c; c = new(32'd69); comps.push_back(c); end
    begin mc_comp_70 c; c = new(32'd70); comps.push_back(c); end
    begin mc_comp_71 c; c = new(32'd71); comps.push_back(c); end
    begin mc_comp_72 c; c = new(32'd72); comps.push_back(c); end
    begin mc_comp_73 c; c = new(32'd73); comps.push_back(c); end
    begin mc_comp_74 c; c = new(32'd74); comps.push_back(c); end
    begin mc_comp_75 c; c = new(32'd75); comps.push_back(c); end
    begin mc_comp_76 c; c = new(32'd76); comps.push_back(c); end
    begin mc_comp_77 c; c = new(32'd77); comps.push_back(c); end
    begin mc_comp_78 c; c = new(32'd78); comps.push_back(c); end
    begin mc_comp_79 c; c = new(32'd79); comps.push_back(c); end
    begin mc_comp_80 c; c = new(32'd80); comps.push_back(c); end
    begin mc_comp_81 c; c = new(32'd81); comps.push_back(c); end
    begin mc_comp_82 c; c = new(32'd82); comps.push_back(c); end
    begin mc_comp_83 c; c = new(32'd83); comps.push_back(c); end
    begin mc_comp_84 c; c = new(32'd84); comps.push_back(c); end
    begin mc_comp_85 c; c = new(32'd85); comps.push_back(c); end
    begin mc_comp_86 c; c = new(32'd86); comps.push_back(c); end
    begin mc_comp_87 c; c = new(32'd87); comps.push_back(c); end
    begin mc_comp_88 c; c = new(32'd88); comps.push_back(c); end
    begin mc_comp_89 c; c = new(32'd89); comps.push_back(c); end
    begin mc_comp_90 c; c = new(32'd90); comps.push_back(c); end
    begin mc_comp_91 c; c = new(32'd91); comps.push_back(c); end
    begin mc_comp_92 c; c = new(32'd92); comps.push_back(c); end
    begin mc_comp_93 c; c = new(32'd93); comps.push_back(c); end
    begin mc_comp_94 c; c = new(32'd94); comps.push_back(c); end
    begin mc_comp_95 c; c = new(32'd95); comps.push_back(c); end
    begin mc_comp_96 c; c = new(32'd96); comps.push_back(c); end
    begin mc_comp_97 c; c = new(32'd97); comps.push_back(c); end
    begin mc_comp_98 c; c = new(32'd98); comps.push_back(c); end
    begin mc_comp_99 c; c = new(32'd99); comps.push_back(c); end
    begin mc_comp_100 c; c = new(32'd100); comps.push_back(c); end
    begin mc_comp_101 c; c = new(32'd101); comps.push_back(c); end
    begin mc_comp_102 c; c = new(32'd102); comps.push_back(c); end
    begin mc_comp_103 c; c = new(32'd103); comps.push_back(c); end
    begin mc_comp_104 c; c = new(32'd104); comps.push_back(c); end
    begin mc_comp_105 c; c = new(32'd105); comps.push_back(c); end
    begin mc_comp_106 c; c = new(32'd106); comps.push_back(c); end
    begin mc_comp_107 c; c = new(32'd107); comps.push_back(c); end
    begin mc_comp_108 c; c = new(32'd108); comps.push_back(c); end
    begin mc_comp_109 c; c = new(32'd109); comps.push_back(c); end
    begin mc_comp_110 c; c = new(32'd110); comps.push_back(c); end
    begin mc_comp_111 c; c = new(32'd111); comps.push_back(c); end
    begin mc_comp_112 c; c = new(32'd112); comps.push_back(c); end
    begin mc_comp_113 c; c = new(32'd113); comps.push_back(c); end
    begin mc_comp_114 c; c = new(32'd114); comps.push_back(c); end
    begin mc_comp_115 c; c = new(32'd115); comps.push_back(c); end
    begin mc_comp_116 c; c = new(32'd116); comps.push_back(c); end
    begin mc_comp_117 c; c = new(32'd117); comps.push_back(c); end
    begin mc_comp_118 c; c = new(32'd118); comps.push_back(c); end
    begin mc_comp_119 c; c = new(32'd119); comps.push_back(c); end
    begin mc_comp_120 c; c = new(32'd120); comps.push_back(c); end
    begin mc_comp_121 c; c = new(32'd121); comps.push_back(c); end
    begin mc_comp_122 c; c = new(32'd122); comps.push_back(c); end
    begin mc_comp_123 c; c = new(32'd123); comps.push_back(c); end
    begin mc_comp_124 c; c = new(32'd124); comps.push_back(c); end
    begin mc_comp_125 c; c = new(32'd125); comps.push_back(c); end
    begin mc_comp_126 c; c = new(32'd126); comps.push_back(c); end
    begin mc_comp_127 c; c = new(32'd127); comps.push_back(c); end
    begin mc_comp_128 c; c = new(32'd128); comps.push_back(c); end
    begin mc_comp_129 c; c = new(32'd129); comps.push_back(c); end
    begin mc_comp_130 c; c = new(32'd130); comps.push_back(c); end
    begin mc_comp_131 c; c = new(32'd131); comps.push_back(c); end
    begin mc_comp_132 c; c = new(32'd132); comps.push_back(c); end
    begin mc_comp_133 c; c = new(32'd133); comps.push_back(c); end
    begin mc_comp_134 c; c = new(32'd134); comps.push_back(c); end
    begin mc_comp_135 c; c = new(32'd135); comps.push_back(c); end
    begin mc_comp_136 c; c = new(32'd136); comps.push_back(c); end
    begin mc_comp_137 c; c = new(32'd137); comps.push_back(c); end
    begin mc_comp_138 c; c = new(32'd138); comps.push_back(c); end
    begin mc_comp_139 c; c = new(32'd139); comps.push_back(c); end
    begin mc_comp_140 c; c = new(32'd140); comps.push_back(c); end
    begin mc_comp_141 c; c = new(32'd141); comps.push_back(c); end
    begin mc_comp_142 c; c = new(32'd142); comps.push_back(c); end
    begin mc_comp_143 c; c = new(32'd143); comps.push_back(c); end
    begin mc_comp_144 c; c = new(32'd144); comps.push_back(c); end
    begin mc_comp_145 c; c = new(32'd145); comps.push_back(c); end
    begin mc_comp_146 c; c = new(32'd146); comps.push_back(c); end
    begin mc_comp_147 c; c = new(32'd147); comps.push_back(c); end
    begin mc_comp_148 c; c = new(32'd148); comps.push_back(c); end
    begin mc_comp_149 c; c = new(32'd149); comps.push_back(c); end
    begin mc_comp_150 c; c = new(32'd150); comps.push_back(c); end
    begin mc_comp_151 c; c = new(32'd151); comps.push_back(c); end
    begin mc_comp_152 c; c = new(32'd152); comps.push_back(c); end
    begin mc_comp_153 c; c = new(32'd153); comps.push_back(c); end
    begin mc_comp_154 c; c = new(32'd154); comps.push_back(c); end
    begin mc_comp_155 c; c = new(32'd155); comps.push_back(c); end
    begin mc_comp_156 c; c = new(32'd156); comps.push_back(c); end
    begin mc_comp_157 c; c = new(32'd157); comps.push_back(c); end
    begin mc_comp_158 c; c = new(32'd158); comps.push_back(c); end
    begin mc_comp_159 c; c = new(32'd159); comps.push_back(c); end
    begin mc_comp_160 c; c = new(32'd160); comps.push_back(c); end
    begin mc_comp_161 c; c = new(32'd161); comps.push_back(c); end
    begin mc_comp_162 c; c = new(32'd162); comps.push_back(c); end
    begin mc_comp_163 c; c = new(32'd163); comps.push_back(c); end
    begin mc_comp_164 c; c = new(32'd164); comps.push_back(c); end
    begin mc_comp_165 c; c = new(32'd165); comps.push_back(c); end
    begin mc_comp_166 c; c = new(32'd166); comps.push_back(c); end
    begin mc_comp_167 c; c = new(32'd167); comps.push_back(c); end
    begin mc_comp_168 c; c = new(32'd168); comps.push_back(c); end
    begin mc_comp_169 c; c = new(32'd169); comps.push_back(c); end
    begin mc_comp_170 c; c = new(32'd170); comps.push_back(c); end
    begin mc_comp_171 c; c = new(32'd171); comps.push_back(c); end
    begin mc_comp_172 c; c = new(32'd172); comps.push_back(c); end
    begin mc_comp_173 c; c = new(32'd173); comps.push_back(c); end
    begin mc_comp_174 c; c = new(32'd174); comps.push_back(c); end
    begin mc_comp_175 c; c = new(32'd175); comps.push_back(c); end
    begin mc_comp_176 c; c = new(32'd176); comps.push_back(c); end
    begin mc_comp_177 c; c = new(32'd177); comps.push_back(c); end
    begin mc_comp_178 c; c = new(32'd178); comps.push_back(c); end
    begin mc_comp_179 c; c = new(32'd179); comps.push_back(c); end
    begin mc_comp_180 c; c = new(32'd180); comps.push_back(c); end
    begin mc_comp_181 c; c = new(32'd181); comps.push_back(c); end
    begin mc_comp_182 c; c = new(32'd182); comps.push_back(c); end
    begin mc_comp_183 c; c = new(32'd183); comps.push_back(c); end
    begin mc_comp_184 c; c = new(32'd184); comps.push_back(c); end
    begin mc_comp_185 c; c = new(32'd185); comps.push_back(c); end
    begin mc_comp_186 c; c = new(32'd186); comps.push_back(c); end
    begin mc_comp_187 c; c = new(32'd187); comps.push_back(c); end
    begin mc_comp_188 c; c = new(32'd188); comps.push_back(c); end
    begin mc_comp_189 c; c = new(32'd189); comps.push_back(c); end
    begin mc_comp_190 c; c = new(32'd190); comps.push_back(c); end
    begin mc_comp_191 c; c = new(32'd191); comps.push_back(c); end
    begin mc_comp_192 c; c = new(32'd192); comps.push_back(c); end
    begin mc_comp_193 c; c = new(32'd193); comps.push_back(c); end
    begin mc_comp_194 c; c = new(32'd194); comps.push_back(c); end
    begin mc_comp_195 c; c = new(32'd195); comps.push_back(c); end
    begin mc_comp_196 c; c = new(32'd196); comps.push_back(c); end
    begin mc_comp_197 c; c = new(32'd197); comps.push_back(c); end
    begin mc_comp_198 c; c = new(32'd198); comps.push_back(c); end
    begin mc_comp_199 c; c = new(32'd199); comps.push_back(c); end
  endfunction

  function int unsigned run(int unsigned seed);
    int unsigned acc;
    acc = seed;
    foreach (comps[i]) acc = acc + comps[i].digest(acc);
    return acc;
  endfunction
endclass
