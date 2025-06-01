
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY tb_bin_to_BCD IS
END tb_bin_to_BCD;
 
ARCHITECTURE behavior OF tb_bin_to_BCD IS 
 
 
    COMPONENT src_bin_to_BCD
    PORT(
         bin_in : IN  std_logic_vector(3 downto 0);
         bcd_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   signal bin_signal : std_logic_vector(3 downto 0) := (others => '0');
   signal dec_signal : std_logic_vector(7 downto 0);
 
BEGIN
 

   uut: src_bin_to_BCD PORT MAP (
          bin_in => bin_signal,
          bcd_out => dec_signal
        );

   stim_proc: process
   begin		
		bin_signal <= "0000"; wait for 10ns;
		bin_signal <= "0001"; wait for 10ns;
		bin_signal <= "0010"; wait for 10ns;
		bin_signal <= "0011"; wait for 10ns;
		bin_signal <= "0100"; wait for 10ns;
		bin_signal <= "0101"; wait for 10ns;
		bin_signal <= "0110"; wait for 10ns;
		bin_signal <= "0111"; wait for 10ns;
		bin_signal <= "1000"; wait for 10ns;

      wait;
   end process;

END;
