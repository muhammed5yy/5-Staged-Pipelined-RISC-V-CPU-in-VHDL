----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.07.2026 13:46:24
-- Design Name: 
-- Module Name: id_ex_reg - Behavioral
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

entity id_ex_reg is
  Port (
         rs1, rs2, imm                         : in std_logic_vector(31 downto 0);
         rd,rs1_addr, rs2_addr                 : in std_logic_vector(4 downto 0);
         ALU_Src, ALU_Src2, reg_write          : in std_logic;
         mem_read, mem_write                   : in std_logic;
         mem_to_reg                            : in std_logic_vector(1 downto 0);
         ALU_Op                                : in std_logic_vector(1 downto 0);
         funct3                                : in std_logic_vector(2 downto 0);
         funct7                                : in std_logic_vector(6 downto 0);
         clk,reset                             : in std_logic;
         -----------------------------------------------------------------
         rs1_ex, rs2_ex , imm_ex               : out std_logic_vector(31 downto 0);
         rd_ex, rs1a_ex, rs2aex                : out std_logic_vector(4 downto 0);
         ALU_Src_ex, ALU_Src2_ex, reg_write_ex : out std_logic;
         mem_read_ex, mem_write_ex             : out std_logic;
         mem_to_reg_ex                         : out std_logic_vector(1 downto 0);
         ALU_Op_ex                             : out std_logic_vector(1 downto 0);
         funct3_ex                             : out std_logic_vector(2 downto 0);
         funct7_ex                             : out std_logic_vector(6 downto 0)        
         
          );
end id_ex_reg;

architecture Behavioral of id_ex_reg is
signal rs1_reg          : std_logic_vector(31 downto 0) := (others => '0');
signal rs2_reg          : std_logic_vector(31 downto 0) := (others => '0');
signal imm_reg          : std_logic_vector(31 downto 0) := (others => '0');
signal rd_reg           : std_logic_vector(4 downto 0) := (others => '0');
signal rs1_addr_reg     : std_logic_vector(4 downto 0) := (others => '0');
signal rs2_addr_reg     : std_logic_vector(4 downto 0) := (others => '0');
signal mem_to_reg_reg   : std_logic_vector(1 downto 0) := (others => '0');
signal ALU_Op_reg       : std_logic_vector(1 downto 0) := (others => '0');
signal funct3_reg       : std_logic_vector(2 downto 0) := (others => '0');
signal funct7_reg       : std_logic_vector(6 downto 0) := (others => '0');
signal ALU_Src_reg      : std_logic := '0';
signal ALU_Src2_reg     : std_logic := '0';
signal reg_Write_reg    : std_logic := '0';
signal mem_read_reg     : std_logic := '0';
signal mem_write_reg    : std_logic := '0';

begin


end Behavioral;
