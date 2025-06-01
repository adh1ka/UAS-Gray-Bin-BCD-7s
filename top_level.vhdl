architecture Behavioral of top_level is

    -- Deklarasi sinyal antar modul
    signal gray_input : STD_LOGIC_VECTOR(3 downto 0);
    signal binary_out : STD_LOGIC_VECTOR(3 downto 0);
    signal bcd_out : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Misal input dari switch (SW)
    gray_input <= SW;

    -- Instansiasi Modul 1
    u1: entity work.gray_to_bin
        port map (
            gray_in => gray_input,
            bin_out => binary_out
        );

    -- Instansiasi Modul 2
    u2: entity work.bin_to_BCD
        port map (
            bin_in => binary_out,
            bcd_out => bcd_out
        );

    -- Instansiasi Modul 3
    u3: entity work.BCD_to_7s
        port map (
            bcd_in => bcd_out,
            seg_out => SEG
        );

end Behavioral;
