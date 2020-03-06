-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Tue Feb 25 22:42:23 2020
-- Host        : DESKTOP-4INRPJ4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/carlo/Downloads/project_5_2/project_5_2.srcs/sources_1/ip/mem/mem_sim_netlist.vhdl
-- Design      : mem
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mem_spram is
  port (
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mem_spram : entity is "spram";
end mem_spram;

architecture STRUCTURE of mem_spram is
  signal qspo_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qspo_int : signal is "true";
  signal \^spo\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
  attribute KEEP of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute KEEP of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute KEEP of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute KEEP of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute KEEP of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute KEEP of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute KEEP of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
begin
  spo(7 downto 0) <= \^spo\(7 downto 0);
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(0),
      Q => qspo_int(0),
      R => '0'
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(1),
      Q => qspo_int(1),
      R => '0'
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(2),
      Q => qspo_int(2),
      R => '0'
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(3),
      Q => qspo_int(3),
      R => '0'
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(4),
      Q => qspo_int(4),
      R => '0'
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(5),
      Q => qspo_int(5),
      R => '0'
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(6),
      Q => qspo_int(6),
      R => '0'
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(7),
      Q => qspo_int(7),
      R => '0'
    );
ram_reg_0_31_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"000085AB"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(0),
      O => \^spo\(0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00008BEB"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(1),
      O => \^spo\(1),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00004282"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(2),
      O => \^spo\(2),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000F545"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(3),
      O => \^spo\(3),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00009565"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(4),
      O => \^spo\(4),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FC8E"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(5),
      O => \^spo\(5),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00009874"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(6),
      O => \^spo\(6),
      WCLK => clk,
      WE => we
    );
ram_reg_0_31_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00007AEF"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      D => d(7),
      O => \^spo\(7),
      WCLK => clk,
      WE => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mem_dist_mem_gen_v8_0_11_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mem_dist_mem_gen_v8_0_11_synth : entity is "dist_mem_gen_v8_0_11_synth";
end mem_dist_mem_gen_v8_0_11_synth;

architecture STRUCTURE of mem_dist_mem_gen_v8_0_11_synth is
begin
\gen_sp_ram.spram_inst\: entity work.mem_spram
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      spo(7 downto 0) => spo(7 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mem_dist_mem_gen_v8_0_11 is
  port (
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of mem_dist_mem_gen_v8_0_11 : entity is 5;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of mem_dist_mem_gen_v8_0_11 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of mem_dist_mem_gen_v8_0_11 : entity is 32;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of mem_dist_mem_gen_v8_0_11 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of mem_dist_mem_gen_v8_0_11 : entity is "zynq";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of mem_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of mem_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of mem_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of mem_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of mem_dist_mem_gen_v8_0_11 : entity is "mem.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of mem_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of mem_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of mem_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of mem_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of mem_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of mem_dist_mem_gen_v8_0_11 : entity is 8;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mem_dist_mem_gen_v8_0_11 : entity is "dist_mem_gen_v8_0_11";
end mem_dist_mem_gen_v8_0_11;

architecture STRUCTURE of mem_dist_mem_gen_v8_0_11 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.mem_dist_mem_gen_v8_0_11_synth
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      spo(7 downto 0) => spo(7 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mem is
  port (
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mem : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mem : entity is "mem,dist_mem_gen_v8_0_11,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mem : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mem : entity is "dist_mem_gen_v8_0_11,Vivado 2016.4";
end mem;

architecture STRUCTURE of mem is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 5;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 32;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "mem.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 8;
begin
U0: entity work.mem_dist_mem_gen_v8_0_11
     port map (
      a(4 downto 0) => a(4 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      dpo(7 downto 0) => NLW_U0_dpo_UNCONNECTED(7 downto 0),
      dpra(4 downto 0) => B"00000",
      i_ce => '1',
      qdpo(7 downto 0) => NLW_U0_qdpo_UNCONNECTED(7 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(7 downto 0) => NLW_U0_qspo_UNCONNECTED(7 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(7 downto 0) => spo(7 downto 0),
      we => we
    );
end STRUCTURE;
