// Generated stress design: many SystemVerilog classes.
//
// This is an INCLUDE FRAGMENT, not a compilation unit: it declares classes
// only, with no package or module wrapper, so it can be `include'd inside an
// existing package.  Names are prefixed mc_ and the depth is a localparam so
// nothing collides with the including package.
//
// The tool emits one .cpp pair per class, so the class count -- not
// --output-split -- drives the number of compilation units.  Grouping needs
// at least 4 concatenable files per bucket, so the 67 classes here
// (plus mc_base and mc_registry) support --output-groups up to roughly 17.
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
  endfunction

  function int unsigned run(int unsigned seed);
    int unsigned acc;
    acc = seed;
    foreach (comps[i]) acc = acc + comps[i].digest(acc);
    return acc;
  endfunction
endclass
