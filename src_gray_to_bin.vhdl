library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity src_gray_to_bin is
	port (
    	gray_in: in STD_LOGIC_VECTOR(3 downto 0);
        bin_out: out STD_LOGIC_VECTOR(3 downto 0)
        );
end src_gray_to_bin;

architecture Behavioral of src_gray_to_bin is
begin
	process(gray_in)
    	variable bin_temp: STD_LOGIC_VECTOR(3 downto 0);
    begin
    	bin_temp(3) := gray_in(3);
        for i in 2 downto 0 loop
        	bin_temp(i) := bin_temp(i + 1) xor gray_in(i);
        end loop;
        bin_out <= bin_temp;
    end process;
end Behavioral;
