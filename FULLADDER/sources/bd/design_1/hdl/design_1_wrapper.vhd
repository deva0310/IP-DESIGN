--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Dec 19 22:54:33 2020
--Host        : LAPTOP-HHGORFUC running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CLK_0 : in STD_LOGIC;
    LOAD_0 : in STD_LOGIC;
    L_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SCLR_0 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    CLK_0 : in STD_LOGIC;
    L_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LOAD_0 : in STD_LOGIC;
    Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SCLR_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CLK_0 => CLK_0,
      LOAD_0 => LOAD_0,
      L_0(15 downto 0) => L_0(15 downto 0),
      Q_0(15 downto 0) => Q_0(15 downto 0),
      SCLR_0 => SCLR_0
    );
end STRUCTURE;
