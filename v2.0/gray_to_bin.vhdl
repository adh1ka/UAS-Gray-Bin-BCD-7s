library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity src_gray_to_bin is
    Port (
        gray : in  STD_LOGIC_VECTOR(3 downto 0);
        bin  : out STD_LOGIC_VECTOR(3 downto 0)
    );
end src_gray_to_bin;

architecture Behavioral of src_gray_to_bin is
begin
    process(gray)
        variable bin_temp : STD_LOGIC_VECTOR(3 downto 0);
    begin
        bin_temp(3) := gray(3);
        bin_temp(2) := bin_temp(3) xor gray(2);
        bin_temp(1) := bin_temp(2) xor gray(1);
        bin_temp(0) := bin_temp(1) xor gray(0);
        bin <= bin_temp;
    end process;
end Behavioral;
