--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Jan  2 15:43:42 2021
--Host        : LAPTOP-HHGORFUC running 64-bit major release  (build 9200)
--Command     : generate_target design_2.bd
--Design      : design_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2 is
  port (
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    cin : in STD_LOGIC;
    cout : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_2 : entity is "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_2 : entity is "design_2.hwdef";
end design_2;

architecture STRUCTURE of design_2 is
  component design_2_adder_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : out STD_LOGIC;
    s : out STD_LOGIC
  );
  end component design_2_adder_0_0;
  component design_2_adder_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : out STD_LOGIC;
    s : out STD_LOGIC
  );
  end component design_2_adder_0_1;
  component design_2_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_util_vector_logic_0_0;
  signal a_0_1 : STD_LOGIC;
  signal adder_0_c : STD_LOGIC;
  signal adder_0_s : STD_LOGIC;
  signal adder_1_c : STD_LOGIC;
  signal adder_1_s : STD_LOGIC;
  signal b_0_1 : STD_LOGIC;
  signal b_1_1 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  a_0_1 <= a_0;
  b_0_1 <= b_0;
  b_1_1 <= cin;
  cout(0) <= util_vector_logic_0_Res(0);
  sum <= adder_1_s;
adder_0: component design_2_adder_0_0
     port map (
      a => a_0_1,
      b => b_0_1,
      c => adder_0_c,
      s => adder_0_s
    );
adder_1: component design_2_adder_0_1
     port map (
      a => adder_0_s,
      b => b_1_1,
      c => adder_1_c,
      s => adder_1_s
    );
util_vector_logic_0: component design_2_util_vector_logic_0_0
     port map (
      Op1(0) => adder_1_c,
      Op2(0) => adder_0_c,
      Res(0) => util_vector_logic_0_Res(0)
    );
end STRUCTURE;
