-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity extract_col is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    inp_csc_colptr_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    inp_csc_colptr_ce0 : OUT STD_LOGIC;
    inp_csc_colptr_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    inp_csc_colptr_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    inp_csc_colptr_ce1 : OUT STD_LOGIC;
    inp_csc_colptr_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    inp_csc_rowind_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    inp_csc_rowind_ce0 : OUT STD_LOGIC;
    inp_csc_rowind_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    inp_csc_data_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    inp_csc_data_V_ce0 : OUT STD_LOGIC;
    inp_csc_data_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    col : IN STD_LOGIC_VECTOR (2 downto 0);
    out_col_V_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_col_V_0_ap_vld : OUT STD_LOGIC;
    out_col_V_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_col_V_1_ap_vld : OUT STD_LOGIC;
    out_col_V_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_col_V_2_ap_vld : OUT STD_LOGIC;
    out_col_V_3 : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_col_V_3_ap_vld : OUT STD_LOGIC );
end;


architecture behav of extract_col is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal end_idx_reg_252 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_cast1_fu_137_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast1_reg_257 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_2_fu_147_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_2_reg_265 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_3_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_reg_270 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_fu_141_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_fu_158_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_reg_274 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_163_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_reg_284 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_6_fu_196_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_6_reg_296 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reg_101 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_s_fu_116_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_127_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_40 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_2_fu_224_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_168_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_fu_121_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_3_fu_153_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_158_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


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


    i_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_reg_101 <= i_2_reg_265;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                i_reg_101 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_fu_40_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_5_reg_284 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                j_fu_40 <= j_2_fu_224_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                j_fu_40 <= inp_csc_colptr_q0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                end_idx_reg_252 <= inp_csc_colptr_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                i_2_reg_265 <= i_2_fu_147_p2;
                    i_cast1_reg_257(2 downto 0) <= i_cast1_fu_137_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_141_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_3_reg_270 <= tmp_3_fu_153_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_141_p2 = ap_const_lv1_0) and (tmp_3_fu_153_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_4_reg_274 <= tmp_4_fu_158_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                tmp_5_reg_284 <= tmp_5_fu_163_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_5_fu_163_p2 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                tmp_6_reg_296 <= tmp_6_fu_196_p1;
            end if;
        end if;
    end process;
    i_cast1_reg_257(31 downto 3) <= "00000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, exitcond_fu_141_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((exitcond_fu_141_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3, exitcond_fu_141_p2)
    begin
        if ((((exitcond_fu_141_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state3, exitcond_fu_141_p2)
    begin
        if (((exitcond_fu_141_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_141_p2 <= "1" when (i_reg_101 = ap_const_lv3_4) else "0";
    i_2_fu_147_p2 <= std_logic_vector(unsigned(i_reg_101) + unsigned(ap_const_lv3_1));
    i_cast1_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_101),32));
    inp_csc_colptr_address0 <= tmp_s_fu_116_p1(3 - 1 downto 0);
    inp_csc_colptr_address1 <= tmp_2_fu_127_p1(3 - 1 downto 0);

    inp_csc_colptr_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            inp_csc_colptr_ce0 <= ap_const_logic_1;
        else 
            inp_csc_colptr_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    inp_csc_colptr_ce1_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            inp_csc_colptr_ce1 <= ap_const_logic_1;
        else 
            inp_csc_colptr_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    inp_csc_data_V_address0 <= tmp_4_reg_274(5 - 1 downto 0);

    inp_csc_data_V_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            inp_csc_data_V_ce0 <= ap_const_logic_1;
        else 
            inp_csc_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    inp_csc_rowind_address0 <= tmp_4_fu_158_p1(5 - 1 downto 0);

    inp_csc_rowind_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            inp_csc_rowind_ce0 <= ap_const_logic_1;
        else 
            inp_csc_rowind_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    j_2_fu_224_p2 <= std_logic_vector(unsigned(j_fu_40) + unsigned(ap_const_lv32_1));

    out_col_V_0_assign_proc : process(inp_csc_data_V_q0, tmp_3_reg_270, tmp_5_fu_163_p2, tmp_5_reg_284, ap_CS_fsm_state4, tmp_6_reg_296, ap_CS_fsm_state5, tmp_fu_168_p1)
    begin
        if (((tmp_5_reg_284 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_6_reg_296 = ap_const_lv2_0))) then 
            out_col_V_0 <= inp_csc_data_V_q0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (((tmp_3_reg_270 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_0)) or ((tmp_5_fu_163_p2 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_0))))) then 
            out_col_V_0 <= ap_const_lv32_0;
        else 
            out_col_V_0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    out_col_V_0_ap_vld_assign_proc : process(tmp_3_reg_270, tmp_5_fu_163_p2, tmp_5_reg_284, ap_CS_fsm_state4, tmp_6_reg_296, ap_CS_fsm_state5, tmp_fu_168_p1)
    begin
        if ((((tmp_5_reg_284 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_6_reg_296 = ap_const_lv2_0)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and (((tmp_3_reg_270 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_0)) or ((tmp_5_fu_163_p2 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_0)))))) then 
            out_col_V_0_ap_vld <= ap_const_logic_1;
        else 
            out_col_V_0_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    out_col_V_1_assign_proc : process(inp_csc_data_V_q0, tmp_3_reg_270, tmp_5_fu_163_p2, tmp_5_reg_284, ap_CS_fsm_state4, tmp_6_reg_296, ap_CS_fsm_state5, tmp_fu_168_p1)
    begin
        if (((tmp_5_reg_284 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_6_reg_296 = ap_const_lv2_1))) then 
            out_col_V_1 <= inp_csc_data_V_q0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (((tmp_3_reg_270 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_1)) or ((tmp_5_fu_163_p2 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_1))))) then 
            out_col_V_1 <= ap_const_lv32_0;
        else 
            out_col_V_1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    out_col_V_1_ap_vld_assign_proc : process(tmp_3_reg_270, tmp_5_fu_163_p2, tmp_5_reg_284, ap_CS_fsm_state4, tmp_6_reg_296, ap_CS_fsm_state5, tmp_fu_168_p1)
    begin
        if ((((tmp_5_reg_284 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_6_reg_296 = ap_const_lv2_1)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and (((tmp_3_reg_270 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_1)) or ((tmp_5_fu_163_p2 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_1)))))) then 
            out_col_V_1_ap_vld <= ap_const_logic_1;
        else 
            out_col_V_1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    out_col_V_2_assign_proc : process(inp_csc_data_V_q0, tmp_3_reg_270, tmp_5_fu_163_p2, tmp_5_reg_284, ap_CS_fsm_state4, tmp_6_reg_296, ap_CS_fsm_state5, tmp_fu_168_p1)
    begin
        if (((tmp_5_reg_284 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_6_reg_296 = ap_const_lv2_2))) then 
            out_col_V_2 <= inp_csc_data_V_q0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (((tmp_3_reg_270 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_2)) or ((tmp_5_fu_163_p2 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_2))))) then 
            out_col_V_2 <= ap_const_lv32_0;
        else 
            out_col_V_2 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    out_col_V_2_ap_vld_assign_proc : process(tmp_3_reg_270, tmp_5_fu_163_p2, tmp_5_reg_284, ap_CS_fsm_state4, tmp_6_reg_296, ap_CS_fsm_state5, tmp_fu_168_p1)
    begin
        if ((((tmp_5_reg_284 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_6_reg_296 = ap_const_lv2_2)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and (((tmp_3_reg_270 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_2)) or ((tmp_5_fu_163_p2 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_2)))))) then 
            out_col_V_2_ap_vld <= ap_const_logic_1;
        else 
            out_col_V_2_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    out_col_V_3_assign_proc : process(inp_csc_data_V_q0, tmp_3_reg_270, tmp_5_fu_163_p2, tmp_5_reg_284, ap_CS_fsm_state4, tmp_6_reg_296, ap_CS_fsm_state5, tmp_fu_168_p1)
    begin
        if (((tmp_5_reg_284 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_6_reg_296 = ap_const_lv2_3))) then 
            out_col_V_3 <= inp_csc_data_V_q0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (((tmp_3_reg_270 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_3)) or ((tmp_5_fu_163_p2 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_3))))) then 
            out_col_V_3 <= ap_const_lv32_0;
        else 
            out_col_V_3 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    out_col_V_3_ap_vld_assign_proc : process(tmp_3_reg_270, tmp_5_fu_163_p2, tmp_5_reg_284, ap_CS_fsm_state4, tmp_6_reg_296, ap_CS_fsm_state5, tmp_fu_168_p1)
    begin
        if ((((tmp_5_reg_284 = ap_const_lv1_1) and (tmp_3_reg_270 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_6_reg_296 = ap_const_lv2_3)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and (((tmp_3_reg_270 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_3)) or ((tmp_5_fu_163_p2 = ap_const_lv1_0) and (tmp_fu_168_p1 = ap_const_lv2_3)))))) then 
            out_col_V_3_ap_vld <= ap_const_logic_1;
        else 
            out_col_V_3_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_121_p2 <= std_logic_vector(unsigned(col) + unsigned(ap_const_lv3_1));
    tmp_2_fu_127_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_121_p2),64));
    tmp_3_fu_153_p0 <= j_fu_40;
    tmp_3_fu_153_p2 <= "1" when (signed(tmp_3_fu_153_p0) < signed(end_idx_reg_252)) else "0";
    tmp_4_fu_158_p0 <= j_fu_40;
        tmp_4_fu_158_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_4_fu_158_p0),64));

    tmp_5_fu_163_p2 <= "1" when (inp_csc_rowind_q0 = i_cast1_reg_257) else "0";
    tmp_6_fu_196_p1 <= i_reg_101(2 - 1 downto 0);
    tmp_fu_168_p1 <= i_reg_101(2 - 1 downto 0);
    tmp_s_fu_116_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col),64));
end behav;