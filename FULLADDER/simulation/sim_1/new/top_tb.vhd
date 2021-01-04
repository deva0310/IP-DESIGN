----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2020 21:36:07
-- Design Name: 
-- Module Name: top_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is
component design_1_wrapper is
  port (
    CLK_0 : in STD_LOGIC;
    LOAD_0 : in STD_LOGIC;
    L_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SCLR_0 : in STD_LOGIC
  );   
  end component;
  signal clk,load: std_logic :='0';
  signal l_0     : std_logic_vector(15 downto 0):= (others => '0');
  signal Q_0     : std_logic_vector(15 downto 0);
  signal sclr    : std_logic; 
begin
t1 : design_1_wrapper port map(clk,load,l_0,Q_0,sclr);
process
begin
clk <= '1';
wait for 5 ns;
clk <= '0';
wait for 5 ns; 
end process;
p2: process 
begin
l_0 <= X"000a" after 30 ns;
sclr <= '1','0' after 30 ns;
load <= '0','1' after 30 ns,'0' after 10 ns;
wait;
end process p2;
end Behavioral;
