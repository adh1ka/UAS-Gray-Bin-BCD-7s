library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_gray_to_7s is
    Port (
        gray_in : in  STD_LOGIC_VECTOR(3 downto 0); 
        seg_out : out STD_LOGIC_VECTOR(6 downto 0)
    );
end top_gray_to_7s;

architecture Structural of top_gray_to_7s is
    signal bin_signal : STD_LOGIC_VECTOR(3 downto 0);
begin
  
    U1: entity work.src_gray_to_bin
        port map (
            gray => gray_in,
            bin  => bin_signal
        );
      
    U2: entity work.src_bin_to_7s
        port map (
            bin => bin_signal,
            seg => seg_out
        );
end Structural;
