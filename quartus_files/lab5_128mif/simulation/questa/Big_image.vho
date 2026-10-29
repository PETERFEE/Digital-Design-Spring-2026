-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "03/05/2026 18:41:36"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga IS
    PORT (
	clk : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(1 DOWNTO 0);
	red : OUT std_logic_vector(3 DOWNTO 0);
	green : OUT std_logic_vector(3 DOWNTO 0);
	blue : OUT std_logic_vector(3 DOWNTO 0);
	h_sync : OUT std_logic;
	v_sync : OUT std_logic
	);
END vga;

-- Design Ports Information
-- switch[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_sync	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_sync	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \red[0]~output_o\ : std_logic;
SIGNAL \red[1]~output_o\ : std_logic;
SIGNAL \red[2]~output_o\ : std_logic;
SIGNAL \red[3]~output_o\ : std_logic;
SIGNAL \green[0]~output_o\ : std_logic;
SIGNAL \green[1]~output_o\ : std_logic;
SIGNAL \green[2]~output_o\ : std_logic;
SIGNAL \green[3]~output_o\ : std_logic;
SIGNAL \blue[0]~output_o\ : std_logic;
SIGNAL \blue[1]~output_o\ : std_logic;
SIGNAL \blue[2]~output_o\ : std_logic;
SIGNAL \blue[3]~output_o\ : std_logic;
SIGNAL \h_sync~output_o\ : std_logic;
SIGNAL \v_sync~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux0~6_combout\ : std_logic;
SIGNAL \sync_gen_inst|pixel_clk_div|count[0]~0_combout\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \sync_gen_inst|pixel_clk_div|pixel_clk~q\ : std_logic;
SIGNAL \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\ : std_logic;
SIGNAL \sync_gen_inst|Add1~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Vcount~3_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~13\ : std_logic;
SIGNAL \sync_gen_inst|Add0~14_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~15\ : std_logic;
SIGNAL \sync_gen_inst|Add0~16_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Hcount~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~17\ : std_logic;
SIGNAL \sync_gen_inst|Add0~18_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Hcount~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~1\ : std_logic;
SIGNAL \sync_gen_inst|Add0~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~3\ : std_logic;
SIGNAL \sync_gen_inst|Add0~4_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal0~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~5\ : std_logic;
SIGNAL \sync_gen_inst|Add0~6_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~7\ : std_logic;
SIGNAL \sync_gen_inst|Add0~8_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal0~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal0~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~9\ : std_logic;
SIGNAL \sync_gen_inst|Add0~10_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Hcount~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~11\ : std_logic;
SIGNAL \sync_gen_inst|Add0~12_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal1~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal1~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~1\ : std_logic;
SIGNAL \sync_gen_inst|Add1~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~3\ : std_logic;
SIGNAL \sync_gen_inst|Add1~4_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Vcount~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal2~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~17\ : std_logic;
SIGNAL \sync_gen_inst|Add1~18_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Vcount~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal2~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal2~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~5\ : std_logic;
SIGNAL \sync_gen_inst|Add1~6_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Vcount~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~7\ : std_logic;
SIGNAL \sync_gen_inst|Add1~8_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~9\ : std_logic;
SIGNAL \sync_gen_inst|Add1~10_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~11\ : std_logic;
SIGNAL \sync_gen_inst|Add1~12_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~13\ : std_logic;
SIGNAL \sync_gen_inst|Add1~14_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~15\ : std_logic;
SIGNAL \sync_gen_inst|Add1~16_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~3_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~5_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~0_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~6_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~4_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux0~7_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux6~0_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux0~4_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux0~5_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~1_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~2_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux0~8_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~0_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~2\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~4\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~6\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~8\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~10\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~12\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~13_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~15_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~16_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux7~0_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux6~1_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~0_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~2_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|process_0~0_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux7~1_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|process_0~1_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux6~0_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~3_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~1\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~4_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~6_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~7_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~5\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~8_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~10_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~11_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~9\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~12_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~14_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~15_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~13\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~16_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~18_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~19_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~17\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~20_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~22_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~23_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~21\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~24_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~26_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~27_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~1_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~17_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~18_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~3_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~19_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~20_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~5_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~21_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~22_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~7_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~23_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~24_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~9_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~25_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~26_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~11_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~27_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~28_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \sync_gen_inst|LessThan5~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \red~1_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \red~2_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \red~3_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \green~0_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \green~1_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \green~2_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \green~3_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \blue~0_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \blue~1_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \blue~2_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \blue~3_combout\ : std_logic;
SIGNAL \sync_gen_inst|Horiz_Sync~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Horiz_Sync~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Horiz_Sync~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Horiz_Sync~3_combout\ : std_logic;
SIGNAL \sync_gen_inst|Vert_Sync~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Vert_Sync~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Vert_Sync~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \sync_gen_inst|temp_Hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \sync_gen_inst|pixel_clk_div|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \row_addr_gen_inst|ALT_INV_Add0~16_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_switch <= switch;
ww_button <= button;
red <= ww_red;
green <= ww_green;
blue <= ww_blue;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rom_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\rom_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~28_combout\ & \row_addr_gen_inst|Add0~26_combout\ & \row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~22_combout\ & 
\row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~18_combout\ & \col_addr_gen_inst|Add0~27_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & 
\col_addr_gen_inst|Add0~11_combout\ & \col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \rom_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sync_gen_inst|pixel_clk_div|pixel_clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\row_addr_gen_inst|ALT_INV_Add0~16_combout\ <= NOT \row_addr_gen_inst|Add0~16_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X18_Y0_N30
\red[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red~0_combout\,
	devoe => ww_devoe,
	o => \red[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\red[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red~1_combout\,
	devoe => ww_devoe,
	o => \red[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\red[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red~2_combout\,
	devoe => ww_devoe,
	o => \red[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\red[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red~3_combout\,
	devoe => ww_devoe,
	o => \red[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\green[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green~0_combout\,
	devoe => ww_devoe,
	o => \green[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\green[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green~1_combout\,
	devoe => ww_devoe,
	o => \green[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\green[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green~2_combout\,
	devoe => ww_devoe,
	o => \green[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\green[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green~3_combout\,
	devoe => ww_devoe,
	o => \green[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\blue[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue~0_combout\,
	devoe => ww_devoe,
	o => \blue[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\blue[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue~1_combout\,
	devoe => ww_devoe,
	o => \blue[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\blue[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue~2_combout\,
	devoe => ww_devoe,
	o => \blue[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\blue[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue~3_combout\,
	devoe => ww_devoe,
	o => \blue[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\h_sync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sync_gen_inst|Horiz_Sync~3_combout\,
	devoe => ww_devoe,
	o => \h_sync~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\v_sync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sync_gen_inst|Vert_Sync~2_combout\,
	devoe => ww_devoe,
	o => \v_sync~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\switch[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\switch[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\switch[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LCCOMB_X44_Y33_N0
\row_addr_gen_inst|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux0~6_combout\ = (\switch[2]~input_o\ & (!\switch[1]~input_o\ & !\switch[0]~input_o\)) # (!\switch[2]~input_o\ & (\switch[1]~input_o\ & \switch[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \row_addr_gen_inst|Mux0~6_combout\);

-- Location: LCCOMB_X47_Y34_N4
\sync_gen_inst|pixel_clk_div|count[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|pixel_clk_div|count[0]~0_combout\ = !\sync_gen_inst|pixel_clk_div|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|pixel_clk_div|count\(0),
	combout => \sync_gen_inst|pixel_clk_div|count[0]~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\button[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: FF_X47_Y34_N5
\sync_gen_inst|pixel_clk_div|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sync_gen_inst|pixel_clk_div|count[0]~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|pixel_clk_div|count\(0));

-- Location: FF_X47_Y34_N17
\sync_gen_inst|pixel_clk_div|pixel_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sync_gen_inst|pixel_clk_div|count\(0),
	clrn => \button[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|pixel_clk_div|pixel_clk~q\);

-- Location: CLKCTRL_G13
\sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y33_N6
\sync_gen_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~0_combout\ = \sync_gen_inst|temp_Vcount\(0) $ (VCC)
-- \sync_gen_inst|Add1~1\ = CARRY(\sync_gen_inst|temp_Vcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(0),
	datad => VCC,
	combout => \sync_gen_inst|Add1~0_combout\,
	cout => \sync_gen_inst|Add1~1\);

-- Location: LCCOMB_X47_Y33_N30
\sync_gen_inst|temp_Vcount~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Vcount~3_combout\ = (!\sync_gen_inst|Equal2~2_combout\ & \sync_gen_inst|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|Equal2~2_combout\,
	datad => \sync_gen_inst|Add1~0_combout\,
	combout => \sync_gen_inst|temp_Vcount~3_combout\);

-- Location: LCCOMB_X46_Y34_N12
\sync_gen_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~12_combout\ = (\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|Add0~11\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(6) & (!\sync_gen_inst|Add0~11\ & VCC))
-- \sync_gen_inst|Add0~13\ = CARRY((\sync_gen_inst|temp_Hcount\(6) & !\sync_gen_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(6),
	datad => VCC,
	cin => \sync_gen_inst|Add0~11\,
	combout => \sync_gen_inst|Add0~12_combout\,
	cout => \sync_gen_inst|Add0~13\);

-- Location: LCCOMB_X46_Y34_N14
\sync_gen_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~14_combout\ = (\sync_gen_inst|temp_Hcount\(7) & (!\sync_gen_inst|Add0~13\)) # (!\sync_gen_inst|temp_Hcount\(7) & ((\sync_gen_inst|Add0~13\) # (GND)))
-- \sync_gen_inst|Add0~15\ = CARRY((!\sync_gen_inst|Add0~13\) # (!\sync_gen_inst|temp_Hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(7),
	datad => VCC,
	cin => \sync_gen_inst|Add0~13\,
	combout => \sync_gen_inst|Add0~14_combout\,
	cout => \sync_gen_inst|Add0~15\);

-- Location: FF_X46_Y34_N15
\sync_gen_inst|temp_Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add0~14_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(7));

-- Location: LCCOMB_X46_Y34_N16
\sync_gen_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~16_combout\ = (\sync_gen_inst|temp_Hcount\(8) & (\sync_gen_inst|Add0~15\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(8) & (!\sync_gen_inst|Add0~15\ & VCC))
-- \sync_gen_inst|Add0~17\ = CARRY((\sync_gen_inst|temp_Hcount\(8) & !\sync_gen_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(8),
	datad => VCC,
	cin => \sync_gen_inst|Add0~15\,
	combout => \sync_gen_inst|Add0~16_combout\,
	cout => \sync_gen_inst|Add0~17\);

-- Location: LCCOMB_X46_Y34_N26
\sync_gen_inst|temp_Hcount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Hcount~1_combout\ = (!\sync_gen_inst|Equal0~2_combout\ & \sync_gen_inst|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|Equal0~2_combout\,
	datad => \sync_gen_inst|Add0~16_combout\,
	combout => \sync_gen_inst|temp_Hcount~1_combout\);

-- Location: FF_X46_Y34_N27
\sync_gen_inst|temp_Hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|temp_Hcount~1_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(8));

-- Location: LCCOMB_X46_Y34_N18
\sync_gen_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~18_combout\ = \sync_gen_inst|Add0~17\ $ (\sync_gen_inst|temp_Hcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sync_gen_inst|temp_Hcount\(9),
	cin => \sync_gen_inst|Add0~17\,
	combout => \sync_gen_inst|Add0~18_combout\);

-- Location: LCCOMB_X46_Y34_N24
\sync_gen_inst|temp_Hcount~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Hcount~0_combout\ = (!\sync_gen_inst|Equal0~2_combout\ & \sync_gen_inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|Equal0~2_combout\,
	datac => \sync_gen_inst|Add0~18_combout\,
	combout => \sync_gen_inst|temp_Hcount~0_combout\);

-- Location: FF_X46_Y34_N25
\sync_gen_inst|temp_Hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|temp_Hcount~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(9));

-- Location: LCCOMB_X46_Y34_N0
\sync_gen_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~0_combout\ = \sync_gen_inst|temp_Hcount\(0) $ (VCC)
-- \sync_gen_inst|Add0~1\ = CARRY(\sync_gen_inst|temp_Hcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(0),
	datad => VCC,
	combout => \sync_gen_inst|Add0~0_combout\,
	cout => \sync_gen_inst|Add0~1\);

-- Location: FF_X46_Y34_N1
\sync_gen_inst|temp_Hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add0~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(0));

-- Location: LCCOMB_X46_Y34_N2
\sync_gen_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~2_combout\ = (\sync_gen_inst|temp_Hcount\(1) & (!\sync_gen_inst|Add0~1\)) # (!\sync_gen_inst|temp_Hcount\(1) & ((\sync_gen_inst|Add0~1\) # (GND)))
-- \sync_gen_inst|Add0~3\ = CARRY((!\sync_gen_inst|Add0~1\) # (!\sync_gen_inst|temp_Hcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(1),
	datad => VCC,
	cin => \sync_gen_inst|Add0~1\,
	combout => \sync_gen_inst|Add0~2_combout\,
	cout => \sync_gen_inst|Add0~3\);

-- Location: FF_X46_Y34_N3
\sync_gen_inst|temp_Hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add0~2_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(1));

-- Location: LCCOMB_X46_Y34_N4
\sync_gen_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~4_combout\ = (\sync_gen_inst|temp_Hcount\(2) & (\sync_gen_inst|Add0~3\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(2) & (!\sync_gen_inst|Add0~3\ & VCC))
-- \sync_gen_inst|Add0~5\ = CARRY((\sync_gen_inst|temp_Hcount\(2) & !\sync_gen_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(2),
	datad => VCC,
	cin => \sync_gen_inst|Add0~3\,
	combout => \sync_gen_inst|Add0~4_combout\,
	cout => \sync_gen_inst|Add0~5\);

-- Location: FF_X46_Y34_N5
\sync_gen_inst|temp_Hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add0~4_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(2));

-- Location: LCCOMB_X47_Y34_N22
\sync_gen_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal0~1_combout\ = (!\sync_gen_inst|temp_Hcount\(7) & (\sync_gen_inst|temp_Hcount\(2) & (\sync_gen_inst|temp_Hcount\(8) & !\sync_gen_inst|temp_Hcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(7),
	datab => \sync_gen_inst|temp_Hcount\(2),
	datac => \sync_gen_inst|temp_Hcount\(8),
	datad => \sync_gen_inst|temp_Hcount\(5),
	combout => \sync_gen_inst|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y34_N6
\sync_gen_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~6_combout\ = (\sync_gen_inst|temp_Hcount\(3) & (!\sync_gen_inst|Add0~5\)) # (!\sync_gen_inst|temp_Hcount\(3) & ((\sync_gen_inst|Add0~5\) # (GND)))
-- \sync_gen_inst|Add0~7\ = CARRY((!\sync_gen_inst|Add0~5\) # (!\sync_gen_inst|temp_Hcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(3),
	datad => VCC,
	cin => \sync_gen_inst|Add0~5\,
	combout => \sync_gen_inst|Add0~6_combout\,
	cout => \sync_gen_inst|Add0~7\);

-- Location: FF_X46_Y34_N7
\sync_gen_inst|temp_Hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add0~6_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(3));

-- Location: LCCOMB_X46_Y34_N8
\sync_gen_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~8_combout\ = (\sync_gen_inst|temp_Hcount\(4) & (\sync_gen_inst|Add0~7\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(4) & (!\sync_gen_inst|Add0~7\ & VCC))
-- \sync_gen_inst|Add0~9\ = CARRY((\sync_gen_inst|temp_Hcount\(4) & !\sync_gen_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(4),
	datad => VCC,
	cin => \sync_gen_inst|Add0~7\,
	combout => \sync_gen_inst|Add0~8_combout\,
	cout => \sync_gen_inst|Add0~9\);

-- Location: FF_X46_Y34_N9
\sync_gen_inst|temp_Hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add0~8_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(4));

-- Location: LCCOMB_X46_Y34_N20
\sync_gen_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal0~0_combout\ = (\sync_gen_inst|temp_Hcount\(3) & (\sync_gen_inst|temp_Hcount\(0) & (\sync_gen_inst|temp_Hcount\(4) & \sync_gen_inst|temp_Hcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(3),
	datab => \sync_gen_inst|temp_Hcount\(0),
	datac => \sync_gen_inst|temp_Hcount\(4),
	datad => \sync_gen_inst|temp_Hcount\(1),
	combout => \sync_gen_inst|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y34_N8
\sync_gen_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal0~2_combout\ = (!\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|temp_Hcount\(9) & (\sync_gen_inst|Equal0~1_combout\ & \sync_gen_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(6),
	datab => \sync_gen_inst|temp_Hcount\(9),
	datac => \sync_gen_inst|Equal0~1_combout\,
	datad => \sync_gen_inst|Equal0~0_combout\,
	combout => \sync_gen_inst|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y34_N10
\sync_gen_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~10_combout\ = (\sync_gen_inst|temp_Hcount\(5) & (!\sync_gen_inst|Add0~9\)) # (!\sync_gen_inst|temp_Hcount\(5) & ((\sync_gen_inst|Add0~9\) # (GND)))
-- \sync_gen_inst|Add0~11\ = CARRY((!\sync_gen_inst|Add0~9\) # (!\sync_gen_inst|temp_Hcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(5),
	datad => VCC,
	cin => \sync_gen_inst|Add0~9\,
	combout => \sync_gen_inst|Add0~10_combout\,
	cout => \sync_gen_inst|Add0~11\);

-- Location: LCCOMB_X46_Y34_N22
\sync_gen_inst|temp_Hcount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Hcount~2_combout\ = (!\sync_gen_inst|Equal0~2_combout\ & \sync_gen_inst|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|Equal0~2_combout\,
	datad => \sync_gen_inst|Add0~10_combout\,
	combout => \sync_gen_inst|temp_Hcount~2_combout\);

-- Location: FF_X46_Y34_N23
\sync_gen_inst|temp_Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|temp_Hcount~2_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(5));

-- Location: FF_X46_Y34_N13
\sync_gen_inst|temp_Hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add0~12_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Hcount\(6));

-- Location: LCCOMB_X46_Y34_N28
\sync_gen_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal1~0_combout\ = (!\sync_gen_inst|temp_Hcount\(8) & (\sync_gen_inst|temp_Hcount\(7) & (\sync_gen_inst|temp_Hcount\(5) & !\sync_gen_inst|temp_Hcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(8),
	datab => \sync_gen_inst|temp_Hcount\(7),
	datac => \sync_gen_inst|temp_Hcount\(5),
	datad => \sync_gen_inst|temp_Hcount\(2),
	combout => \sync_gen_inst|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y34_N30
\sync_gen_inst|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal1~1_combout\ = (!\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|Equal0~0_combout\ & (\sync_gen_inst|temp_Hcount\(9) & \sync_gen_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(6),
	datab => \sync_gen_inst|Equal0~0_combout\,
	datac => \sync_gen_inst|temp_Hcount\(9),
	datad => \sync_gen_inst|Equal1~0_combout\,
	combout => \sync_gen_inst|Equal1~1_combout\);

-- Location: FF_X47_Y33_N31
\sync_gen_inst|temp_Vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|temp_Vcount~3_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(0));

-- Location: LCCOMB_X47_Y33_N8
\sync_gen_inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~2_combout\ = (\sync_gen_inst|temp_Vcount\(1) & (!\sync_gen_inst|Add1~1\)) # (!\sync_gen_inst|temp_Vcount\(1) & ((\sync_gen_inst|Add1~1\) # (GND)))
-- \sync_gen_inst|Add1~3\ = CARRY((!\sync_gen_inst|Add1~1\) # (!\sync_gen_inst|temp_Vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(1),
	datad => VCC,
	cin => \sync_gen_inst|Add1~1\,
	combout => \sync_gen_inst|Add1~2_combout\,
	cout => \sync_gen_inst|Add1~3\);

-- Location: FF_X47_Y33_N9
\sync_gen_inst|temp_Vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add1~2_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(1));

-- Location: LCCOMB_X47_Y33_N10
\sync_gen_inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~4_combout\ = (\sync_gen_inst|temp_Vcount\(2) & (\sync_gen_inst|Add1~3\ $ (GND))) # (!\sync_gen_inst|temp_Vcount\(2) & (!\sync_gen_inst|Add1~3\ & VCC))
-- \sync_gen_inst|Add1~5\ = CARRY((\sync_gen_inst|temp_Vcount\(2) & !\sync_gen_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(2),
	datad => VCC,
	cin => \sync_gen_inst|Add1~3\,
	combout => \sync_gen_inst|Add1~4_combout\,
	cout => \sync_gen_inst|Add1~5\);

-- Location: LCCOMB_X46_Y33_N12
\sync_gen_inst|temp_Vcount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Vcount~2_combout\ = (!\sync_gen_inst|Equal2~2_combout\ & \sync_gen_inst|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|Equal2~2_combout\,
	datac => \sync_gen_inst|Add1~4_combout\,
	combout => \sync_gen_inst|temp_Vcount~2_combout\);

-- Location: FF_X46_Y33_N13
\sync_gen_inst|temp_Vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|temp_Vcount~2_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(2));

-- Location: LCCOMB_X46_Y33_N4
\sync_gen_inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal2~0_combout\ = (!\sync_gen_inst|temp_Vcount\(0) & (\sync_gen_inst|temp_Vcount\(3) & (!\sync_gen_inst|temp_Vcount\(1) & \sync_gen_inst|temp_Vcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(0),
	datab => \sync_gen_inst|temp_Vcount\(3),
	datac => \sync_gen_inst|temp_Vcount\(1),
	datad => \sync_gen_inst|temp_Vcount\(2),
	combout => \sync_gen_inst|Equal2~0_combout\);

-- Location: LCCOMB_X47_Y33_N22
\sync_gen_inst|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~16_combout\ = (\sync_gen_inst|temp_Vcount\(8) & (\sync_gen_inst|Add1~15\ $ (GND))) # (!\sync_gen_inst|temp_Vcount\(8) & (!\sync_gen_inst|Add1~15\ & VCC))
-- \sync_gen_inst|Add1~17\ = CARRY((\sync_gen_inst|temp_Vcount\(8) & !\sync_gen_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(8),
	datad => VCC,
	cin => \sync_gen_inst|Add1~15\,
	combout => \sync_gen_inst|Add1~16_combout\,
	cout => \sync_gen_inst|Add1~17\);

-- Location: LCCOMB_X47_Y33_N24
\sync_gen_inst|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~18_combout\ = \sync_gen_inst|Add1~17\ $ (\sync_gen_inst|temp_Vcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sync_gen_inst|temp_Vcount\(9),
	cin => \sync_gen_inst|Add1~17\,
	combout => \sync_gen_inst|Add1~18_combout\);

-- Location: LCCOMB_X47_Y33_N0
\sync_gen_inst|temp_Vcount~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Vcount~0_combout\ = (!\sync_gen_inst|Equal2~2_combout\ & \sync_gen_inst|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|Equal2~2_combout\,
	datad => \sync_gen_inst|Add1~18_combout\,
	combout => \sync_gen_inst|temp_Vcount~0_combout\);

-- Location: FF_X47_Y33_N1
\sync_gen_inst|temp_Vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|temp_Vcount~0_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(9));

-- Location: LCCOMB_X47_Y33_N26
\sync_gen_inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal2~1_combout\ = (!\sync_gen_inst|temp_Vcount\(8) & (!\sync_gen_inst|temp_Vcount\(6) & (\sync_gen_inst|temp_Vcount\(9) & !\sync_gen_inst|temp_Vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(8),
	datab => \sync_gen_inst|temp_Vcount\(6),
	datac => \sync_gen_inst|temp_Vcount\(9),
	datad => \sync_gen_inst|temp_Vcount\(7),
	combout => \sync_gen_inst|Equal2~1_combout\);

-- Location: LCCOMB_X46_Y33_N26
\sync_gen_inst|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal2~2_combout\ = (!\sync_gen_inst|temp_Vcount\(5) & (!\sync_gen_inst|temp_Vcount\(4) & (\sync_gen_inst|Equal2~0_combout\ & \sync_gen_inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(5),
	datab => \sync_gen_inst|temp_Vcount\(4),
	datac => \sync_gen_inst|Equal2~0_combout\,
	datad => \sync_gen_inst|Equal2~1_combout\,
	combout => \sync_gen_inst|Equal2~2_combout\);

-- Location: LCCOMB_X47_Y33_N12
\sync_gen_inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~6_combout\ = (\sync_gen_inst|temp_Vcount\(3) & (!\sync_gen_inst|Add1~5\)) # (!\sync_gen_inst|temp_Vcount\(3) & ((\sync_gen_inst|Add1~5\) # (GND)))
-- \sync_gen_inst|Add1~7\ = CARRY((!\sync_gen_inst|Add1~5\) # (!\sync_gen_inst|temp_Vcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(3),
	datad => VCC,
	cin => \sync_gen_inst|Add1~5\,
	combout => \sync_gen_inst|Add1~6_combout\,
	cout => \sync_gen_inst|Add1~7\);

-- Location: LCCOMB_X46_Y33_N14
\sync_gen_inst|temp_Vcount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Vcount~1_combout\ = (!\sync_gen_inst|Equal2~2_combout\ & \sync_gen_inst|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|Equal2~2_combout\,
	datac => \sync_gen_inst|Add1~6_combout\,
	combout => \sync_gen_inst|temp_Vcount~1_combout\);

-- Location: FF_X46_Y33_N15
\sync_gen_inst|temp_Vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|temp_Vcount~1_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(3));

-- Location: LCCOMB_X47_Y33_N14
\sync_gen_inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~8_combout\ = (\sync_gen_inst|temp_Vcount\(4) & (\sync_gen_inst|Add1~7\ $ (GND))) # (!\sync_gen_inst|temp_Vcount\(4) & (!\sync_gen_inst|Add1~7\ & VCC))
-- \sync_gen_inst|Add1~9\ = CARRY((\sync_gen_inst|temp_Vcount\(4) & !\sync_gen_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(4),
	datad => VCC,
	cin => \sync_gen_inst|Add1~7\,
	combout => \sync_gen_inst|Add1~8_combout\,
	cout => \sync_gen_inst|Add1~9\);

-- Location: FF_X47_Y33_N15
\sync_gen_inst|temp_Vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add1~8_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(4));

-- Location: LCCOMB_X47_Y33_N16
\sync_gen_inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~10_combout\ = (\sync_gen_inst|temp_Vcount\(5) & (!\sync_gen_inst|Add1~9\)) # (!\sync_gen_inst|temp_Vcount\(5) & ((\sync_gen_inst|Add1~9\) # (GND)))
-- \sync_gen_inst|Add1~11\ = CARRY((!\sync_gen_inst|Add1~9\) # (!\sync_gen_inst|temp_Vcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(5),
	datad => VCC,
	cin => \sync_gen_inst|Add1~9\,
	combout => \sync_gen_inst|Add1~10_combout\,
	cout => \sync_gen_inst|Add1~11\);

-- Location: FF_X47_Y33_N17
\sync_gen_inst|temp_Vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add1~10_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(5));

-- Location: LCCOMB_X47_Y33_N18
\sync_gen_inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~12_combout\ = (\sync_gen_inst|temp_Vcount\(6) & (\sync_gen_inst|Add1~11\ $ (GND))) # (!\sync_gen_inst|temp_Vcount\(6) & (!\sync_gen_inst|Add1~11\ & VCC))
-- \sync_gen_inst|Add1~13\ = CARRY((\sync_gen_inst|temp_Vcount\(6) & !\sync_gen_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(6),
	datad => VCC,
	cin => \sync_gen_inst|Add1~11\,
	combout => \sync_gen_inst|Add1~12_combout\,
	cout => \sync_gen_inst|Add1~13\);

-- Location: FF_X47_Y33_N19
\sync_gen_inst|temp_Vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add1~12_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(6));

-- Location: LCCOMB_X47_Y33_N20
\sync_gen_inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~14_combout\ = (\sync_gen_inst|temp_Vcount\(7) & (!\sync_gen_inst|Add1~13\)) # (!\sync_gen_inst|temp_Vcount\(7) & ((\sync_gen_inst|Add1~13\) # (GND)))
-- \sync_gen_inst|Add1~15\ = CARRY((!\sync_gen_inst|Add1~13\) # (!\sync_gen_inst|temp_Vcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(7),
	datad => VCC,
	cin => \sync_gen_inst|Add1~13\,
	combout => \sync_gen_inst|Add1~14_combout\,
	cout => \sync_gen_inst|Add1~15\);

-- Location: FF_X47_Y33_N21
\sync_gen_inst|temp_Vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add1~14_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(7));

-- Location: FF_X47_Y33_N23
\sync_gen_inst|temp_Vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\,
	d => \sync_gen_inst|Add1~16_combout\,
	clrn => \button[0]~input_o\,
	ena => \sync_gen_inst|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(8));

-- Location: LCCOMB_X44_Y33_N6
\row_addr_gen_inst|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~3_combout\ = (\sync_gen_inst|temp_Vcount\(8) & !\sync_gen_inst|temp_Vcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|temp_Vcount\(8),
	datad => \sync_gen_inst|temp_Vcount\(9),
	combout => \row_addr_gen_inst|process_0~3_combout\);

-- Location: LCCOMB_X47_Y33_N4
\row_addr_gen_inst|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~5_combout\ = (\sync_gen_inst|temp_Vcount\(4) & ((\sync_gen_inst|temp_Vcount\(7)) # (\sync_gen_inst|temp_Vcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(7),
	datac => \sync_gen_inst|temp_Vcount\(4),
	datad => \sync_gen_inst|temp_Vcount\(6),
	combout => \row_addr_gen_inst|process_0~5_combout\);

-- Location: LCCOMB_X47_Y33_N28
\row_addr_gen_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~0_combout\ = (\sync_gen_inst|temp_Vcount\(3) & (\sync_gen_inst|temp_Vcount\(1) & (\sync_gen_inst|temp_Vcount\(0) & \sync_gen_inst|temp_Vcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(3),
	datab => \sync_gen_inst|temp_Vcount\(1),
	datac => \sync_gen_inst|temp_Vcount\(0),
	datad => \sync_gen_inst|temp_Vcount\(2),
	combout => \row_addr_gen_inst|process_0~0_combout\);

-- Location: LCCOMB_X46_Y33_N10
\row_addr_gen_inst|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~6_combout\ = (\sync_gen_inst|temp_Vcount\(7) & (!\sync_gen_inst|temp_Vcount\(5) & ((!\row_addr_gen_inst|process_0~0_combout\) # (!\row_addr_gen_inst|process_0~5_combout\)))) # (!\sync_gen_inst|temp_Vcount\(7) & 
-- (\row_addr_gen_inst|process_0~5_combout\ & ((\row_addr_gen_inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(7),
	datab => \row_addr_gen_inst|process_0~5_combout\,
	datac => \sync_gen_inst|temp_Vcount\(5),
	datad => \row_addr_gen_inst|process_0~0_combout\,
	combout => \row_addr_gen_inst|process_0~6_combout\);

-- Location: LCCOMB_X46_Y33_N28
\row_addr_gen_inst|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~4_combout\ = (\sync_gen_inst|temp_Vcount\(7) & ((!\sync_gen_inst|temp_Vcount\(6)))) # (!\sync_gen_inst|temp_Vcount\(7) & (\sync_gen_inst|temp_Vcount\(5) & \sync_gen_inst|temp_Vcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(7),
	datac => \sync_gen_inst|temp_Vcount\(5),
	datad => \sync_gen_inst|temp_Vcount\(6),
	combout => \row_addr_gen_inst|process_0~4_combout\);

-- Location: LCCOMB_X45_Y33_N22
\row_addr_gen_inst|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux0~7_combout\ = (\row_addr_gen_inst|Mux0~6_combout\ & (\row_addr_gen_inst|process_0~3_combout\ & ((\row_addr_gen_inst|process_0~6_combout\) # (\row_addr_gen_inst|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux0~6_combout\,
	datab => \row_addr_gen_inst|process_0~3_combout\,
	datac => \row_addr_gen_inst|process_0~6_combout\,
	datad => \row_addr_gen_inst|process_0~4_combout\,
	combout => \row_addr_gen_inst|Mux0~7_combout\);

-- Location: LCCOMB_X44_Y33_N14
\row_addr_gen_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux6~0_combout\ = (\switch[1]~input_o\ & (!\switch[2]~input_o\ & \switch[0]~input_o\)) # (!\switch[1]~input_o\ & ((!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \row_addr_gen_inst|Mux6~0_combout\);

-- Location: LCCOMB_X46_Y33_N24
\row_addr_gen_inst|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux0~4_combout\ = (!\switch[2]~input_o\ & (!\sync_gen_inst|temp_Vcount\(7) & !\sync_gen_inst|temp_Vcount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[2]~input_o\,
	datac => \sync_gen_inst|temp_Vcount\(7),
	datad => \sync_gen_inst|temp_Vcount\(8),
	combout => \row_addr_gen_inst|Mux0~4_combout\);

-- Location: LCCOMB_X46_Y33_N20
\row_addr_gen_inst|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux0~5_combout\ = (!\row_addr_gen_inst|Mux6~0_combout\ & (!\sync_gen_inst|temp_Vcount\(9) & \row_addr_gen_inst|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux6~0_combout\,
	datac => \sync_gen_inst|temp_Vcount\(9),
	datad => \row_addr_gen_inst|Mux0~4_combout\,
	combout => \row_addr_gen_inst|Mux0~5_combout\);

-- Location: LCCOMB_X47_Y33_N2
\row_addr_gen_inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~1_combout\ = (!\sync_gen_inst|temp_Vcount\(6) & (((!\sync_gen_inst|temp_Vcount\(4) & !\row_addr_gen_inst|process_0~0_combout\)) # (!\sync_gen_inst|temp_Vcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(6),
	datab => \sync_gen_inst|temp_Vcount\(5),
	datac => \sync_gen_inst|temp_Vcount\(4),
	datad => \row_addr_gen_inst|process_0~0_combout\,
	combout => \row_addr_gen_inst|process_0~1_combout\);

-- Location: LCCOMB_X46_Y33_N6
\row_addr_gen_inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~2_combout\ = (\sync_gen_inst|temp_Vcount\(9)) # ((\sync_gen_inst|temp_Vcount\(7) & ((\sync_gen_inst|temp_Vcount\(8)) # (\row_addr_gen_inst|process_0~1_combout\))) # (!\sync_gen_inst|temp_Vcount\(7) & 
-- ((!\row_addr_gen_inst|process_0~1_combout\) # (!\sync_gen_inst|temp_Vcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(7),
	datab => \sync_gen_inst|temp_Vcount\(8),
	datac => \sync_gen_inst|temp_Vcount\(9),
	datad => \row_addr_gen_inst|process_0~1_combout\,
	combout => \row_addr_gen_inst|process_0~2_combout\);

-- Location: LCCOMB_X46_Y33_N30
\row_addr_gen_inst|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux0~8_combout\ = (!\switch[1]~input_o\ & (!\switch[2]~input_o\ & (!\switch[0]~input_o\ & !\row_addr_gen_inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \row_addr_gen_inst|process_0~2_combout\,
	combout => \row_addr_gen_inst|Mux0~8_combout\);

-- Location: LCCOMB_X44_Y33_N16
\row_addr_gen_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~0_combout\ = (\switch[2]~input_o\) # (\switch[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \row_addr_gen_inst|Add0~0_combout\);

-- Location: LCCOMB_X45_Y33_N4
\row_addr_gen_inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~1_combout\ = \sync_gen_inst|temp_Vcount\(0) $ (VCC)
-- \row_addr_gen_inst|Add0~2\ = CARRY(\sync_gen_inst|temp_Vcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(0),
	datad => VCC,
	combout => \row_addr_gen_inst|Add0~1_combout\,
	cout => \row_addr_gen_inst|Add0~2\);

-- Location: LCCOMB_X45_Y33_N6
\row_addr_gen_inst|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~3_combout\ = (\sync_gen_inst|temp_Vcount\(1) & (!\row_addr_gen_inst|Add0~2\)) # (!\sync_gen_inst|temp_Vcount\(1) & ((\row_addr_gen_inst|Add0~2\) # (GND)))
-- \row_addr_gen_inst|Add0~4\ = CARRY((!\row_addr_gen_inst|Add0~2\) # (!\sync_gen_inst|temp_Vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(1),
	datad => VCC,
	cin => \row_addr_gen_inst|Add0~2\,
	combout => \row_addr_gen_inst|Add0~3_combout\,
	cout => \row_addr_gen_inst|Add0~4\);

-- Location: LCCOMB_X45_Y33_N8
\row_addr_gen_inst|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~5_combout\ = (\sync_gen_inst|temp_Vcount\(2) & (\row_addr_gen_inst|Add0~4\ $ (GND))) # (!\sync_gen_inst|temp_Vcount\(2) & (!\row_addr_gen_inst|Add0~4\ & VCC))
-- \row_addr_gen_inst|Add0~6\ = CARRY((\sync_gen_inst|temp_Vcount\(2) & !\row_addr_gen_inst|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(2),
	datad => VCC,
	cin => \row_addr_gen_inst|Add0~4\,
	combout => \row_addr_gen_inst|Add0~5_combout\,
	cout => \row_addr_gen_inst|Add0~6\);

-- Location: LCCOMB_X45_Y33_N10
\row_addr_gen_inst|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~7_combout\ = (\sync_gen_inst|temp_Vcount\(3) & (!\row_addr_gen_inst|Add0~6\)) # (!\sync_gen_inst|temp_Vcount\(3) & ((\row_addr_gen_inst|Add0~6\) # (GND)))
-- \row_addr_gen_inst|Add0~8\ = CARRY((!\row_addr_gen_inst|Add0~6\) # (!\sync_gen_inst|temp_Vcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(3),
	datad => VCC,
	cin => \row_addr_gen_inst|Add0~6\,
	combout => \row_addr_gen_inst|Add0~7_combout\,
	cout => \row_addr_gen_inst|Add0~8\);

-- Location: LCCOMB_X45_Y33_N12
\row_addr_gen_inst|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~9_combout\ = ((\sync_gen_inst|temp_Vcount\(4) $ (\row_addr_gen_inst|Add0~0_combout\ $ (\row_addr_gen_inst|Add0~8\)))) # (GND)
-- \row_addr_gen_inst|Add0~10\ = CARRY((\sync_gen_inst|temp_Vcount\(4) & ((!\row_addr_gen_inst|Add0~8\) # (!\row_addr_gen_inst|Add0~0_combout\))) # (!\sync_gen_inst|temp_Vcount\(4) & (!\row_addr_gen_inst|Add0~0_combout\ & !\row_addr_gen_inst|Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(4),
	datab => \row_addr_gen_inst|Add0~0_combout\,
	datad => VCC,
	cin => \row_addr_gen_inst|Add0~8\,
	combout => \row_addr_gen_inst|Add0~9_combout\,
	cout => \row_addr_gen_inst|Add0~10\);

-- Location: LCCOMB_X45_Y33_N14
\row_addr_gen_inst|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~11_combout\ = (\sync_gen_inst|temp_Vcount\(5) & ((\row_addr_gen_inst|Add0~0_combout\ & (\row_addr_gen_inst|Add0~10\ & VCC)) # (!\row_addr_gen_inst|Add0~0_combout\ & (!\row_addr_gen_inst|Add0~10\)))) # 
-- (!\sync_gen_inst|temp_Vcount\(5) & ((\row_addr_gen_inst|Add0~0_combout\ & (!\row_addr_gen_inst|Add0~10\)) # (!\row_addr_gen_inst|Add0~0_combout\ & ((\row_addr_gen_inst|Add0~10\) # (GND)))))
-- \row_addr_gen_inst|Add0~12\ = CARRY((\sync_gen_inst|temp_Vcount\(5) & (!\row_addr_gen_inst|Add0~0_combout\ & !\row_addr_gen_inst|Add0~10\)) # (!\sync_gen_inst|temp_Vcount\(5) & ((!\row_addr_gen_inst|Add0~10\) # (!\row_addr_gen_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(5),
	datab => \row_addr_gen_inst|Add0~0_combout\,
	datad => VCC,
	cin => \row_addr_gen_inst|Add0~10\,
	combout => \row_addr_gen_inst|Add0~11_combout\,
	cout => \row_addr_gen_inst|Add0~12\);

-- Location: LCCOMB_X45_Y33_N16
\row_addr_gen_inst|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~13_combout\ = \row_addr_gen_inst|Add0~0_combout\ $ (\row_addr_gen_inst|Add0~12\ $ (\sync_gen_inst|temp_Vcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Add0~0_combout\,
	datad => \sync_gen_inst|temp_Vcount\(6),
	cin => \row_addr_gen_inst|Add0~12\,
	combout => \row_addr_gen_inst|Add0~13_combout\);

-- Location: LCCOMB_X45_Y33_N0
\row_addr_gen_inst|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~15_combout\ = (\row_addr_gen_inst|Mux6~0_combout\ & ((\row_addr_gen_inst|Add0~13_combout\))) # (!\row_addr_gen_inst|Mux6~0_combout\ & (\sync_gen_inst|temp_Vcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux6~0_combout\,
	datac => \sync_gen_inst|temp_Vcount\(6),
	datad => \row_addr_gen_inst|Add0~13_combout\,
	combout => \row_addr_gen_inst|Add0~15_combout\);

-- Location: LCCOMB_X45_Y33_N30
\row_addr_gen_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~16_combout\ = (\row_addr_gen_inst|Add0~15_combout\ & ((\row_addr_gen_inst|Mux0~7_combout\) # ((\row_addr_gen_inst|Mux0~5_combout\) # (\row_addr_gen_inst|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux0~7_combout\,
	datab => \row_addr_gen_inst|Mux0~5_combout\,
	datac => \row_addr_gen_inst|Mux0~8_combout\,
	datad => \row_addr_gen_inst|Add0~15_combout\,
	combout => \row_addr_gen_inst|Add0~16_combout\);

-- Location: LCCOMB_X47_Y34_N20
\col_addr_gen_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux7~0_combout\ = (\switch[0]~input_o\ & ((\sync_gen_inst|temp_Hcount\(7)) # ((\sync_gen_inst|temp_Hcount\(8)) # (\sync_gen_inst|temp_Hcount\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(7),
	datab => \switch[0]~input_o\,
	datac => \sync_gen_inst|temp_Hcount\(8),
	datad => \sync_gen_inst|temp_Hcount\(9),
	combout => \col_addr_gen_inst|Mux7~0_combout\);

-- Location: LCCOMB_X47_Y34_N24
\col_addr_gen_inst|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux6~1_combout\ = (\col_addr_gen_inst|Mux7~0_combout\) # ((\switch[2]~input_o\ & ((\switch[1]~input_o\) # (\switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \col_addr_gen_inst|Mux7~0_combout\,
	combout => \col_addr_gen_inst|Mux6~1_combout\);

-- Location: LCCOMB_X45_Y34_N10
\col_addr_gen_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~0_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(0) & VCC)) # (!\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(0) $ (VCC)))
-- \col_addr_gen_inst|Add0~1\ = CARRY((!\switch[0]~input_o\ & \sync_gen_inst|temp_Hcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \sync_gen_inst|temp_Hcount\(0),
	datad => VCC,
	combout => \col_addr_gen_inst|Add0~0_combout\,
	cout => \col_addr_gen_inst|Add0~1\);

-- Location: LCCOMB_X45_Y34_N8
\col_addr_gen_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~2_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(0))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[0]~input_o\,
	datac => \sync_gen_inst|temp_Hcount\(0),
	datad => \col_addr_gen_inst|Add0~0_combout\,
	combout => \col_addr_gen_inst|Add0~2_combout\);

-- Location: LCCOMB_X47_Y34_N10
\col_addr_gen_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|LessThan1~0_combout\ = (\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|temp_Hcount\(5) & (\sync_gen_inst|temp_Hcount\(2) & \sync_gen_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(6),
	datab => \sync_gen_inst|temp_Hcount\(5),
	datac => \sync_gen_inst|temp_Hcount\(2),
	datad => \sync_gen_inst|Equal0~0_combout\,
	combout => \col_addr_gen_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X47_Y34_N12
\col_addr_gen_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|process_0~0_combout\ = (\sync_gen_inst|temp_Hcount\(9)) # ((\sync_gen_inst|temp_Hcount\(7) & ((\sync_gen_inst|temp_Hcount\(8)) # (!\col_addr_gen_inst|LessThan1~0_combout\))) # (!\sync_gen_inst|temp_Hcount\(7) & 
-- ((\col_addr_gen_inst|LessThan1~0_combout\) # (!\sync_gen_inst|temp_Hcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(7),
	datab => \sync_gen_inst|temp_Hcount\(9),
	datac => \sync_gen_inst|temp_Hcount\(8),
	datad => \col_addr_gen_inst|LessThan1~0_combout\,
	combout => \col_addr_gen_inst|process_0~0_combout\);

-- Location: LCCOMB_X47_Y34_N14
\col_addr_gen_inst|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux7~1_combout\ = (!\switch[1]~input_o\ & (!\switch[2]~input_o\ & (!\switch[0]~input_o\ & \col_addr_gen_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \col_addr_gen_inst|process_0~0_combout\,
	combout => \col_addr_gen_inst|Mux7~1_combout\);

-- Location: LCCOMB_X47_Y34_N2
\col_addr_gen_inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|process_0~1_combout\ = (\sync_gen_inst|temp_Hcount\(7) & ((\sync_gen_inst|temp_Hcount\(9)) # ((!\col_addr_gen_inst|LessThan1~0_combout\) # (!\sync_gen_inst|temp_Hcount\(8))))) # (!\sync_gen_inst|temp_Hcount\(7) & 
-- (((\sync_gen_inst|temp_Hcount\(8)) # (\col_addr_gen_inst|LessThan1~0_combout\)) # (!\sync_gen_inst|temp_Hcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(7),
	datab => \sync_gen_inst|temp_Hcount\(9),
	datac => \sync_gen_inst|temp_Hcount\(8),
	datad => \col_addr_gen_inst|LessThan1~0_combout\,
	combout => \col_addr_gen_inst|process_0~1_combout\);

-- Location: LCCOMB_X47_Y34_N6
\col_addr_gen_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux6~0_combout\ = (\col_addr_gen_inst|process_0~1_combout\ & ((\switch[2]~input_o\) # ((\switch[1]~input_o\ & !\switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \col_addr_gen_inst|process_0~1_combout\,
	combout => \col_addr_gen_inst|Mux6~0_combout\);

-- Location: LCCOMB_X47_Y34_N30
\col_addr_gen_inst|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~3_combout\ = (!\col_addr_gen_inst|Mux6~1_combout\ & (\col_addr_gen_inst|Add0~2_combout\ & (!\col_addr_gen_inst|Mux7~1_combout\ & !\col_addr_gen_inst|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux6~1_combout\,
	datab => \col_addr_gen_inst|Add0~2_combout\,
	datac => \col_addr_gen_inst|Mux7~1_combout\,
	datad => \col_addr_gen_inst|Mux6~0_combout\,
	combout => \col_addr_gen_inst|Add0~3_combout\);

-- Location: LCCOMB_X45_Y34_N12
\col_addr_gen_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~4_combout\ = (\sync_gen_inst|temp_Hcount\(1) & (!\col_addr_gen_inst|Add0~1\)) # (!\sync_gen_inst|temp_Hcount\(1) & ((\col_addr_gen_inst|Add0~1\) # (GND)))
-- \col_addr_gen_inst|Add0~5\ = CARRY((!\col_addr_gen_inst|Add0~1\) # (!\sync_gen_inst|temp_Hcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(1),
	datad => VCC,
	cin => \col_addr_gen_inst|Add0~1\,
	combout => \col_addr_gen_inst|Add0~4_combout\,
	cout => \col_addr_gen_inst|Add0~5\);

-- Location: LCCOMB_X49_Y34_N8
\col_addr_gen_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~6_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(1))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[0]~input_o\,
	datac => \sync_gen_inst|temp_Hcount\(1),
	datad => \col_addr_gen_inst|Add0~4_combout\,
	combout => \col_addr_gen_inst|Add0~6_combout\);

-- Location: LCCOMB_X49_Y34_N30
\col_addr_gen_inst|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~7_combout\ = (!\col_addr_gen_inst|Mux6~1_combout\ & (!\col_addr_gen_inst|Mux6~0_combout\ & (\col_addr_gen_inst|Add0~6_combout\ & !\col_addr_gen_inst|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux6~1_combout\,
	datab => \col_addr_gen_inst|Mux6~0_combout\,
	datac => \col_addr_gen_inst|Add0~6_combout\,
	datad => \col_addr_gen_inst|Mux7~1_combout\,
	combout => \col_addr_gen_inst|Add0~7_combout\);

-- Location: LCCOMB_X45_Y34_N14
\col_addr_gen_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~8_combout\ = (\sync_gen_inst|temp_Hcount\(2) & (\col_addr_gen_inst|Add0~5\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(2) & (!\col_addr_gen_inst|Add0~5\ & VCC))
-- \col_addr_gen_inst|Add0~9\ = CARRY((\sync_gen_inst|temp_Hcount\(2) & !\col_addr_gen_inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(2),
	datad => VCC,
	cin => \col_addr_gen_inst|Add0~5\,
	combout => \col_addr_gen_inst|Add0~8_combout\,
	cout => \col_addr_gen_inst|Add0~9\);

-- Location: LCCOMB_X45_Y34_N2
\col_addr_gen_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~10_combout\ = (\switch[0]~input_o\ & ((\sync_gen_inst|temp_Hcount\(2)))) # (!\switch[0]~input_o\ & (\col_addr_gen_inst|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[0]~input_o\,
	datac => \col_addr_gen_inst|Add0~8_combout\,
	datad => \sync_gen_inst|temp_Hcount\(2),
	combout => \col_addr_gen_inst|Add0~10_combout\);

-- Location: LCCOMB_X45_Y34_N24
\col_addr_gen_inst|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~11_combout\ = (!\col_addr_gen_inst|Mux6~1_combout\ & (\col_addr_gen_inst|Add0~10_combout\ & (!\col_addr_gen_inst|Mux6~0_combout\ & !\col_addr_gen_inst|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux6~1_combout\,
	datab => \col_addr_gen_inst|Add0~10_combout\,
	datac => \col_addr_gen_inst|Mux6~0_combout\,
	datad => \col_addr_gen_inst|Mux7~1_combout\,
	combout => \col_addr_gen_inst|Add0~11_combout\);

-- Location: LCCOMB_X45_Y34_N16
\col_addr_gen_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~12_combout\ = (\sync_gen_inst|temp_Hcount\(3) & (!\col_addr_gen_inst|Add0~9\)) # (!\sync_gen_inst|temp_Hcount\(3) & ((\col_addr_gen_inst|Add0~9\) # (GND)))
-- \col_addr_gen_inst|Add0~13\ = CARRY((!\col_addr_gen_inst|Add0~9\) # (!\sync_gen_inst|temp_Hcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(3),
	datad => VCC,
	cin => \col_addr_gen_inst|Add0~9\,
	combout => \col_addr_gen_inst|Add0~12_combout\,
	cout => \col_addr_gen_inst|Add0~13\);

-- Location: LCCOMB_X45_Y34_N6
\col_addr_gen_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~14_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(3))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(3),
	datac => \switch[0]~input_o\,
	datad => \col_addr_gen_inst|Add0~12_combout\,
	combout => \col_addr_gen_inst|Add0~14_combout\);

-- Location: LCCOMB_X45_Y34_N0
\col_addr_gen_inst|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~15_combout\ = (\col_addr_gen_inst|Add0~14_combout\ & (!\col_addr_gen_inst|Mux6~1_combout\ & (!\col_addr_gen_inst|Mux6~0_combout\ & !\col_addr_gen_inst|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Add0~14_combout\,
	datab => \col_addr_gen_inst|Mux6~1_combout\,
	datac => \col_addr_gen_inst|Mux6~0_combout\,
	datad => \col_addr_gen_inst|Mux7~1_combout\,
	combout => \col_addr_gen_inst|Add0~15_combout\);

-- Location: LCCOMB_X45_Y34_N18
\col_addr_gen_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~16_combout\ = (\sync_gen_inst|temp_Hcount\(4) & (\col_addr_gen_inst|Add0~13\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(4) & (!\col_addr_gen_inst|Add0~13\ & VCC))
-- \col_addr_gen_inst|Add0~17\ = CARRY((\sync_gen_inst|temp_Hcount\(4) & !\col_addr_gen_inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(4),
	datad => VCC,
	cin => \col_addr_gen_inst|Add0~13\,
	combout => \col_addr_gen_inst|Add0~16_combout\,
	cout => \col_addr_gen_inst|Add0~17\);

-- Location: LCCOMB_X45_Y34_N28
\col_addr_gen_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~18_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(4))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[0]~input_o\,
	datac => \sync_gen_inst|temp_Hcount\(4),
	datad => \col_addr_gen_inst|Add0~16_combout\,
	combout => \col_addr_gen_inst|Add0~18_combout\);

-- Location: LCCOMB_X45_Y34_N26
\col_addr_gen_inst|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~19_combout\ = (!\col_addr_gen_inst|Mux6~1_combout\ & (\col_addr_gen_inst|Add0~18_combout\ & (!\col_addr_gen_inst|Mux6~0_combout\ & !\col_addr_gen_inst|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux6~1_combout\,
	datab => \col_addr_gen_inst|Add0~18_combout\,
	datac => \col_addr_gen_inst|Mux6~0_combout\,
	datad => \col_addr_gen_inst|Mux7~1_combout\,
	combout => \col_addr_gen_inst|Add0~19_combout\);

-- Location: LCCOMB_X45_Y34_N20
\col_addr_gen_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~20_combout\ = (\sync_gen_inst|temp_Hcount\(5) & (!\col_addr_gen_inst|Add0~17\)) # (!\sync_gen_inst|temp_Hcount\(5) & ((\col_addr_gen_inst|Add0~17\) # (GND)))
-- \col_addr_gen_inst|Add0~21\ = CARRY((!\col_addr_gen_inst|Add0~17\) # (!\sync_gen_inst|temp_Hcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(5),
	datad => VCC,
	cin => \col_addr_gen_inst|Add0~17\,
	combout => \col_addr_gen_inst|Add0~20_combout\,
	cout => \col_addr_gen_inst|Add0~21\);

-- Location: LCCOMB_X49_Y34_N12
\col_addr_gen_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~22_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(5))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[0]~input_o\,
	datac => \sync_gen_inst|temp_Hcount\(5),
	datad => \col_addr_gen_inst|Add0~20_combout\,
	combout => \col_addr_gen_inst|Add0~22_combout\);

-- Location: LCCOMB_X49_Y34_N26
\col_addr_gen_inst|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~23_combout\ = (!\col_addr_gen_inst|Mux6~1_combout\ & (!\col_addr_gen_inst|Mux7~1_combout\ & (!\col_addr_gen_inst|Mux6~0_combout\ & \col_addr_gen_inst|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux6~1_combout\,
	datab => \col_addr_gen_inst|Mux7~1_combout\,
	datac => \col_addr_gen_inst|Mux6~0_combout\,
	datad => \col_addr_gen_inst|Add0~22_combout\,
	combout => \col_addr_gen_inst|Add0~23_combout\);

-- Location: LCCOMB_X45_Y34_N22
\col_addr_gen_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~24_combout\ = \sync_gen_inst|temp_Hcount\(6) $ (!\col_addr_gen_inst|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(6),
	cin => \col_addr_gen_inst|Add0~21\,
	combout => \col_addr_gen_inst|Add0~24_combout\);

-- Location: LCCOMB_X45_Y34_N4
\col_addr_gen_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~26_combout\ = (\switch[0]~input_o\ & ((\sync_gen_inst|temp_Hcount\(6)))) # (!\switch[0]~input_o\ & (\col_addr_gen_inst|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[0]~input_o\,
	datac => \col_addr_gen_inst|Add0~24_combout\,
	datad => \sync_gen_inst|temp_Hcount\(6),
	combout => \col_addr_gen_inst|Add0~26_combout\);

-- Location: LCCOMB_X45_Y34_N30
\col_addr_gen_inst|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~27_combout\ = (!\col_addr_gen_inst|Mux7~1_combout\ & (!\col_addr_gen_inst|Mux6~1_combout\ & (\col_addr_gen_inst|Add0~26_combout\ & !\col_addr_gen_inst|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux7~1_combout\,
	datab => \col_addr_gen_inst|Mux6~1_combout\,
	datac => \col_addr_gen_inst|Add0~26_combout\,
	datad => \col_addr_gen_inst|Mux6~0_combout\,
	combout => \col_addr_gen_inst|Add0~27_combout\);

-- Location: LCCOMB_X45_Y33_N24
\row_addr_gen_inst|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~17_combout\ = (\row_addr_gen_inst|Mux6~0_combout\ & ((\row_addr_gen_inst|Add0~1_combout\))) # (!\row_addr_gen_inst|Mux6~0_combout\ & (\sync_gen_inst|temp_Vcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux6~0_combout\,
	datab => \sync_gen_inst|temp_Vcount\(0),
	datac => \row_addr_gen_inst|Add0~1_combout\,
	combout => \row_addr_gen_inst|Add0~17_combout\);

-- Location: LCCOMB_X46_Y33_N22
\row_addr_gen_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~18_combout\ = (\row_addr_gen_inst|Add0~17_combout\ & ((\row_addr_gen_inst|Mux0~5_combout\) # ((\row_addr_gen_inst|Mux0~8_combout\) # (\row_addr_gen_inst|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux0~5_combout\,
	datab => \row_addr_gen_inst|Add0~17_combout\,
	datac => \row_addr_gen_inst|Mux0~8_combout\,
	datad => \row_addr_gen_inst|Mux0~7_combout\,
	combout => \row_addr_gen_inst|Add0~18_combout\);

-- Location: LCCOMB_X46_Y33_N8
\row_addr_gen_inst|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~19_combout\ = (\row_addr_gen_inst|Mux6~0_combout\ & ((\row_addr_gen_inst|Add0~3_combout\))) # (!\row_addr_gen_inst|Mux6~0_combout\ & (\sync_gen_inst|temp_Vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux6~0_combout\,
	datab => \sync_gen_inst|temp_Vcount\(1),
	datac => \row_addr_gen_inst|Add0~3_combout\,
	combout => \row_addr_gen_inst|Add0~19_combout\);

-- Location: LCCOMB_X46_Y33_N2
\row_addr_gen_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~20_combout\ = (\row_addr_gen_inst|Add0~19_combout\ & ((\row_addr_gen_inst|Mux0~8_combout\) # ((\row_addr_gen_inst|Mux0~5_combout\) # (\row_addr_gen_inst|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux0~8_combout\,
	datab => \row_addr_gen_inst|Mux0~5_combout\,
	datac => \row_addr_gen_inst|Add0~19_combout\,
	datad => \row_addr_gen_inst|Mux0~7_combout\,
	combout => \row_addr_gen_inst|Add0~20_combout\);

-- Location: LCCOMB_X45_Y33_N18
\row_addr_gen_inst|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~21_combout\ = (\row_addr_gen_inst|Mux6~0_combout\ & ((\row_addr_gen_inst|Add0~5_combout\))) # (!\row_addr_gen_inst|Mux6~0_combout\ & (\sync_gen_inst|temp_Vcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(2),
	datac => \row_addr_gen_inst|Add0~5_combout\,
	datad => \row_addr_gen_inst|Mux6~0_combout\,
	combout => \row_addr_gen_inst|Add0~21_combout\);

-- Location: LCCOMB_X46_Y33_N0
\row_addr_gen_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~22_combout\ = (\row_addr_gen_inst|Add0~21_combout\ & ((\row_addr_gen_inst|Mux0~5_combout\) # ((\row_addr_gen_inst|Mux0~7_combout\) # (\row_addr_gen_inst|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux0~5_combout\,
	datab => \row_addr_gen_inst|Mux0~7_combout\,
	datac => \row_addr_gen_inst|Mux0~8_combout\,
	datad => \row_addr_gen_inst|Add0~21_combout\,
	combout => \row_addr_gen_inst|Add0~22_combout\);

-- Location: LCCOMB_X45_Y33_N20
\row_addr_gen_inst|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~23_combout\ = (\row_addr_gen_inst|Mux6~0_combout\ & ((\row_addr_gen_inst|Add0~7_combout\))) # (!\row_addr_gen_inst|Mux6~0_combout\ & (\sync_gen_inst|temp_Vcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux6~0_combout\,
	datac => \sync_gen_inst|temp_Vcount\(3),
	datad => \row_addr_gen_inst|Add0~7_combout\,
	combout => \row_addr_gen_inst|Add0~23_combout\);

-- Location: LCCOMB_X45_Y33_N26
\row_addr_gen_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~24_combout\ = (\row_addr_gen_inst|Add0~23_combout\ & ((\row_addr_gen_inst|Mux0~7_combout\) # ((\row_addr_gen_inst|Mux0~8_combout\) # (\row_addr_gen_inst|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux0~7_combout\,
	datab => \row_addr_gen_inst|Add0~23_combout\,
	datac => \row_addr_gen_inst|Mux0~8_combout\,
	datad => \row_addr_gen_inst|Mux0~5_combout\,
	combout => \row_addr_gen_inst|Add0~24_combout\);

-- Location: LCCOMB_X46_Y33_N18
\row_addr_gen_inst|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~25_combout\ = (\row_addr_gen_inst|Mux6~0_combout\ & ((\row_addr_gen_inst|Add0~9_combout\))) # (!\row_addr_gen_inst|Mux6~0_combout\ & (\sync_gen_inst|temp_Vcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux6~0_combout\,
	datac => \sync_gen_inst|temp_Vcount\(4),
	datad => \row_addr_gen_inst|Add0~9_combout\,
	combout => \row_addr_gen_inst|Add0~25_combout\);

-- Location: LCCOMB_X46_Y33_N16
\row_addr_gen_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~26_combout\ = (\row_addr_gen_inst|Add0~25_combout\ & ((\row_addr_gen_inst|Mux0~5_combout\) # ((\row_addr_gen_inst|Mux0~8_combout\) # (\row_addr_gen_inst|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux0~5_combout\,
	datab => \row_addr_gen_inst|Add0~25_combout\,
	datac => \row_addr_gen_inst|Mux0~8_combout\,
	datad => \row_addr_gen_inst|Mux0~7_combout\,
	combout => \row_addr_gen_inst|Add0~26_combout\);

-- Location: LCCOMB_X45_Y33_N28
\row_addr_gen_inst|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~27_combout\ = (\row_addr_gen_inst|Mux6~0_combout\ & ((\row_addr_gen_inst|Add0~11_combout\))) # (!\row_addr_gen_inst|Mux6~0_combout\ & (\sync_gen_inst|temp_Vcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(5),
	datac => \row_addr_gen_inst|Add0~11_combout\,
	datad => \row_addr_gen_inst|Mux6~0_combout\,
	combout => \row_addr_gen_inst|Add0~27_combout\);

-- Location: LCCOMB_X45_Y33_N2
\row_addr_gen_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~28_combout\ = (\row_addr_gen_inst|Add0~27_combout\ & ((\row_addr_gen_inst|Mux0~7_combout\) # ((\row_addr_gen_inst|Mux0~5_combout\) # (\row_addr_gen_inst|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux0~7_combout\,
	datab => \row_addr_gen_inst|Mux0~5_combout\,
	datac => \row_addr_gen_inst|Mux0~8_combout\,
	datad => \row_addr_gen_inst|Add0~27_combout\,
	combout => \row_addr_gen_inst|Add0~28_combout\);

-- Location: M9K_X33_Y36_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000717F3F6644000000B1C70E201E400001AE79861E8E4000017000219D09C00001E801D3A5EB0000015403E92CC0000003F302C30F8CC0001CC01EBB6B9D80001DA3F71D76BB5C0002C848010C78F0004BE12C605C842C007900C4C8A7BCB600267807A6F49DD0000C089F93E6A588002B56B323E2330000042B4CABC37C400006D32B20EE61600001C1EBA0E41F000001AFB2801988800003E39E001CEA00000380940FE5F880000203C0F8E1C5000",
	mem_init0 => X"00BC7807987E7A000162C7E391C09000030B183D48351E00001CF4ED80E591000043D32F50B68C000013262687019D80002CD4840825D7000039169EBF2F45000010A355FF32C400002580FBC334A8000025F23AB1C0400000287267E0000000000C47DE00000600001E078520009000000E8E154400780000068705C232F00000017F99FBFFF00000013F8C00402000000057FDF7DF800000001F278A7A0000000004C0CC3000000000003E700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y31_N10
\rom_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = \row_addr_gen_inst|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \row_addr_gen_inst|Add0~16_combout\,
	combout => \rom_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X34_Y31_N11
\rom_inst|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rom_inst|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X34_Y31_N0
\rom_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rom_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ = \rom_inst|altsyncram_component|auto_generated|address_reg_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rom_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\);

-- Location: FF_X34_Y31_N1
\rom_inst|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LCCOMB_X44_Y33_N8
\process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\switch[2]~input_o\ & ((\switch[1]~input_o\) # ((\col_addr_gen_inst|process_0~1_combout\) # (\switch[0]~input_o\)))) # (!\switch[2]~input_o\ & (\switch[1]~input_o\ $ (((\switch[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \col_addr_gen_inst|process_0~1_combout\,
	datad => \switch[0]~input_o\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X44_Y33_N22
\process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\sync_gen_inst|temp_Vcount\(8) & (!\sync_gen_inst|temp_Vcount\(9) & ((\row_addr_gen_inst|process_0~6_combout\) # (\row_addr_gen_inst|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|process_0~6_combout\,
	datab => \row_addr_gen_inst|process_0~4_combout\,
	datac => \sync_gen_inst|temp_Vcount\(8),
	datad => \sync_gen_inst|temp_Vcount\(9),
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X44_Y33_N12
\process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\switch[1]~input_o\ & (((\col_addr_gen_inst|process_0~1_combout\) # (\switch[0]~input_o\)))) # (!\switch[1]~input_o\ & (\switch[2]~input_o\ & ((\col_addr_gen_inst|process_0~1_combout\) # (!\switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \col_addr_gen_inst|process_0~1_combout\,
	datad => \switch[0]~input_o\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X44_Y33_N10
\process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\process_0~6_combout\ & (((\process_0~7_combout\)))) # (!\process_0~6_combout\ & ((\process_0~7_combout\ & ((!\process_0~10_combout\))) # (!\process_0~7_combout\ & (\row_addr_gen_inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|process_0~2_combout\,
	datab => \process_0~6_combout\,
	datac => \process_0~10_combout\,
	datad => \process_0~7_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X44_Y33_N28
\sync_gen_inst|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|LessThan5~0_combout\ = (\sync_gen_inst|temp_Vcount\(6) & (\sync_gen_inst|temp_Vcount\(7) & (\sync_gen_inst|temp_Vcount\(8) & \sync_gen_inst|temp_Vcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(6),
	datab => \sync_gen_inst|temp_Vcount\(7),
	datac => \sync_gen_inst|temp_Vcount\(8),
	datad => \sync_gen_inst|temp_Vcount\(5),
	combout => \sync_gen_inst|LessThan5~0_combout\);

-- Location: LCCOMB_X47_Y34_N18
\process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\sync_gen_inst|temp_Hcount\(9) & ((\sync_gen_inst|temp_Hcount\(7)) # (\sync_gen_inst|temp_Hcount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(7),
	datac => \sync_gen_inst|temp_Hcount\(8),
	datad => \sync_gen_inst|temp_Hcount\(9),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X44_Y33_N30
\process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\sync_gen_inst|LessThan5~0_combout\) # ((\process_0~2_combout\) # (\sync_gen_inst|temp_Vcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|LessThan5~0_combout\,
	datac => \process_0~2_combout\,
	datad => \sync_gen_inst|temp_Vcount\(9),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X44_Y33_N4
\process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\switch[2]~input_o\ & ((\switch[1]~input_o\) # ((\switch[0]~input_o\)))) # (!\switch[2]~input_o\ & (!\switch[1]~input_o\ & (\col_addr_gen_inst|process_0~0_combout\ & !\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \col_addr_gen_inst|process_0~0_combout\,
	datad => \switch[0]~input_o\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X44_Y33_N26
\process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!\process_0~3_combout\ & (!\process_0~4_combout\ & ((\switch[2]~input_o\) # (!\col_addr_gen_inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \col_addr_gen_inst|Mux7~0_combout\,
	datac => \process_0~4_combout\,
	datad => \switch[2]~input_o\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X44_Y33_N20
\process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (!\process_0~8_combout\ & (\process_0~5_combout\ & ((\row_addr_gen_inst|Mux0~4_combout\) # (!\process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \process_0~6_combout\,
	datac => \process_0~5_combout\,
	datad => \row_addr_gen_inst|Mux0~4_combout\,
	combout => \process_0~9_combout\);

-- Location: M9K_X53_Y31_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a22\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y31_N22
\red~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red~0_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\))) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datab => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \process_0~9_combout\,
	datad => \rom_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	combout => \red~0_combout\);

-- Location: M9K_X53_Y26_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF3F0061C77FFFFE3FFF021FE1BFFFFFCE7BBC000E3FFFFF40023DFEF3BFFFFF70021EA96AFFFFFF9800FC2233FFFFF5E30149FBB5BFFFE9C7FD8FE10367FFE0F80E038F991BFFECFD860003C9DBFF93414820134669FFFD0168586023F3FFEC0668FE8C9D81FFCFF7A39E189273FFDA5F9583E39EDFFFF049021FC01DFFFFFAD256AF10619FFFFCC2525FBF813FFFFEFF577FB804FFFFFD807DFFEAE67FFFFDFF8C001EFA7FFFFA7FC007E0007FF",
	mem_init0 => X"FF37F800780039FFFEC30000703F4DFFFC481FC33838AEFFFEADFB247F37BFFFFF9430A060807E7FFFF6397B18C4F77FFFF2C8D80003CE7FFFFBF26B00E181FFFFC13EC600F32DFFFFD600F840F3E7FFFFC9F006F03FBFFFFFCC4FE01FFFFFFFFFEFFF41FFFFF9FFFFEFFF809FFF6FFFFFF7FF90B3FF87FFFFFBFF003CCD07FFFFFDFF9880000FFFFFFE3F8400401FFFFFFF9FFDFFDF7FFFFFFFEFBFFFF9FFFFFFFFFB7F7E0FFFFFFFFFFFC08FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y32_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a23\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X44_Y31_N24
\red~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red~1_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\))) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datab => \process_0~9_combout\,
	datac => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \rom_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	combout => \red~1_combout\);

-- Location: M9K_X53_Y33_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a24\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y35_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F006038FFFFFFC000FE00007FFFFEF187BDFFF1FFFFFE7FFE3C00007FFFFE7FFE1E2111FFFFFE1FFE0CAC79FFFFF9FCFF3C74F47FFFE03805719AAF3FFFF01C060003672FFFE18004000007CBFFDD8084000C026FFF8E0114501E44F5FF9801A441036243FFB0006461FF7FDFFFE5A0767BE3FEDFFFFBB6FF75C07CDFFFFF2CEF7E00603FFFFD3CEBBF0000FFFFFD00EEFFD8007FFFFF000BFFF31EFFFFFF007C0000F9FFFFFC803FFFE003FFF",
	mem_init0 => X"FFB807FFF80007FFFF63FFFFF00039FFFE681FFF07C077FFFF33FFE3FFC79EFFFFD80F9F80BFFEFFFFD3C0FC00030F7FFFD4C0E000003EFFFFD5F1F3FFE1FCFFFFE1C1C7FFF3E3FFFFE7FF07BFF01FFFFFF1F0010FFFFFFFFFF0401FFFFFFFFFFFF0003FFFFFFFFFFFF0007FFFFFFFFFFFF8006FFFFFFFFFFFFC00FFFFFFFFFFFFFE00677FFFFFFFFFFFC07BFFBFFFFFFFFFE0020020FFFFFFFFF0400007FFFFFFFFFF8081FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X43_Y31_N28
\red~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red~2_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\)) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \rom_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	datad => \rom_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	combout => \red~2_combout\);

-- Location: M9K_X33_Y31_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a25\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y30_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80C0FF9FFFFFFFFF000001FFFFFFFFFF000043FFFFFFFFFF8001C3FFFFFFFFFF8001E1DEFFFFFFFFE001F3DFFFFFFFFE0000F38F7BFFFFF00002000770FFFFE00000000000F7FFF0000000000037FFE0000000000193FFC000882000030BFFC000180000003FFFC000180000003FFFF00008041C013FFFFC00000E3F833FFFFC00001FFF9FFFFFFE00047FFFFFFFFFFE0001FFE7FFFFFFFE0007FFFC01FFFFFE0003FFFF07FFFFFF0000001FFFFFF",
	mem_init0 => X"FFC0000007FFFFFFFF9C00000FFFFFFFFF97E000FFFFF9FFFFC0001FFFF861FFFFE0007FFF4001FFFFEC0000000000FFFFEF3F00000001FFFFEE0FFC001E03FFFFFE0038000C1FFFFFF80000000FFFFFFFFE0FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y31_N20
\red~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red~3_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\)) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \rom_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datac => \rom_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datad => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \red~3_combout\);

-- Location: M9K_X33_Y34_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y28_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BEA1876EAA0000019F3FC61FF1000000A00213FFC5C0000170020203F0000001A405C1D6E04000035407075B5A00000AF4024AA09F4000041DF274856B5800181E6C7DC77244000A67DC184C2554007D96AF2309D7AA001980F0037FFAF800620C23FF4B61DE001730BC3A1B6824002876FB56E353000005D8C905C91CE00003C68A14336520000300021FF3C9000001A04F3F4648000000800900D59F00000300087F8E030000058000FCC43C800",
	mem_init0 => X"00B807FC6F19C400003903FF0E83E60003E35000CCAB61000169A70D59468E00003EF0B438CCB58000138082C03984800039076C30E3EF800036FE4BFFF3F7800004C0B4001FB380002F12FDF9C5DE8000130C64F63FB2800017B2E7DF804F0000012F4C38004400000907875F00B000000806191794BC00000485A29CDFE0000003A1F8646D300000003EBFA151E00000002C910C00400000001EC9252B00000000008FFF5000000000003EBE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y31_N6
\green~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green~0_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \rom_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	datac => \rom_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datad => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \green~0_combout\);

-- Location: M9K_X33_Y30_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a19\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y36_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF41BF879E6CFFFFFFE0C03E0000BFFFFF3FFE11FFFBFFFFFEBFFE01FC03FFFFFEC7FC008865FFFFFC67FEF306B63FFFF107FEC6265B3FFFFB5A0A73322527FFFFA78E8C70E92BFFF3DA6B07BC6CCFFF8659B250B1A9E9FFBC6090DC9BDB39FFE87E4B7F87FE7DFF940042C1FC17DBFFDEA0182AE3BEFFFFF7863E75C87DFFFFF92067410365FFFFFF00EBFDA449FFFFFF00067E3E44FFFFFD000CFFEA01FFFFFD8007FF80F97FFFF9800003C3C4FFF",
	mem_init0 => X"FF680003E0FE1BFFFF720000FE7CC7FFFDAC60003C4CDAFFFE40381B3E6938FFFFEA0F53C0CDB97FFFCC0043270379FFFFE200F00807DE7FFFCD014C000C0C7FFFFD01A80000697FFFE3ED0387C3C67FFFC4021CF1FFF07FFFC40FE03F8040FFFFF1BFC3F80045FFFFE1FFC0BF00B3FFFFF87F93DF94BBFFFFFC7F217FFFEFFFFFFEA3F11B93DFFFFFFEDFB721503FFFFFFFA59BFF92BFFFFFFFEF9354B6FFFFFFFFF8B0D68FFFFFFFFFFFCF31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y31_N0
\green~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green~1_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\)) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	datab => \process_0~9_combout\,
	datac => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \rom_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	combout => \green~1_combout\);

-- Location: M9K_X53_Y27_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a20\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y28_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBF87FE107FFFFE000001FFFFFFFFFEC001EFFFFFBFFFFEC001FFFFFFBFFFFEF803FFFFE43FFFFE7801FF7387FFFFFDF801CD512EFFFFECBC008E4B0CFFFFF0E401038CF8F7FFED7D820003DC33FFC661C820524413FFF10078287A6003FFA40198C0000003FFD8001B0000001FFFE10022051C013FFFFC20000037833FFFFE00002FFC9BDFFFFE000442FFB73FFFFC000101A1BF7FFFFF0004000C007FFFFF0000007F04FFFFFF0000003FFF7FF",
	mem_init0 => X"FFB000001FFFDFFFFFBC000001FF29FFFE2F800003F041FFFF8FC007007095FFFFCD003000F3A4FFFFE2003C18C7887FFFD6000000003EFFFFD200E0000002FFFFDE0070000018FFFFCC0000003FC1FFFFE7FFFCF0000FFFFFE7FFE0007FBFFFFFE1BFC007FFBBFFFFF1FF8000FF4FFFFFF07F90206B47FFFFF87F20000017FFFFFCA3F000000FFFFFFF1FB721501FFFFFFFCD99FF927FFFFFFFFF9B75B1FFFFFFFFFF3F763FFFFFFFFFFFF0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X43_Y31_N18
\green~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green~2_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\)) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \rom_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	datac => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \rom_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	combout => \green~2_combout\);

-- Location: M9K_X33_Y38_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80407801FFFFFFFF00000000007FFFFF00000000007FFFFF00000000007FFFFF000000001BFFFFFF8000008C79FFFFFE0000338FF1FFFFF000070187F3FFFFE01806000307FFFFF08004000003FFFFF98004000C03FFFFCE018C700407FFFFD8003C0000003FFFE0003C0000003FFFF0001C0000001FFFF800000E00001FFFFC00001E00003FFFFC00003F0000FFFFFE0000FFC000FFFFFE0003FFF000FFFFFE0000000003FFFFFE0000000003FFF",
	mem_init0 => X"FFC00000000027FFFFC0000000001FFFFFD0000000003FFFFFF00000FF8063FFFFF0000FFF0043FFFFFC0000000007FFFFEC0000000001FFFFEC0030000001FFFFE00000000007FFFFF0000000003FFFFFF800030FFFFFFFFFF8001FFFFFFFFFFFFE403FFFFFFFFFFFFE007FFFFFFFFFFFFF806FFFFFFFFFFFFF80DFFFFFFFFFFFFF5C0FFFFFFFFFFFFFE048DEAFFFFFFFFFF266006DFFFFFFFFF0648A4FFFFFFFFFFFC089FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y37_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a21\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y31_N12
\green~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green~3_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\))) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \rom_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datad => \rom_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	combout => \green~3_combout\);

-- Location: M9K_X33_Y35_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000CE806FD9550000014080000000000001B1807F8FC10000005DBC7CFE0C400002B5FFFE3304A0000373FFCF8E1D200004FCFB2EF18AA000182402130D5FB800008800000360580011D800000000900040C088000404B8004C0000380260B600080034C000001A005900140000000400532030001C002000068000023A81E0000380020D1C9B600003000037383CA00001000401462B800002000000000800000380000003F30000034000FC8C1B800",
	mem_init0 => X"00D81FF0483C9000023507F03939A9000391A0007156460000C5EF0929982800002013DA1710018000498059000004C00035FF200000090000370F51C184F180000332FFFC636A80000BC00187825400003A71C666788B0000364E66DF7FCE0000252B4C07C0C200001EC346A380C200000360E9E9FEB4000001C4AA2B346C000006B8B7C32D500000014FF171DE10000000FD677FF80000000001ED5F52000000000F3D68280000000000466D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y29_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y31_N18
\blue~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue~0_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\))) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \rom_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datac => \rom_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datad => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \blue~0_combout\);

-- Location: M9K_X33_Y32_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y38_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01BFEF0739FFFFFF8000000000FFFFFEC000007000BFFFFE6000030003FFFFFC380001CCE59FFFFD9C0031F3B4DFFFF0F000E2854FDFFFE018020180411FFFE02C040001212BFFF100000000006FFFA080002000011DFF80009410000489FF8001A00000000BFFA4002800000017FF8CA0100100011FFFF480000801033FFFF920000EF0003FFFFF0004309B835FFFFF000003E1FB7FFFFC800000C001FFFFFC80000000097FFFFE00000383E0FFF",
	mem_init0 => X"FF88000FC7FF45FFFCC6000FF8FEFCFFFF01C0000F1865FFFF43F004E1D030FFFFA00C361820017FFFB6003E000000BFFFD100F00000077FFFFBF1463E7F02FFFFC5C1A8001C18FFFFFC0000007E4D7FFFF38E3E61F8C77FFFFBBFE13F003EFFFFCA7FC3C03F3FFFFFF8FF41E07F0DFFFFFCDFE8C80167FFFFFEFEA0E32413FFFFF843FD3FD06FFFFFFF6EBFF1D3EFFFFFFF440B88823FFFFFFFE1531898FFFFFFFFF7F04927FFFFFFFFFF885CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y31_N16
\blue~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue~1_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\)) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \rom_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datad => \rom_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	combout => \blue~1_combout\);

-- Location: M9K_X33_Y37_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBFEFFF017FFFFE00000000003FFFFE00000000003FFFFE80000000007FFFFEC00000001BBFFFFFE000020C7A3FFFF90000120D41BFFFE00007000610A7FFF01002000200C7FFF0800000000027FFF1000000000383FF80018060000001FF80001000000035FF8000180000001BFFE100080000003FFFFD20000400003FFFFE00001E0001DFFFFE00000164013FFFFC00000180047FFFFE00000000007FFFFE0000000004FFFFF88000007FFB7FF",
	mem_init0 => X"FF7000003FFFDBFFFF98000007FF17FFFC1E000000E020FFFE800003E1E000FFFFC0000E1FC0007FFFEA00000000007FFFC400000000007FFFE600E80000017FFFDE00700000067FFFD000000001BCFFFFDC00019FF8C0FFFFDC001FFF0001FFFFEFC03FC00001FFFFEF00FFE00003FFFFF7801CC80023FFFFFB81DEE32407FFFFFCFC0BFFFC6FFFFFFE70488E2DDFFFFFFF92F6006D7FFFFFFFFEE48E69FFFFFFFFF8401F1FFFFFFFFFFFF083FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y34_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a16\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y31_N26
\blue~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue~2_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\))) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \rom_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \rom_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	combout => \blue~2_combout\);

-- Location: M9K_X33_Y33_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80401000FEFFFFFF00000000007FFFFF00000000007FFFFF00000000003FFFFF00000000007FFFFE0000000001FFFFFE00000102307FFFF000000003207FFFE0000000000037FFE0000000000013FFC0000000000003FFC0000800000303FFC0000800000003FFC000000000003FFFF000000000001FFFF800000000001FFFFC00000000003FFFFC0000020000FFFFFE0000000000FFFFFF0000000000FFFFFF0000000003FFFFFF0000000007FFF",
	mem_init0 => X"FF800000000027FFFF000000000009FFFE000000000019FFFF0000001E0001FFFFC00001E00000FFFFC400000000007FFFEE0000000000FFFFCC0030000000FFFFE00000000001FFFFE00000000003FFFFE0000000073FFFFFE0000000FFFFFFFFF000003FFFFFFFFFF000001FFFFFFFFFF8000337FFDFFFFFFC00011CDBFFFFFFFF000000039FFFFFFF800000003FFFFFFFE0000000FFFFFFFFF0000007FFFFFFFFFF8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|ALT_INV_Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y29_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a17\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:/Digital_Design/lab-5-PETERFEE_128mif/src/demo/output2.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_16v3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \row_addr_gen_inst|Add0~16_combout\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y31_N28
\blue~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue~3_combout\ = (\process_0~9_combout\ & ((\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\rom_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\))) # 
-- (!\rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\rom_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datab => \rom_inst|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \process_0~9_combout\,
	datad => \rom_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	combout => \blue~3_combout\);

-- Location: LCCOMB_X47_Y34_N26
\sync_gen_inst|Horiz_Sync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Horiz_Sync~0_combout\ = (\sync_gen_inst|temp_Hcount\(7) & (!\sync_gen_inst|temp_Hcount\(8) & \sync_gen_inst|temp_Hcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(7),
	datac => \sync_gen_inst|temp_Hcount\(8),
	datad => \sync_gen_inst|temp_Hcount\(9),
	combout => \sync_gen_inst|Horiz_Sync~0_combout\);

-- Location: LCCOMB_X47_Y34_N0
\sync_gen_inst|Horiz_Sync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Horiz_Sync~1_combout\ = (\sync_gen_inst|temp_Hcount\(2)) # ((\sync_gen_inst|temp_Hcount\(1) & (\sync_gen_inst|temp_Hcount\(0) & !\sync_gen_inst|temp_Hcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(1),
	datab => \sync_gen_inst|temp_Hcount\(2),
	datac => \sync_gen_inst|temp_Hcount\(0),
	datad => \sync_gen_inst|temp_Hcount\(5),
	combout => \sync_gen_inst|Horiz_Sync~1_combout\);

-- Location: LCCOMB_X47_Y34_N16
\sync_gen_inst|Horiz_Sync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Horiz_Sync~2_combout\ = (\sync_gen_inst|temp_Hcount\(4) & ((\sync_gen_inst|temp_Hcount\(3)) # (\sync_gen_inst|Horiz_Sync~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(4),
	datab => \sync_gen_inst|temp_Hcount\(3),
	datad => \sync_gen_inst|Horiz_Sync~1_combout\,
	combout => \sync_gen_inst|Horiz_Sync~2_combout\);

-- Location: LCCOMB_X47_Y34_N28
\sync_gen_inst|Horiz_Sync~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Horiz_Sync~3_combout\ = ((\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|temp_Hcount\(5) & \sync_gen_inst|Horiz_Sync~2_combout\)) # (!\sync_gen_inst|temp_Hcount\(6) & (!\sync_gen_inst|temp_Hcount\(5) & 
-- !\sync_gen_inst|Horiz_Sync~2_combout\))) # (!\sync_gen_inst|Horiz_Sync~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(6),
	datab => \sync_gen_inst|temp_Hcount\(5),
	datac => \sync_gen_inst|Horiz_Sync~0_combout\,
	datad => \sync_gen_inst|Horiz_Sync~2_combout\,
	combout => \sync_gen_inst|Horiz_Sync~3_combout\);

-- Location: LCCOMB_X44_Y33_N24
\sync_gen_inst|Vert_Sync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Vert_Sync~1_combout\ = (((!\sync_gen_inst|temp_Vcount\(1) & !\sync_gen_inst|temp_Vcount\(0))) # (!\sync_gen_inst|temp_Vcount\(3))) # (!\sync_gen_inst|temp_Vcount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(1),
	datab => \sync_gen_inst|temp_Vcount\(0),
	datac => \sync_gen_inst|temp_Vcount\(2),
	datad => \sync_gen_inst|temp_Vcount\(3),
	combout => \sync_gen_inst|Vert_Sync~1_combout\);

-- Location: LCCOMB_X44_Y33_N2
\sync_gen_inst|Vert_Sync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Vert_Sync~0_combout\ = ((\sync_gen_inst|temp_Vcount\(5) & ((\sync_gen_inst|temp_Vcount\(4)) # (\row_addr_gen_inst|process_0~0_combout\)))) # (!\sync_gen_inst|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(5),
	datab => \sync_gen_inst|temp_Vcount\(4),
	datac => \row_addr_gen_inst|process_0~0_combout\,
	datad => \sync_gen_inst|LessThan5~0_combout\,
	combout => \sync_gen_inst|Vert_Sync~0_combout\);

-- Location: LCCOMB_X44_Y33_N18
\sync_gen_inst|Vert_Sync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Vert_Sync~2_combout\ = (\sync_gen_inst|temp_Vcount\(9)) # ((\sync_gen_inst|Vert_Sync~1_combout\) # (\sync_gen_inst|Vert_Sync~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(9),
	datab => \sync_gen_inst|Vert_Sync~1_combout\,
	datad => \sync_gen_inst|Vert_Sync~0_combout\,
	combout => \sync_gen_inst|Vert_Sync~2_combout\);

-- Location: IOIBUF_X54_Y54_N29
\switch[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\switch[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\switch[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\switch[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\switch[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\switch[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\switch[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\button[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_red(0) <= \red[0]~output_o\;

ww_red(1) <= \red[1]~output_o\;

ww_red(2) <= \red[2]~output_o\;

ww_red(3) <= \red[3]~output_o\;

ww_green(0) <= \green[0]~output_o\;

ww_green(1) <= \green[1]~output_o\;

ww_green(2) <= \green[2]~output_o\;

ww_green(3) <= \green[3]~output_o\;

ww_blue(0) <= \blue[0]~output_o\;

ww_blue(1) <= \blue[1]~output_o\;

ww_blue(2) <= \blue[2]~output_o\;

ww_blue(3) <= \blue[3]~output_o\;

ww_h_sync <= \h_sync~output_o\;

ww_v_sync <= \v_sync~output_o\;
END structure;


