//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Dec 19 22:06:07 2020
//Host        : LAPTOP-HHGORFUC running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK_0,
    LOAD_0,
    L_0,
    Q_0,
    SCLR_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET SCLR_0, CLK_DOMAIN design_1_CLK_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input CLK_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LOAD_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LOAD_0, LAYERED_METADATA undef" *) input LOAD_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.L_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.L_0, LAYERED_METADATA undef" *) input [15:0]L_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.Q_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.Q_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]Q_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SCLR_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SCLR_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input SCLR_0;

  wire CLK_0_1;
  wire LOAD_0_1;
  wire [15:0]L_0_1;
  wire SCLR_0_1;
  wire [15:0]c_counter_binary_0_Q;

  assign CLK_0_1 = CLK_0;
  assign LOAD_0_1 = LOAD_0;
  assign L_0_1 = L_0[15:0];
  assign Q_0[15:0] = c_counter_binary_0_Q;
  assign SCLR_0_1 = SCLR_0;
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(CLK_0_1),
        .L(L_0_1),
        .LOAD(LOAD_0_1),
        .Q(c_counter_binary_0_Q),
        .SCLR(SCLR_0_1));
endmodule
