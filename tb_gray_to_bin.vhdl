--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:12 05/31/2025
-- Design Name:   
-- Module Name:   /home/ise/UAS_GrayBCD7s_HafizhAdhika_Afansyah/tb_gray_to_bin.vhd
-- Project Name:  UAS_GrayBCD7s_HafizhAdhika_Afansyah
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: src_gray_to_bin
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
 
ENTITY tb_gray_to_bin IS
END tb_gray_to_bin;
 
ARCHITECTURE behavior OF tb_gray_to_bin IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT src_gray_to_bin
    PORT(
         gray : IN  std_logic_vector(3 downto 0);
         bin : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal gray_sig : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal bin_sig : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: src_gray_to_bin PORT MAP (
          gray => gray_sig,
          bin => bin_sig
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
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
      -- insert stimulus here 

      wait;
   end process;

END;
