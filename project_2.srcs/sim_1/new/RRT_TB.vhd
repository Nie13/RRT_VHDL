----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nie13
-- 
-- Create Date: 09/18/2017 04:00:11 PM
-- Design Name: 
-- Module Name: RRT_TB - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RRT_TB is
--  Port ( );
end RRT_TB;

architecture Behavioral of RRT_TB is
signal a, b, c: std_logic_vector (31 downto 0);
component RRT
port (a: in std_logic_vector (31 downto 0);
      b: in std_logic_vector (31 downto 0);
      c: out std_logic_vector (31 downto 0));
end component;

begin
DUT: RRT port map(a, b, c);
test: process
begin
a <= "11010100110101001101010011010100";
b <= "00000000000000000000000000000001";
wait for 10ns;
b <= "00000000000000000000000000000010"; 
wait for 10ns;
a <= "00000000000000000000000000000001";
b <= "00000000000000000000000000000111";
wait for 10ns;
b <= "00000000000000000000000000001111";
wait for 10ns;
b <= "00000000000000000000000111111110";
wait for 10ns;
b <= "10000000000000000000000000000001";
wait for 10ns;
end process;

end Behavioral;
