--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Jan  2 15:43:42 2021
--Host        : LAPTOP-HHGORFUC running 64-bit major release  (build 9200)
--Command     : generate_target design_2_wrapper.bd
--Design      : design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_wrapper is
  port (
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    cin : in STD_LOGIC;
    cout : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC
  );
end design_2_wrapper;

architecture STRUCTURE of design_2_wrapper is
  component design_2 is
  port (
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    cin : in STD_LOGIC;
    sum : out STD_LOGIC;
    cout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2;
begin
design_2_i: component design_2
     port map (
      a_0 => a_0,
      b_0 => b_0,
      cin => cin,
      cout(0) => cout(0),
      sum => sum
    );
end STRUCTURE;
