LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_gray_to_bin IS
END tb_gray_to_bin;
 
ARCHITECTURE behavior OF tb_gray_to_bin IS 
 
    COMPONENT src_gray_to_bin
    PORT(
         gray_in : IN  std_logic_vector(3 downto 0);
         bin_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   signal gray_sig : std_logic_vector(3 downto 0) := (others => '0');
   signal bin_sig : std_logic_vector(3 downto 0);

BEGIN
 
   uut: src_gray_to_bin PORT MAP (
          gray_in => gray_sig,
          bin_out => bin_sig
        );

   stim_proc: process
   begin		
   
		gray_sig <= "0000"; wait for 10 ns;	
		gray_sig <= "0001"; wait for 10 ns;	
		gray_sig <= "0011"; wait for 10 ns;	
		gray_sig <= "0010"; wait for 10 ns;	
		gray_sig <= "0110"; wait for 10 ns;	
		gray_sig <= "0111"; wait for 10 ns;	
		gray_sig <= "0101"; wait for 10 ns;	
		gray_sig <= "0100"; wait for 10 ns;	
		gray_sig <= "1100"; wait for 10 ns;	
		gray_sig <= "1101"; wait for 10 ns;	
		gray_sig <= "1111"; wait for 10 ns;	

      wait;
   end process;

END;

