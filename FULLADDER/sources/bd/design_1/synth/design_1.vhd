--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Dec 19 22:54:33 2020
--Host        : LAPTOP-HHGORFUC running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    CLK_0 : in STD_LOGIC;
    LOAD_0 : in STD_LOGIC;
    L_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SCLR_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_c_counter_binary_0_0;
  signal CLK_0_1 : STD_LOGIC;
  signal LOAD_0_1 : STD_LOGIC;
  signal L_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SCLR_0_1 : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET SCLR_0, CLK_DOMAIN design_1_CLK_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of LOAD_0 : signal is "xilinx.com:signal:data:1.0 DATA.LOAD_0 DATA";
  attribute X_INTERFACE_PARAMETER of LOAD_0 : signal is "XIL_INTERFACENAME DATA.LOAD_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of SCLR_0 : signal is "xilinx.com:signal:reset:1.0 RST.SCLR_0 RST";
  attribute X_INTERFACE_PARAMETER of SCLR_0 : signal is "XIL_INTERFACENAME RST.SCLR_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of L_0 : signal is "xilinx.com:signal:data:1.0 DATA.L_0 DATA";
  attribute X_INTERFACE_PARAMETER of L_0 : signal is "XIL_INTERFACENAME DATA.L_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of Q_0 : signal is "xilinx.com:signal:data:1.0 DATA.Q_0 DATA";
  attribute X_INTERFACE_PARAMETER of Q_0 : signal is "XIL_INTERFACENAME DATA.Q_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}";
begin
  CLK_0_1 <= CLK_0;
  LOAD_0_1 <= LOAD_0;
  L_0_1(15 downto 0) <= L_0(15 downto 0);
  Q_0(15 downto 0) <= c_counter_binary_0_Q(15 downto 0);
  SCLR_0_1 <= SCLR_0;
c_counter_binary_0: component design_1_c_counter_binary_0_0
     port map (
      CLK => CLK_0_1,
      L(15 downto 0) => L_0_1(15 downto 0),
      LOAD => LOAD_0_1,
      Q(15 downto 0) => c_counter_binary_0_Q(15 downto 0),
      SCLR => SCLR_0_1
    );
end STRUCTURE;
