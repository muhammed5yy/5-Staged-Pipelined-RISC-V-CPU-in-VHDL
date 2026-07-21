----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.05.2026 16:58:54
-- Design Name: 
-- Module Name: data_memory - Behavioral
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

entity data_memory is
    Port ( 
        clk, reset, mem_read, mem_write : in  std_logic;
        address                         : in std_logic_vector(31 downto 0);
        data_in                         : in  std_logic_vector(31 downto 0);
        data_out                        : out std_logic_vector(31 downto 0)
    );
end data_memory;

architecture Behavioral of data_memory is

type mem is array (0 to 32767) of std_logic_vector(31 downto 0);
signal memory: mem := (others => (others => '0'));

begin

    process(clk) begin
    
        if rising_edge(clk) then
                if mem_read = '1' then
                    data_out <= memory(to_integer(unsigned(address(16 downto 2))));
                elsif mem_write = '1' then
                    memory(to_integer(unsigned(address(16 downto 2)))) <= data_in;
                else
                    data_out <= (others => '0');
                end if;
         end if;
     end process;
                    
end Behavioral;
