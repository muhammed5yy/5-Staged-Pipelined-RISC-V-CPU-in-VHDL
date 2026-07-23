----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.07.2026 16:10:27
-- Design Name: 
-- Module Name: target_adder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity target_adder is
  Port (
         imm                : in std_logic_vector(31 downto 0);
         pc                 : in std_logic_vector(31 downto 0);
         rs1                : in std_logic_vector(31 downto 0);
         Adder_Src          : in std_logic;
         ------------------------------------------------------
         new_target         : out std_logic_vector(31 downto 0)
   );
end target_adder;

architecture Behavioral of target_adder is

begin
    
    process(all) begin
        if Adder_Src = '0' then
           new_target <= std_logic_vector(unsigned(rs1) + unsigned(imm));
        else
            new_target <= std_logic_vector(unsigned(pc) + unsigned(imm));
        end if;
        
    end process;


end Behavioral;
