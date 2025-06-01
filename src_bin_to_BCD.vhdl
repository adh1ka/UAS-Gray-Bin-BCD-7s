library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity src_bin_to_BCD is
	port(
			bin_in: in STD_LOGIC_VECTOR(3 downto 0);
			bcd_out: out STD_LOGIC_VECTOR(7 downto 0)
			);
end src_bin_to_BCD;

architecture Behavioral of src_bin_to_BCD is
begin
	process(bin_in)
	variable z : STD_LOGIC_VECTOR(11 downto 0);
	begin
		z :=(others => '0');
		z(3 downto 0):= bin_in;
		
		for i in 0 to 3 loop
			if z(7 downto 4) > 4 then
				z(7 downto 4):= z(7 downto 4) + 3;
			end if;
			
			if z(11 downto 8)> 4 then
				z(11 downto 8):= z(11 downto 8) + 3;
			end if;
			
		z:= z(10 downto 0) & '0';
		end loop;
		
		bcd_out <= std_logic_vector(z(11 downto 4));
	end process;
end Behavioral;
