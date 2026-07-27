library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_memory is
    Port ( 
        clk, mem_read, mem_write : in  std_logic;
        address                  : in  std_logic_vector(31 downto 0);
        data_in                  : in  std_logic_vector(31 downto 0);
        data_out                 : out std_logic_vector(31 downto 0)
    );
end data_memory;

architecture Behavioral of data_memory is
    type mem is array (0 to 32767) of std_logic_vector(31 downto 0);
    signal memory: mem := (others => (others => '0'));
begin

    -- Yazma işlemi (Senkron)
    process(clk) begin
        if rising_edge(clk) then
            if mem_write = '1' then
                memory(to_integer(unsigned(address(16 downto 2)))) <= data_in;
            end if;
        end if;
    end process;

    -- Okuma işlemi (Asenkron)
    data_out <= memory(to_integer(unsigned(address(16 downto 2)))) when mem_read = '1' else (others => '0');

end Behavioral;