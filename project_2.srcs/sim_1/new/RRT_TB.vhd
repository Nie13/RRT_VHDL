----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
signal a, b: std_logic_vector (7 downto 0);
component RRT
port (input: in std_logic_vector (7 downto 0);
      output: out std_logic_vector (7 downto 0));
end component;

begin
DUT: RRT port map(a, b);
test: process
begin
a <= "11010100"; wait for 10ns;
a <= "00100101"; wait for 10ns;
end process;

end Behavioral;
