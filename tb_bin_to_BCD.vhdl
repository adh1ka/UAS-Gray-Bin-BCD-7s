--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:17:07 05/31/2025
-- Design Name:   
-- Module Name:   /home/ise/UAS_GrayBCD7s_HafizhAdhika_Afansyah/tb_bin_to_BCD.vhd
-- Project Name:  UAS_GrayBCD7s_HafizhAdhika_Afansyah
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: src_bin_to_BCD
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_bin_to_BCD IS
END tb_bin_to_BCD;
 
ARCHITECTURE behavior OF tb_bin_to_BCD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT src_bin_to_BCD
    PORT(
         bin : IN  std_logic_vector(3 downto 0);
         dec : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bin_signal : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dec_signal : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: src_bin_to_BCD PORT MAP (
          bin => bin_signal,
          dec => dec_signal
        );


   -- Stimulus process
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
