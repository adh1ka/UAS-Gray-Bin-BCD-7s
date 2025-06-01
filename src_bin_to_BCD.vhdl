library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity src_bin_to_BCD is
	port(
			bin: in STD_LOGIC_VECTOR(3 downto 0);
			dec: out STD_LOGIC_VECTOR(7 downto 0)
			);
end src_bin_to_BCD;

architecture Behavioral of src_bin_to_BCD is

begin
	process(bin)
	variable z : STD_LOGIC_VECTOR(11 downto 0);
	begin
		z :=(others => '0');
		z(3 downto 0):= bin;
		
		for i in 0 to 3 loop
			if z(7 downto 4) > 4 then
				z(7 downto 4):= z(7 downto 4) + 3;
			end if;
			
			if z(11 downto 8)> 4 then
				z(11 downto 8):= z(11 downto 8) + 3;
			end if;
			
		--	z(11 downto 1):= z(10 downto 0);
		Z:= Z(10 downto 0) & '0';
		end loop;
		
		dec <= std_logic_vector(z(11 downto 4));
	end process;
end Behavioral;

