-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity multiply_row_col is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    agg_result_rowptr_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    agg_result_rowptr_ce0 : OUT STD_LOGIC;
    agg_result_rowptr_we0 : OUT STD_LOGIC;
    agg_result_rowptr_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    agg_result_colind_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    agg_result_colind_ce0 : OUT STD_LOGIC;
    agg_result_colind_we0 : OUT STD_LOGIC;
    agg_result_colind_d0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    agg_result_data_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    agg_result_data_V_ce0 : OUT STD_LOGIC;
    agg_result_data_V_we0 : OUT STD_LOGIC;
    agg_result_data_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    row_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    row_V_ce0 : OUT STD_LOGIC;
    row_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    col_V_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    col_V_ce0 : OUT STD_LOGIC;
    col_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of multiply_row_col is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_2_fu_154_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_2_reg_240 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal exitcond1_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_cast_fu_165_p1 : STD_LOGIC_VECTOR (47 downto 0);
    signal tmp_6_cast_reg_251 : STD_LOGIC_VECTOR (47 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal j_1_fu_175_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_1_reg_259 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal exitcond_fu_169_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal row_V_load_reg_269 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal prod_V_reg_274 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i_reg_115 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_126 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_fu_160_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_fu_181_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_fu_186_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal z_idx_fu_36 : STD_LOGIC_VECTOR (31 downto 0);
    signal z_idx_1_fu_219_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_fu_193_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_fu_193_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_fu_193_p2 : STD_LOGIC_VECTOR (47 downto 0);
    signal tmp_2_fu_213_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal z_idx_1_fu_219_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_169_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_reg_115 <= i_2_reg_240;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_115 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                j_reg_126 <= j_1_reg_259;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                j_reg_126 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    z_idx_fu_36_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_1_fu_208_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                z_idx_fu_36 <= z_idx_1_fu_219_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                z_idx_fu_36 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_2_reg_240 <= i_2_fu_154_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                j_1_reg_259 <= j_1_fu_175_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                prod_V_reg_274 <= r_V_fu_193_p2(47 downto 16);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                row_V_load_reg_269 <= row_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                tmp_6_cast_reg_251 <= tmp_6_cast_fu_165_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_148_p2, ap_CS_fsm_state4, exitcond_fu_169_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond1_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((exitcond_fu_169_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    agg_result_colind_address0 <= tmp_2_fu_213_p1(5 - 1 downto 0);

    agg_result_colind_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            agg_result_colind_ce0 <= ap_const_logic_1;
        else 
            agg_result_colind_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    agg_result_colind_d0 <= j_reg_126;

    agg_result_colind_we0_assign_proc : process(ap_CS_fsm_state7, tmp_1_fu_208_p2)
    begin
        if (((tmp_1_fu_208_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            agg_result_colind_we0 <= ap_const_logic_1;
        else 
            agg_result_colind_we0 <= ap_const_logic_0;
        end if; 
    end process;

    agg_result_data_V_address0 <= tmp_2_fu_213_p1(5 - 1 downto 0);

    agg_result_data_V_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            agg_result_data_V_ce0 <= ap_const_logic_1;
        else 
            agg_result_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    agg_result_data_V_d0 <= prod_V_reg_274;

    agg_result_data_V_we0_assign_proc : process(ap_CS_fsm_state7, tmp_1_fu_208_p2)
    begin
        if (((tmp_1_fu_208_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            agg_result_data_V_we0 <= ap_const_logic_1;
        else 
            agg_result_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    agg_result_rowptr_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state4, tmp_8_fu_186_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            agg_result_rowptr_address0 <= tmp_8_fu_186_p1(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            agg_result_rowptr_address0 <= ap_const_lv64_0(3 - 1 downto 0);
        else 
            agg_result_rowptr_address0 <= "XXX";
        end if; 
    end process;


    agg_result_rowptr_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            agg_result_rowptr_ce0 <= ap_const_logic_1;
        else 
            agg_result_rowptr_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    agg_result_rowptr_d0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state4, z_idx_fu_36)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            agg_result_rowptr_d0 <= z_idx_fu_36;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            agg_result_rowptr_d0 <= ap_const_lv32_0;
        else 
            agg_result_rowptr_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    agg_result_rowptr_we0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state4, exitcond_fu_169_p2)
    begin
        if ((((exitcond_fu_169_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            agg_result_rowptr_we0 <= ap_const_logic_1;
        else 
            agg_result_rowptr_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_148_p2)
    begin
        if ((((exitcond1_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_148_p2)
    begin
        if (((exitcond1_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    col_V_address0 <= tmp_fu_160_p1(2 - 1 downto 0);

    col_V_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            col_V_ce0 <= ap_const_logic_1;
        else 
            col_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_148_p2 <= "1" when (i_reg_115 = ap_const_lv3_4) else "0";
    exitcond_fu_169_p2 <= "1" when (j_reg_126 = ap_const_lv3_5) else "0";
    i_2_fu_154_p2 <= std_logic_vector(unsigned(i_reg_115) + unsigned(ap_const_lv3_1));
    j_1_fu_175_p2 <= std_logic_vector(unsigned(j_reg_126) + unsigned(ap_const_lv3_1));
    r_V_fu_193_p0 <= tmp_6_cast_reg_251(32 - 1 downto 0);
    r_V_fu_193_p1 <= row_V_load_reg_269;
    r_V_fu_193_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(r_V_fu_193_p0) * signed(r_V_fu_193_p1))), 48));
    row_V_address0 <= tmp_9_fu_181_p1(3 - 1 downto 0);

    row_V_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            row_V_ce0 <= ap_const_logic_1;
        else 
            row_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_208_p2 <= "1" when (prod_V_reg_274 = ap_const_lv32_0) else "0";
    tmp_2_fu_213_p0 <= z_idx_fu_36;
        tmp_2_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_2_fu_213_p0),64));

        tmp_6_cast_fu_165_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(col_V_q0),48));

    tmp_8_fu_186_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_2_reg_240),64));
    tmp_9_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_126),64));
    tmp_fu_160_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_115),64));
    z_idx_1_fu_219_p0 <= z_idx_fu_36;
    z_idx_1_fu_219_p2 <= std_logic_vector(signed(z_idx_1_fu_219_p0) + signed(ap_const_lv32_1));
end behav;