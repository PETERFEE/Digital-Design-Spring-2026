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

-- DATE "03/03/2026 17:23:59"

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
	red : BUFFER std_logic_vector(3 DOWNTO 0);
	green : BUFFER std_logic_vector(3 DOWNTO 0);
	blue : BUFFER std_logic_vector(3 DOWNTO 0);
	h_sync : BUFFER std_logic;
	v_sync : BUFFER std_logic
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
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \sync_gen_inst|pixel_clk_div|count[0]~0_combout\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \sync_gen_inst|pixel_clk_div|pixel_clk~feeder_combout\ : std_logic;
SIGNAL \sync_gen_inst|pixel_clk_div|pixel_clk~q\ : std_logic;
SIGNAL \sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_outclk\ : std_logic;
SIGNAL \sync_gen_inst|Equal2~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~17\ : std_logic;
SIGNAL \sync_gen_inst|Add1~18_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Vcount~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~1\ : std_logic;
SIGNAL \sync_gen_inst|Add0~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~3\ : std_logic;
SIGNAL \sync_gen_inst|Add0~4_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~5\ : std_logic;
SIGNAL \sync_gen_inst|Add0~6_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~7\ : std_logic;
SIGNAL \sync_gen_inst|Add0~8_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal0~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~13\ : std_logic;
SIGNAL \sync_gen_inst|Add0~14_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~15\ : std_logic;
SIGNAL \sync_gen_inst|Add0~17\ : std_logic;
SIGNAL \sync_gen_inst|Add0~18_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Hcount~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal0~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~16_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Hcount~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal0~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~9\ : std_logic;
SIGNAL \sync_gen_inst|Add0~10_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Hcount~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add0~11\ : std_logic;
SIGNAL \sync_gen_inst|Add0~12_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal1~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal1~3_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal2~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Equal2~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Vcount~3_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~1\ : std_logic;
SIGNAL \sync_gen_inst|Add1~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Add1~3\ : std_logic;
SIGNAL \sync_gen_inst|Add1~4_combout\ : std_logic;
SIGNAL \sync_gen_inst|temp_Vcount~2_combout\ : std_logic;
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
SIGNAL \sync_gen_inst|LessThan5~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux6~3_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux6~0_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux6~1_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux6~2_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~4_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~5_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~0_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~6_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|process_0~0_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~1_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~2_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux5~4_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux5~1_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~0_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Add0~2_combout\ : std_logic;
SIGNAL \col_addr_gen_inst|Mux5~0_combout\ : std_logic;
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
SIGNAL \row_addr_gen_inst|Mux5~5_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux5~6_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~0_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~2_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux5~7_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|process_0~3_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux5~8_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Mux5~9_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~4_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~1\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~5_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~7_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~8_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~6\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~9_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~11_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~12_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~3_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~10\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~13_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~15_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~16_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~14\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~17_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~19_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~20_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~18\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~21_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~23_combout\ : std_logic;
SIGNAL \row_addr_gen_inst|Add0~24_combout\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \red~1_combout\ : std_logic;
SIGNAL \red~2_combout\ : std_logic;
SIGNAL \red~3_combout\ : std_logic;
SIGNAL \green~0_combout\ : std_logic;
SIGNAL \green~1_combout\ : std_logic;
SIGNAL \green~2_combout\ : std_logic;
SIGNAL \green~3_combout\ : std_logic;
SIGNAL \blue~0_combout\ : std_logic;
SIGNAL \blue~1_combout\ : std_logic;
SIGNAL \blue~2_combout\ : std_logic;
SIGNAL \blue~3_combout\ : std_logic;
SIGNAL \sync_gen_inst|Horiz_Sync~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Horiz_Sync~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Horiz_Sync~2_combout\ : std_logic;
SIGNAL \sync_gen_inst|Horiz_Sync~3_combout\ : std_logic;
SIGNAL \sync_gen_inst|Vert_Sync~1_combout\ : std_logic;
SIGNAL \sync_gen_inst|Vert_Sync~0_combout\ : std_logic;
SIGNAL \sync_gen_inst|Vert_Sync~2_combout\ : std_logic;
SIGNAL \rom_inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \sync_gen_inst|temp_Vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sync_gen_inst|temp_Hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sync_gen_inst|pixel_clk_div|count\ : std_logic_vector(1 DOWNTO 0);

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

\rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~16_combout\ & \row_addr_gen_inst|Add0~12_combout\ & 
\row_addr_gen_inst|Add0~8_combout\ & \row_addr_gen_inst|Add0~4_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & \col_addr_gen_inst|Add0~11_combout\ & 
\col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|q_a\(8) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\rom_inst|altsyncram_component|auto_generated|q_a\(9) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~16_combout\ & \row_addr_gen_inst|Add0~12_combout\ & 
\row_addr_gen_inst|Add0~8_combout\ & \row_addr_gen_inst|Add0~4_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & \col_addr_gen_inst|Add0~11_combout\ & 
\col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|q_a\(10) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\rom_inst|altsyncram_component|auto_generated|q_a\(11) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~16_combout\ & \row_addr_gen_inst|Add0~12_combout\ & 
\row_addr_gen_inst|Add0~8_combout\ & \row_addr_gen_inst|Add0~4_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & \col_addr_gen_inst|Add0~11_combout\ & 
\col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|q_a\(4) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\rom_inst|altsyncram_component|auto_generated|q_a\(5) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~16_combout\ & \row_addr_gen_inst|Add0~12_combout\ & 
\row_addr_gen_inst|Add0~8_combout\ & \row_addr_gen_inst|Add0~4_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & \col_addr_gen_inst|Add0~11_combout\ & 
\col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|q_a\(6) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\rom_inst|altsyncram_component|auto_generated|q_a\(7) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~16_combout\ & \row_addr_gen_inst|Add0~12_combout\ & 
\row_addr_gen_inst|Add0~8_combout\ & \row_addr_gen_inst|Add0~4_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & \col_addr_gen_inst|Add0~11_combout\ & 
\col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|q_a\(0) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\rom_inst|altsyncram_component|auto_generated|q_a\(1) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\row_addr_gen_inst|Add0~24_combout\ & \row_addr_gen_inst|Add0~20_combout\ & \row_addr_gen_inst|Add0~16_combout\ & \row_addr_gen_inst|Add0~12_combout\ & 
\row_addr_gen_inst|Add0~8_combout\ & \row_addr_gen_inst|Add0~4_combout\ & \col_addr_gen_inst|Add0~23_combout\ & \col_addr_gen_inst|Add0~19_combout\ & \col_addr_gen_inst|Add0~15_combout\ & \col_addr_gen_inst|Add0~11_combout\ & 
\col_addr_gen_inst|Add0~7_combout\ & \col_addr_gen_inst|Add0~3_combout\);

\rom_inst|altsyncram_component|auto_generated|q_a\(2) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\rom_inst|altsyncram_component|auto_generated|q_a\(3) <= \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sync_gen_inst|pixel_clk_div|pixel_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sync_gen_inst|pixel_clk_div|pixel_clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
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

-- Location: LCCOMB_X45_Y53_N18
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

-- Location: FF_X45_Y53_N19
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

-- Location: LCCOMB_X45_Y53_N28
\sync_gen_inst|pixel_clk_div|pixel_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|pixel_clk_div|pixel_clk~feeder_combout\ = \sync_gen_inst|pixel_clk_div|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sync_gen_inst|pixel_clk_div|count\(0),
	combout => \sync_gen_inst|pixel_clk_div|pixel_clk~feeder_combout\);

-- Location: FF_X45_Y53_N29
\sync_gen_inst|pixel_clk_div|pixel_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sync_gen_inst|pixel_clk_div|pixel_clk~feeder_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|pixel_clk_div|pixel_clk~q\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X34_Y27_N30
\sync_gen_inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal2~0_combout\ = (!\sync_gen_inst|temp_Vcount\(1) & (\sync_gen_inst|temp_Vcount\(2) & (\sync_gen_inst|temp_Vcount\(3) & !\sync_gen_inst|temp_Vcount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(1),
	datab => \sync_gen_inst|temp_Vcount\(2),
	datac => \sync_gen_inst|temp_Vcount\(3),
	datad => \sync_gen_inst|temp_Vcount\(0),
	combout => \sync_gen_inst|Equal2~0_combout\);

-- Location: LCCOMB_X35_Y27_N20
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

-- Location: LCCOMB_X35_Y27_N22
\sync_gen_inst|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~18_combout\ = \sync_gen_inst|temp_Vcount\(9) $ (\sync_gen_inst|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(9),
	cin => \sync_gen_inst|Add1~17\,
	combout => \sync_gen_inst|Add1~18_combout\);

-- Location: LCCOMB_X35_Y27_N30
\sync_gen_inst|temp_Vcount~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Vcount~0_combout\ = (\sync_gen_inst|Add1~18_combout\ & !\sync_gen_inst|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|Add1~18_combout\,
	datad => \sync_gen_inst|Equal2~2_combout\,
	combout => \sync_gen_inst|temp_Vcount~0_combout\);

-- Location: LCCOMB_X36_Y28_N6
\sync_gen_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~0_combout\ = \sync_gen_inst|temp_Hcount\(0) $ (VCC)
-- \sync_gen_inst|Add0~1\ = CARRY(\sync_gen_inst|temp_Hcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(0),
	datad => VCC,
	combout => \sync_gen_inst|Add0~0_combout\,
	cout => \sync_gen_inst|Add0~1\);

-- Location: FF_X36_Y28_N7
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

-- Location: LCCOMB_X36_Y28_N8
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

-- Location: FF_X36_Y28_N9
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

-- Location: LCCOMB_X36_Y28_N10
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

-- Location: FF_X36_Y28_N11
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

-- Location: LCCOMB_X36_Y28_N12
\sync_gen_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~6_combout\ = (\sync_gen_inst|temp_Hcount\(3) & (!\sync_gen_inst|Add0~5\)) # (!\sync_gen_inst|temp_Hcount\(3) & ((\sync_gen_inst|Add0~5\) # (GND)))
-- \sync_gen_inst|Add0~7\ = CARRY((!\sync_gen_inst|Add0~5\) # (!\sync_gen_inst|temp_Hcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(3),
	datad => VCC,
	cin => \sync_gen_inst|Add0~5\,
	combout => \sync_gen_inst|Add0~6_combout\,
	cout => \sync_gen_inst|Add0~7\);

-- Location: FF_X36_Y28_N13
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

-- Location: LCCOMB_X36_Y28_N14
\sync_gen_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~8_combout\ = (\sync_gen_inst|temp_Hcount\(4) & (\sync_gen_inst|Add0~7\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(4) & (!\sync_gen_inst|Add0~7\ & VCC))
-- \sync_gen_inst|Add0~9\ = CARRY((\sync_gen_inst|temp_Hcount\(4) & !\sync_gen_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(4),
	datad => VCC,
	cin => \sync_gen_inst|Add0~7\,
	combout => \sync_gen_inst|Add0~8_combout\,
	cout => \sync_gen_inst|Add0~9\);

-- Location: FF_X36_Y28_N15
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

-- Location: LCCOMB_X36_Y28_N28
\sync_gen_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal0~0_combout\ = (\sync_gen_inst|temp_Hcount\(0) & (\sync_gen_inst|temp_Hcount\(1) & (\sync_gen_inst|temp_Hcount\(4) & \sync_gen_inst|temp_Hcount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(0),
	datab => \sync_gen_inst|temp_Hcount\(1),
	datac => \sync_gen_inst|temp_Hcount\(4),
	datad => \sync_gen_inst|temp_Hcount\(3),
	combout => \sync_gen_inst|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y28_N18
\sync_gen_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~12_combout\ = (\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|Add0~11\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(6) & (!\sync_gen_inst|Add0~11\ & VCC))
-- \sync_gen_inst|Add0~13\ = CARRY((\sync_gen_inst|temp_Hcount\(6) & !\sync_gen_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(6),
	datad => VCC,
	cin => \sync_gen_inst|Add0~11\,
	combout => \sync_gen_inst|Add0~12_combout\,
	cout => \sync_gen_inst|Add0~13\);

-- Location: LCCOMB_X36_Y28_N20
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

-- Location: FF_X36_Y28_N21
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

-- Location: LCCOMB_X36_Y28_N22
\sync_gen_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~16_combout\ = (\sync_gen_inst|temp_Hcount\(8) & (\sync_gen_inst|Add0~15\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(8) & (!\sync_gen_inst|Add0~15\ & VCC))
-- \sync_gen_inst|Add0~17\ = CARRY((\sync_gen_inst|temp_Hcount\(8) & !\sync_gen_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(8),
	datad => VCC,
	cin => \sync_gen_inst|Add0~15\,
	combout => \sync_gen_inst|Add0~16_combout\,
	cout => \sync_gen_inst|Add0~17\);

-- Location: LCCOMB_X36_Y28_N24
\sync_gen_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~18_combout\ = \sync_gen_inst|temp_Hcount\(9) $ (\sync_gen_inst|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(9),
	cin => \sync_gen_inst|Add0~17\,
	combout => \sync_gen_inst|Add0~18_combout\);

-- Location: LCCOMB_X36_Y28_N30
\sync_gen_inst|temp_Hcount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Hcount~1_combout\ = (\sync_gen_inst|Add0~18_combout\ & (((!\sync_gen_inst|Equal0~1_combout\) # (!\sync_gen_inst|Equal0~0_combout\)) # (!\sync_gen_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|Equal0~2_combout\,
	datab => \sync_gen_inst|Equal0~0_combout\,
	datac => \sync_gen_inst|Equal0~1_combout\,
	datad => \sync_gen_inst|Add0~18_combout\,
	combout => \sync_gen_inst|temp_Hcount~1_combout\);

-- Location: FF_X36_Y28_N31
\sync_gen_inst|temp_Hcount[9]\ : dffeas
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
	q => \sync_gen_inst|temp_Hcount\(9));

-- Location: LCCOMB_X36_Y28_N4
\sync_gen_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal0~1_combout\ = (\sync_gen_inst|temp_Hcount\(9) & !\sync_gen_inst|temp_Hcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|temp_Hcount\(9),
	datad => \sync_gen_inst|temp_Hcount\(6),
	combout => \sync_gen_inst|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y28_N0
\sync_gen_inst|temp_Hcount~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Hcount~0_combout\ = (\sync_gen_inst|Add0~16_combout\ & (((!\sync_gen_inst|Equal0~2_combout\) # (!\sync_gen_inst|Equal0~1_combout\)) # (!\sync_gen_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|Equal0~0_combout\,
	datab => \sync_gen_inst|Equal0~1_combout\,
	datac => \sync_gen_inst|Add0~16_combout\,
	datad => \sync_gen_inst|Equal0~2_combout\,
	combout => \sync_gen_inst|temp_Hcount~0_combout\);

-- Location: FF_X36_Y28_N1
\sync_gen_inst|temp_Hcount[8]\ : dffeas
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
	q => \sync_gen_inst|temp_Hcount\(8));

-- Location: LCCOMB_X36_Y28_N2
\sync_gen_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal0~2_combout\ = (\sync_gen_inst|temp_Hcount\(2) & (\sync_gen_inst|temp_Hcount\(8) & (!\sync_gen_inst|temp_Hcount\(7) & !\sync_gen_inst|temp_Hcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(2),
	datab => \sync_gen_inst|temp_Hcount\(8),
	datac => \sync_gen_inst|temp_Hcount\(7),
	datad => \sync_gen_inst|temp_Hcount\(5),
	combout => \sync_gen_inst|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y28_N16
\sync_gen_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add0~10_combout\ = (\sync_gen_inst|temp_Hcount\(5) & (!\sync_gen_inst|Add0~9\)) # (!\sync_gen_inst|temp_Hcount\(5) & ((\sync_gen_inst|Add0~9\) # (GND)))
-- \sync_gen_inst|Add0~11\ = CARRY((!\sync_gen_inst|Add0~9\) # (!\sync_gen_inst|temp_Hcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(5),
	datad => VCC,
	cin => \sync_gen_inst|Add0~9\,
	combout => \sync_gen_inst|Add0~10_combout\,
	cout => \sync_gen_inst|Add0~11\);

-- Location: LCCOMB_X35_Y28_N28
\sync_gen_inst|temp_Hcount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Hcount~2_combout\ = (\sync_gen_inst|Add0~10_combout\ & (((!\sync_gen_inst|Equal0~1_combout\) # (!\sync_gen_inst|Equal0~0_combout\)) # (!\sync_gen_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|Equal0~2_combout\,
	datab => \sync_gen_inst|Equal0~0_combout\,
	datac => \sync_gen_inst|Equal0~1_combout\,
	datad => \sync_gen_inst|Add0~10_combout\,
	combout => \sync_gen_inst|temp_Hcount~2_combout\);

-- Location: FF_X35_Y28_N29
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

-- Location: FF_X36_Y28_N19
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

-- Location: LCCOMB_X35_Y27_N0
\sync_gen_inst|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal1~2_combout\ = (\sync_gen_inst|temp_Hcount\(5) & (!\sync_gen_inst|temp_Hcount\(8) & (\sync_gen_inst|temp_Hcount\(7) & !\sync_gen_inst|temp_Hcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(5),
	datab => \sync_gen_inst|temp_Hcount\(8),
	datac => \sync_gen_inst|temp_Hcount\(7),
	datad => \sync_gen_inst|temp_Hcount\(2),
	combout => \sync_gen_inst|Equal1~2_combout\);

-- Location: LCCOMB_X35_Y27_N28
\sync_gen_inst|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal1~3_combout\ = (!\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|temp_Hcount\(9) & (\sync_gen_inst|Equal0~0_combout\ & \sync_gen_inst|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(6),
	datab => \sync_gen_inst|temp_Hcount\(9),
	datac => \sync_gen_inst|Equal0~0_combout\,
	datad => \sync_gen_inst|Equal1~2_combout\,
	combout => \sync_gen_inst|Equal1~3_combout\);

-- Location: FF_X35_Y27_N31
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(9));

-- Location: LCCOMB_X35_Y27_N26
\sync_gen_inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal2~1_combout\ = (\sync_gen_inst|temp_Vcount\(9) & (!\sync_gen_inst|temp_Vcount\(7) & (!\sync_gen_inst|temp_Vcount\(8) & !\sync_gen_inst|temp_Vcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(9),
	datab => \sync_gen_inst|temp_Vcount\(7),
	datac => \sync_gen_inst|temp_Vcount\(8),
	datad => \sync_gen_inst|temp_Vcount\(6),
	combout => \sync_gen_inst|Equal2~1_combout\);

-- Location: LCCOMB_X34_Y27_N12
\sync_gen_inst|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Equal2~2_combout\ = (\sync_gen_inst|Equal2~0_combout\ & (!\sync_gen_inst|temp_Vcount\(4) & (!\sync_gen_inst|temp_Vcount\(5) & \sync_gen_inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|Equal2~0_combout\,
	datab => \sync_gen_inst|temp_Vcount\(4),
	datac => \sync_gen_inst|temp_Vcount\(5),
	datad => \sync_gen_inst|Equal2~1_combout\,
	combout => \sync_gen_inst|Equal2~2_combout\);

-- Location: LCCOMB_X35_Y27_N4
\sync_gen_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~0_combout\ = \sync_gen_inst|temp_Vcount\(0) $ (VCC)
-- \sync_gen_inst|Add1~1\ = CARRY(\sync_gen_inst|temp_Vcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(0),
	datad => VCC,
	combout => \sync_gen_inst|Add1~0_combout\,
	cout => \sync_gen_inst|Add1~1\);

-- Location: LCCOMB_X34_Y27_N28
\sync_gen_inst|temp_Vcount~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Vcount~3_combout\ = (!\sync_gen_inst|Equal2~2_combout\ & \sync_gen_inst|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|Equal2~2_combout\,
	datad => \sync_gen_inst|Add1~0_combout\,
	combout => \sync_gen_inst|temp_Vcount~3_combout\);

-- Location: FF_X34_Y27_N29
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(0));

-- Location: LCCOMB_X35_Y27_N6
\sync_gen_inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~2_combout\ = (\sync_gen_inst|temp_Vcount\(1) & (!\sync_gen_inst|Add1~1\)) # (!\sync_gen_inst|temp_Vcount\(1) & ((\sync_gen_inst|Add1~1\) # (GND)))
-- \sync_gen_inst|Add1~3\ = CARRY((!\sync_gen_inst|Add1~1\) # (!\sync_gen_inst|temp_Vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(1),
	datad => VCC,
	cin => \sync_gen_inst|Add1~1\,
	combout => \sync_gen_inst|Add1~2_combout\,
	cout => \sync_gen_inst|Add1~3\);

-- Location: FF_X35_Y27_N7
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(1));

-- Location: LCCOMB_X35_Y27_N8
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

-- Location: LCCOMB_X34_Y27_N14
\sync_gen_inst|temp_Vcount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Vcount~2_combout\ = (\sync_gen_inst|Add1~4_combout\ & !\sync_gen_inst|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|Add1~4_combout\,
	datad => \sync_gen_inst|Equal2~2_combout\,
	combout => \sync_gen_inst|temp_Vcount~2_combout\);

-- Location: FF_X34_Y27_N15
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(2));

-- Location: LCCOMB_X35_Y27_N10
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

-- Location: LCCOMB_X34_Y27_N8
\sync_gen_inst|temp_Vcount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|temp_Vcount~1_combout\ = (\sync_gen_inst|Add1~6_combout\ & !\sync_gen_inst|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen_inst|Add1~6_combout\,
	datad => \sync_gen_inst|Equal2~2_combout\,
	combout => \sync_gen_inst|temp_Vcount~1_combout\);

-- Location: FF_X34_Y27_N9
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(3));

-- Location: LCCOMB_X35_Y27_N12
\sync_gen_inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Add1~8_combout\ = (\sync_gen_inst|temp_Vcount\(4) & (\sync_gen_inst|Add1~7\ $ (GND))) # (!\sync_gen_inst|temp_Vcount\(4) & (!\sync_gen_inst|Add1~7\ & VCC))
-- \sync_gen_inst|Add1~9\ = CARRY((\sync_gen_inst|temp_Vcount\(4) & !\sync_gen_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(4),
	datad => VCC,
	cin => \sync_gen_inst|Add1~7\,
	combout => \sync_gen_inst|Add1~8_combout\,
	cout => \sync_gen_inst|Add1~9\);

-- Location: FF_X35_Y27_N13
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(4));

-- Location: LCCOMB_X35_Y27_N14
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

-- Location: FF_X35_Y27_N15
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(5));

-- Location: LCCOMB_X35_Y27_N16
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

-- Location: FF_X35_Y27_N17
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(6));

-- Location: LCCOMB_X35_Y27_N18
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

-- Location: FF_X35_Y27_N19
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(7));

-- Location: FF_X35_Y27_N21
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
	ena => \sync_gen_inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen_inst|temp_Vcount\(8));

-- Location: LCCOMB_X35_Y27_N24
\sync_gen_inst|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|LessThan5~0_combout\ = (\sync_gen_inst|temp_Vcount\(8) & (\sync_gen_inst|temp_Vcount\(7) & (\sync_gen_inst|temp_Vcount\(5) & \sync_gen_inst|temp_Vcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(8),
	datab => \sync_gen_inst|temp_Vcount\(7),
	datac => \sync_gen_inst|temp_Vcount\(5),
	datad => \sync_gen_inst|temp_Vcount\(6),
	combout => \sync_gen_inst|LessThan5~0_combout\);

-- Location: LCCOMB_X34_Y27_N4
\process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\sync_gen_inst|temp_Vcount\(9)) # ((\sync_gen_inst|temp_Hcount\(9) & ((\sync_gen_inst|temp_Hcount\(7)) # (\sync_gen_inst|temp_Hcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(9),
	datab => \sync_gen_inst|temp_Hcount\(7),
	datac => \sync_gen_inst|temp_Hcount\(8),
	datad => \sync_gen_inst|temp_Hcount\(9),
	combout => \process_0~2_combout\);

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

-- Location: LCCOMB_X34_Y28_N30
\col_addr_gen_inst|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux6~3_combout\ = (\switch[0]~input_o\ & ((\sync_gen_inst|temp_Hcount\(9)) # ((\sync_gen_inst|temp_Hcount\(8)) # (\sync_gen_inst|temp_Hcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(9),
	datab => \sync_gen_inst|temp_Hcount\(8),
	datac => \sync_gen_inst|temp_Hcount\(7),
	datad => \switch[0]~input_o\,
	combout => \col_addr_gen_inst|Mux6~3_combout\);

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

-- Location: LCCOMB_X34_Y28_N28
\process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\switch[2]~input_o\ & (((\switch[0]~input_o\) # (\switch[1]~input_o\)))) # (!\switch[2]~input_o\ & (\col_addr_gen_inst|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux6~3_combout\,
	datab => \switch[0]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X35_Y28_N2
\col_addr_gen_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux6~0_combout\ = (\sync_gen_inst|temp_Hcount\(5) & (\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|temp_Hcount\(2) & \sync_gen_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(5),
	datab => \sync_gen_inst|temp_Hcount\(6),
	datac => \sync_gen_inst|temp_Hcount\(2),
	datad => \sync_gen_inst|Equal0~0_combout\,
	combout => \col_addr_gen_inst|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y28_N4
\col_addr_gen_inst|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux6~1_combout\ = (!\sync_gen_inst|temp_Hcount\(9) & ((\sync_gen_inst|temp_Hcount\(7) & (!\sync_gen_inst|temp_Hcount\(8) & \col_addr_gen_inst|Mux6~0_combout\)) # (!\sync_gen_inst|temp_Hcount\(7) & (\sync_gen_inst|temp_Hcount\(8) & 
-- !\col_addr_gen_inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(7),
	datab => \sync_gen_inst|temp_Hcount\(8),
	datac => \sync_gen_inst|temp_Hcount\(9),
	datad => \col_addr_gen_inst|Mux6~0_combout\,
	combout => \col_addr_gen_inst|Mux6~1_combout\);

-- Location: LCCOMB_X34_Y28_N4
\col_addr_gen_inst|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux6~2_combout\ = (!\switch[2]~input_o\ & (!\switch[0]~input_o\ & (!\switch[1]~input_o\ & !\col_addr_gen_inst|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \col_addr_gen_inst|Mux6~1_combout\,
	combout => \col_addr_gen_inst|Mux6~2_combout\);

-- Location: LCCOMB_X34_Y27_N26
\process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (!\sync_gen_inst|LessThan5~0_combout\ & (!\process_0~2_combout\ & (!\process_0~3_combout\ & !\col_addr_gen_inst|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|LessThan5~0_combout\,
	datab => \process_0~2_combout\,
	datac => \process_0~3_combout\,
	datad => \col_addr_gen_inst|Mux6~2_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X32_Y27_N18
\row_addr_gen_inst|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~4_combout\ = (\sync_gen_inst|temp_Vcount\(6) & (\sync_gen_inst|temp_Vcount\(5) & !\sync_gen_inst|temp_Vcount\(7))) # (!\sync_gen_inst|temp_Vcount\(6) & ((\sync_gen_inst|temp_Vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(5),
	datac => \sync_gen_inst|temp_Vcount\(6),
	datad => \sync_gen_inst|temp_Vcount\(7),
	combout => \row_addr_gen_inst|process_0~4_combout\);

-- Location: LCCOMB_X34_Y27_N0
\row_addr_gen_inst|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~5_combout\ = (\sync_gen_inst|temp_Vcount\(4) & ((\sync_gen_inst|temp_Vcount\(6)) # (\sync_gen_inst|temp_Vcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(6),
	datac => \sync_gen_inst|temp_Vcount\(4),
	datad => \sync_gen_inst|temp_Vcount\(7),
	combout => \row_addr_gen_inst|process_0~5_combout\);

-- Location: LCCOMB_X34_Y27_N6
\row_addr_gen_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~0_combout\ = (\sync_gen_inst|temp_Vcount\(0) & (\sync_gen_inst|temp_Vcount\(3) & (\sync_gen_inst|temp_Vcount\(2) & \sync_gen_inst|temp_Vcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(0),
	datab => \sync_gen_inst|temp_Vcount\(3),
	datac => \sync_gen_inst|temp_Vcount\(2),
	datad => \sync_gen_inst|temp_Vcount\(1),
	combout => \row_addr_gen_inst|process_0~0_combout\);

-- Location: LCCOMB_X34_Y27_N10
\row_addr_gen_inst|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~6_combout\ = (\sync_gen_inst|temp_Vcount\(7) & (!\sync_gen_inst|temp_Vcount\(5) & ((!\row_addr_gen_inst|process_0~0_combout\) # (!\row_addr_gen_inst|process_0~5_combout\)))) # (!\sync_gen_inst|temp_Vcount\(7) & 
-- (((\row_addr_gen_inst|process_0~5_combout\ & \row_addr_gen_inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(5),
	datab => \row_addr_gen_inst|process_0~5_combout\,
	datac => \sync_gen_inst|temp_Vcount\(7),
	datad => \row_addr_gen_inst|process_0~0_combout\,
	combout => \row_addr_gen_inst|process_0~6_combout\);

-- Location: LCCOMB_X32_Y27_N26
\process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\sync_gen_inst|temp_Vcount\(8) & (!\sync_gen_inst|temp_Vcount\(9) & ((\row_addr_gen_inst|process_0~4_combout\) # (\row_addr_gen_inst|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(8),
	datab => \row_addr_gen_inst|process_0~4_combout\,
	datac => \row_addr_gen_inst|process_0~6_combout\,
	datad => \sync_gen_inst|temp_Vcount\(9),
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X35_Y28_N6
\col_addr_gen_inst|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|LessThan1~0_combout\ = (\sync_gen_inst|temp_Hcount\(5) & (\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|temp_Hcount\(2) & \sync_gen_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(5),
	datab => \sync_gen_inst|temp_Hcount\(6),
	datac => \sync_gen_inst|temp_Hcount\(2),
	datad => \sync_gen_inst|Equal0~0_combout\,
	combout => \col_addr_gen_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X34_Y28_N14
\col_addr_gen_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|process_0~0_combout\ = (\sync_gen_inst|temp_Hcount\(9) & ((\sync_gen_inst|temp_Hcount\(8)) # ((\sync_gen_inst|temp_Hcount\(7)) # (\col_addr_gen_inst|LessThan1~0_combout\)))) # (!\sync_gen_inst|temp_Hcount\(9) & 
-- (((!\col_addr_gen_inst|LessThan1~0_combout\) # (!\sync_gen_inst|temp_Hcount\(7))) # (!\sync_gen_inst|temp_Hcount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(9),
	datab => \sync_gen_inst|temp_Hcount\(8),
	datac => \sync_gen_inst|temp_Hcount\(7),
	datad => \col_addr_gen_inst|LessThan1~0_combout\,
	combout => \col_addr_gen_inst|process_0~0_combout\);

-- Location: LCCOMB_X32_Y27_N16
\process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\switch[1]~input_o\ & (((\col_addr_gen_inst|process_0~0_combout\) # (\switch[0]~input_o\)))) # (!\switch[1]~input_o\ & (\switch[2]~input_o\ & ((\col_addr_gen_inst|process_0~0_combout\) # (!\switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \col_addr_gen_inst|process_0~0_combout\,
	datad => \switch[0]~input_o\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X34_Y27_N20
\row_addr_gen_inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~1_combout\ = (!\sync_gen_inst|temp_Vcount\(6) & (((!\sync_gen_inst|temp_Vcount\(4) & !\row_addr_gen_inst|process_0~0_combout\)) # (!\sync_gen_inst|temp_Vcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(5),
	datab => \sync_gen_inst|temp_Vcount\(6),
	datac => \sync_gen_inst|temp_Vcount\(4),
	datad => \row_addr_gen_inst|process_0~0_combout\,
	combout => \row_addr_gen_inst|process_0~1_combout\);

-- Location: LCCOMB_X34_Y27_N18
\row_addr_gen_inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~2_combout\ = (\sync_gen_inst|temp_Vcount\(9)) # ((\sync_gen_inst|temp_Vcount\(7) & ((\sync_gen_inst|temp_Vcount\(8)) # (\row_addr_gen_inst|process_0~1_combout\))) # (!\sync_gen_inst|temp_Vcount\(7) & 
-- ((!\row_addr_gen_inst|process_0~1_combout\) # (!\sync_gen_inst|temp_Vcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(9),
	datab => \sync_gen_inst|temp_Vcount\(7),
	datac => \sync_gen_inst|temp_Vcount\(8),
	datad => \row_addr_gen_inst|process_0~1_combout\,
	combout => \row_addr_gen_inst|process_0~2_combout\);

-- Location: LCCOMB_X32_Y27_N2
\process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\switch[1]~input_o\ & ((\switch[2]~input_o\) # ((!\switch[0]~input_o\)))) # (!\switch[1]~input_o\ & ((\switch[0]~input_o\) # ((\switch[2]~input_o\ & \col_addr_gen_inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \col_addr_gen_inst|process_0~0_combout\,
	datad => \switch[0]~input_o\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X32_Y27_N10
\process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~6_combout\ & (((\process_0~5_combout\)) # (!\process_0~9_combout\))) # (!\process_0~6_combout\ & (((\row_addr_gen_inst|process_0~2_combout\ & !\process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \process_0~6_combout\,
	datac => \row_addr_gen_inst|process_0~2_combout\,
	datad => \process_0~5_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X32_Y27_N24
\row_addr_gen_inst|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux5~4_combout\ = (!\sync_gen_inst|temp_Vcount\(8) & (!\switch[2]~input_o\ & !\sync_gen_inst|temp_Vcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(8),
	datab => \switch[2]~input_o\,
	datad => \sync_gen_inst|temp_Vcount\(7),
	combout => \row_addr_gen_inst|Mux5~4_combout\);

-- Location: LCCOMB_X31_Y27_N12
\process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\process_0~4_combout\ & (!\process_0~7_combout\ & ((\row_addr_gen_inst|Mux5~4_combout\) # (!\process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~7_combout\,
	datac => \row_addr_gen_inst|Mux5~4_combout\,
	datad => \process_0~5_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X34_Y28_N6
\col_addr_gen_inst|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux5~1_combout\ = (\col_addr_gen_inst|Mux6~3_combout\) # ((\switch[2]~input_o\ & ((\switch[1]~input_o\) # (\switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \col_addr_gen_inst|Mux6~3_combout\,
	datad => \switch[0]~input_o\,
	combout => \col_addr_gen_inst|Mux5~1_combout\);

-- Location: LCCOMB_X35_Y28_N10
\col_addr_gen_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~0_combout\ = (\sync_gen_inst|temp_Hcount\(0) & (\sync_gen_inst|temp_Hcount\(1) $ (VCC))) # (!\sync_gen_inst|temp_Hcount\(0) & (\sync_gen_inst|temp_Hcount\(1) & VCC))
-- \col_addr_gen_inst|Add0~1\ = CARRY((\sync_gen_inst|temp_Hcount\(0) & \sync_gen_inst|temp_Hcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(0),
	datab => \sync_gen_inst|temp_Hcount\(1),
	datad => VCC,
	combout => \col_addr_gen_inst|Add0~0_combout\,
	cout => \col_addr_gen_inst|Add0~1\);

-- Location: LCCOMB_X35_Y28_N26
\col_addr_gen_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~2_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(1))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(1),
	datac => \switch[0]~input_o\,
	datad => \col_addr_gen_inst|Add0~0_combout\,
	combout => \col_addr_gen_inst|Add0~2_combout\);

-- Location: LCCOMB_X34_Y28_N16
\col_addr_gen_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Mux5~0_combout\ = (\col_addr_gen_inst|process_0~0_combout\ & ((\switch[2]~input_o\) # ((\switch[1]~input_o\ & !\switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \col_addr_gen_inst|process_0~0_combout\,
	datad => \switch[0]~input_o\,
	combout => \col_addr_gen_inst|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y28_N20
\col_addr_gen_inst|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~3_combout\ = (!\col_addr_gen_inst|Mux5~1_combout\ & (\col_addr_gen_inst|Add0~2_combout\ & (!\col_addr_gen_inst|Mux6~2_combout\ & !\col_addr_gen_inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux5~1_combout\,
	datab => \col_addr_gen_inst|Add0~2_combout\,
	datac => \col_addr_gen_inst|Mux6~2_combout\,
	datad => \col_addr_gen_inst|Mux5~0_combout\,
	combout => \col_addr_gen_inst|Add0~3_combout\);

-- Location: LCCOMB_X35_Y28_N12
\col_addr_gen_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~4_combout\ = (\sync_gen_inst|temp_Hcount\(2) & (!\col_addr_gen_inst|Add0~1\)) # (!\sync_gen_inst|temp_Hcount\(2) & ((\col_addr_gen_inst|Add0~1\) # (GND)))
-- \col_addr_gen_inst|Add0~5\ = CARRY((!\col_addr_gen_inst|Add0~1\) # (!\sync_gen_inst|temp_Hcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(2),
	datad => VCC,
	cin => \col_addr_gen_inst|Add0~1\,
	combout => \col_addr_gen_inst|Add0~4_combout\,
	cout => \col_addr_gen_inst|Add0~5\);

-- Location: LCCOMB_X35_Y28_N8
\col_addr_gen_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~6_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(2))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(2),
	datac => \switch[0]~input_o\,
	datad => \col_addr_gen_inst|Add0~4_combout\,
	combout => \col_addr_gen_inst|Add0~6_combout\);

-- Location: LCCOMB_X34_Y28_N10
\col_addr_gen_inst|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~7_combout\ = (!\col_addr_gen_inst|Mux5~1_combout\ & (\col_addr_gen_inst|Add0~6_combout\ & (!\col_addr_gen_inst|Mux6~2_combout\ & !\col_addr_gen_inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux5~1_combout\,
	datab => \col_addr_gen_inst|Add0~6_combout\,
	datac => \col_addr_gen_inst|Mux6~2_combout\,
	datad => \col_addr_gen_inst|Mux5~0_combout\,
	combout => \col_addr_gen_inst|Add0~7_combout\);

-- Location: LCCOMB_X35_Y28_N14
\col_addr_gen_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~8_combout\ = (\sync_gen_inst|temp_Hcount\(3) & (\col_addr_gen_inst|Add0~5\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(3) & (!\col_addr_gen_inst|Add0~5\ & VCC))
-- \col_addr_gen_inst|Add0~9\ = CARRY((\sync_gen_inst|temp_Hcount\(3) & !\col_addr_gen_inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(3),
	datad => VCC,
	cin => \col_addr_gen_inst|Add0~5\,
	combout => \col_addr_gen_inst|Add0~8_combout\,
	cout => \col_addr_gen_inst|Add0~9\);

-- Location: LCCOMB_X35_Y28_N30
\col_addr_gen_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~10_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(3))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \sync_gen_inst|temp_Hcount\(3),
	datac => \col_addr_gen_inst|Add0~8_combout\,
	combout => \col_addr_gen_inst|Add0~10_combout\);

-- Location: LCCOMB_X34_Y28_N24
\col_addr_gen_inst|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~11_combout\ = (\col_addr_gen_inst|Add0~10_combout\ & (!\col_addr_gen_inst|Mux5~1_combout\ & (!\col_addr_gen_inst|Mux6~2_combout\ & !\col_addr_gen_inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Add0~10_combout\,
	datab => \col_addr_gen_inst|Mux5~1_combout\,
	datac => \col_addr_gen_inst|Mux6~2_combout\,
	datad => \col_addr_gen_inst|Mux5~0_combout\,
	combout => \col_addr_gen_inst|Add0~11_combout\);

-- Location: LCCOMB_X35_Y28_N16
\col_addr_gen_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~12_combout\ = (\sync_gen_inst|temp_Hcount\(4) & (!\col_addr_gen_inst|Add0~9\)) # (!\sync_gen_inst|temp_Hcount\(4) & ((\col_addr_gen_inst|Add0~9\) # (GND)))
-- \col_addr_gen_inst|Add0~13\ = CARRY((!\col_addr_gen_inst|Add0~9\) # (!\sync_gen_inst|temp_Hcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(4),
	datad => VCC,
	cin => \col_addr_gen_inst|Add0~9\,
	combout => \col_addr_gen_inst|Add0~12_combout\,
	cout => \col_addr_gen_inst|Add0~13\);

-- Location: LCCOMB_X35_Y28_N0
\col_addr_gen_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~14_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(4))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(4),
	datac => \switch[0]~input_o\,
	datad => \col_addr_gen_inst|Add0~12_combout\,
	combout => \col_addr_gen_inst|Add0~14_combout\);

-- Location: LCCOMB_X34_Y28_N22
\col_addr_gen_inst|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~15_combout\ = (!\col_addr_gen_inst|Mux5~1_combout\ & (\col_addr_gen_inst|Add0~14_combout\ & (!\col_addr_gen_inst|Mux6~2_combout\ & !\col_addr_gen_inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux5~1_combout\,
	datab => \col_addr_gen_inst|Add0~14_combout\,
	datac => \col_addr_gen_inst|Mux6~2_combout\,
	datad => \col_addr_gen_inst|Mux5~0_combout\,
	combout => \col_addr_gen_inst|Add0~15_combout\);

-- Location: LCCOMB_X35_Y28_N18
\col_addr_gen_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~16_combout\ = (\sync_gen_inst|temp_Hcount\(5) & (\col_addr_gen_inst|Add0~13\ $ (GND))) # (!\sync_gen_inst|temp_Hcount\(5) & (!\col_addr_gen_inst|Add0~13\ & VCC))
-- \col_addr_gen_inst|Add0~17\ = CARRY((\sync_gen_inst|temp_Hcount\(5) & !\col_addr_gen_inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(5),
	datad => VCC,
	cin => \col_addr_gen_inst|Add0~13\,
	combout => \col_addr_gen_inst|Add0~16_combout\,
	cout => \col_addr_gen_inst|Add0~17\);

-- Location: LCCOMB_X35_Y28_N22
\col_addr_gen_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~18_combout\ = (\switch[0]~input_o\ & (\sync_gen_inst|temp_Hcount\(5))) # (!\switch[0]~input_o\ & ((\col_addr_gen_inst|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(5),
	datac => \switch[0]~input_o\,
	datad => \col_addr_gen_inst|Add0~16_combout\,
	combout => \col_addr_gen_inst|Add0~18_combout\);

-- Location: LCCOMB_X34_Y28_N0
\col_addr_gen_inst|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~19_combout\ = (!\col_addr_gen_inst|Mux5~1_combout\ & (\col_addr_gen_inst|Add0~18_combout\ & (!\col_addr_gen_inst|Mux6~2_combout\ & !\col_addr_gen_inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux5~1_combout\,
	datab => \col_addr_gen_inst|Add0~18_combout\,
	datac => \col_addr_gen_inst|Mux6~2_combout\,
	datad => \col_addr_gen_inst|Mux5~0_combout\,
	combout => \col_addr_gen_inst|Add0~19_combout\);

-- Location: LCCOMB_X35_Y28_N20
\col_addr_gen_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~20_combout\ = \sync_gen_inst|temp_Hcount\(6) $ (\col_addr_gen_inst|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(6),
	cin => \col_addr_gen_inst|Add0~17\,
	combout => \col_addr_gen_inst|Add0~20_combout\);

-- Location: LCCOMB_X34_Y28_N26
\col_addr_gen_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~22_combout\ = (\switch[0]~input_o\ & ((\sync_gen_inst|temp_Hcount\(6)))) # (!\switch[0]~input_o\ & (\col_addr_gen_inst|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[0]~input_o\,
	datac => \col_addr_gen_inst|Add0~20_combout\,
	datad => \sync_gen_inst|temp_Hcount\(6),
	combout => \col_addr_gen_inst|Add0~22_combout\);

-- Location: LCCOMB_X34_Y28_N8
\col_addr_gen_inst|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_addr_gen_inst|Add0~23_combout\ = (!\col_addr_gen_inst|Mux5~1_combout\ & (!\col_addr_gen_inst|Mux5~0_combout\ & (!\col_addr_gen_inst|Mux6~2_combout\ & \col_addr_gen_inst|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_addr_gen_inst|Mux5~1_combout\,
	datab => \col_addr_gen_inst|Mux5~0_combout\,
	datac => \col_addr_gen_inst|Mux6~2_combout\,
	datad => \col_addr_gen_inst|Add0~22_combout\,
	combout => \col_addr_gen_inst|Add0~23_combout\);

-- Location: LCCOMB_X31_Y27_N26
\row_addr_gen_inst|Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux5~5_combout\ = (\switch[1]~input_o\ & (!\switch[2]~input_o\ & \switch[0]~input_o\)) # (!\switch[1]~input_o\ & ((!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[2]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \row_addr_gen_inst|Mux5~5_combout\);

-- Location: LCCOMB_X32_Y27_N12
\row_addr_gen_inst|Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux5~6_combout\ = (!\sync_gen_inst|temp_Vcount\(9) & (!\row_addr_gen_inst|Mux5~5_combout\ & \row_addr_gen_inst|Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(9),
	datac => \row_addr_gen_inst|Mux5~5_combout\,
	datad => \row_addr_gen_inst|Mux5~4_combout\,
	combout => \row_addr_gen_inst|Mux5~6_combout\);

-- Location: LCCOMB_X31_Y27_N0
\row_addr_gen_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~0_combout\ = (\sync_gen_inst|temp_Vcount\(0) & (\sync_gen_inst|temp_Vcount\(1) $ (VCC))) # (!\sync_gen_inst|temp_Vcount\(0) & (\sync_gen_inst|temp_Vcount\(1) & VCC))
-- \row_addr_gen_inst|Add0~1\ = CARRY((\sync_gen_inst|temp_Vcount\(0) & \sync_gen_inst|temp_Vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(0),
	datab => \sync_gen_inst|temp_Vcount\(1),
	datad => VCC,
	combout => \row_addr_gen_inst|Add0~0_combout\,
	cout => \row_addr_gen_inst|Add0~1\);

-- Location: LCCOMB_X31_Y27_N28
\row_addr_gen_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~2_combout\ = (\row_addr_gen_inst|Mux5~5_combout\ & ((\row_addr_gen_inst|Add0~0_combout\))) # (!\row_addr_gen_inst|Mux5~5_combout\ & (\sync_gen_inst|temp_Vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(1),
	datac => \row_addr_gen_inst|Mux5~5_combout\,
	datad => \row_addr_gen_inst|Add0~0_combout\,
	combout => \row_addr_gen_inst|Add0~2_combout\);

-- Location: LCCOMB_X31_Y27_N16
\row_addr_gen_inst|Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux5~7_combout\ = (\switch[2]~input_o\ & (!\switch[1]~input_o\ & !\switch[0]~input_o\)) # (!\switch[2]~input_o\ & (\switch[1]~input_o\ & \switch[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[2]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \row_addr_gen_inst|Mux5~7_combout\);

-- Location: LCCOMB_X32_Y27_N8
\row_addr_gen_inst|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|process_0~3_combout\ = (\sync_gen_inst|temp_Vcount\(8) & !\sync_gen_inst|temp_Vcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(8),
	datad => \sync_gen_inst|temp_Vcount\(9),
	combout => \row_addr_gen_inst|process_0~3_combout\);

-- Location: LCCOMB_X32_Y27_N14
\row_addr_gen_inst|Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux5~8_combout\ = (\row_addr_gen_inst|Mux5~7_combout\ & (\row_addr_gen_inst|process_0~3_combout\ & ((\row_addr_gen_inst|process_0~4_combout\) # (\row_addr_gen_inst|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux5~7_combout\,
	datab => \row_addr_gen_inst|process_0~4_combout\,
	datac => \row_addr_gen_inst|process_0~6_combout\,
	datad => \row_addr_gen_inst|process_0~3_combout\,
	combout => \row_addr_gen_inst|Mux5~8_combout\);

-- Location: LCCOMB_X34_Y27_N22
\row_addr_gen_inst|Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Mux5~9_combout\ = (!\switch[1]~input_o\ & (!\switch[0]~input_o\ & (!\switch[2]~input_o\ & !\row_addr_gen_inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \row_addr_gen_inst|process_0~2_combout\,
	combout => \row_addr_gen_inst|Mux5~9_combout\);

-- Location: LCCOMB_X32_Y27_N28
\row_addr_gen_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~4_combout\ = (\row_addr_gen_inst|Add0~2_combout\ & ((\row_addr_gen_inst|Mux5~6_combout\) # ((\row_addr_gen_inst|Mux5~8_combout\) # (\row_addr_gen_inst|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux5~6_combout\,
	datab => \row_addr_gen_inst|Add0~2_combout\,
	datac => \row_addr_gen_inst|Mux5~8_combout\,
	datad => \row_addr_gen_inst|Mux5~9_combout\,
	combout => \row_addr_gen_inst|Add0~4_combout\);

-- Location: LCCOMB_X31_Y27_N2
\row_addr_gen_inst|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~5_combout\ = (\sync_gen_inst|temp_Vcount\(2) & (!\row_addr_gen_inst|Add0~1\)) # (!\sync_gen_inst|temp_Vcount\(2) & ((\row_addr_gen_inst|Add0~1\) # (GND)))
-- \row_addr_gen_inst|Add0~6\ = CARRY((!\row_addr_gen_inst|Add0~1\) # (!\sync_gen_inst|temp_Vcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(2),
	datad => VCC,
	cin => \row_addr_gen_inst|Add0~1\,
	combout => \row_addr_gen_inst|Add0~5_combout\,
	cout => \row_addr_gen_inst|Add0~6\);

-- Location: LCCOMB_X31_Y27_N14
\row_addr_gen_inst|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~7_combout\ = (\row_addr_gen_inst|Mux5~5_combout\ & ((\row_addr_gen_inst|Add0~5_combout\))) # (!\row_addr_gen_inst|Mux5~5_combout\ & (\sync_gen_inst|temp_Vcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(2),
	datac => \row_addr_gen_inst|Mux5~5_combout\,
	datad => \row_addr_gen_inst|Add0~5_combout\,
	combout => \row_addr_gen_inst|Add0~7_combout\);

-- Location: LCCOMB_X32_Y27_N6
\row_addr_gen_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~8_combout\ = (\row_addr_gen_inst|Add0~7_combout\ & ((\row_addr_gen_inst|Mux5~6_combout\) # ((\row_addr_gen_inst|Mux5~8_combout\) # (\row_addr_gen_inst|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Add0~7_combout\,
	datab => \row_addr_gen_inst|Mux5~6_combout\,
	datac => \row_addr_gen_inst|Mux5~8_combout\,
	datad => \row_addr_gen_inst|Mux5~9_combout\,
	combout => \row_addr_gen_inst|Add0~8_combout\);

-- Location: LCCOMB_X31_Y27_N4
\row_addr_gen_inst|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~9_combout\ = (\sync_gen_inst|temp_Vcount\(3) & (\row_addr_gen_inst|Add0~6\ $ (GND))) # (!\sync_gen_inst|temp_Vcount\(3) & (!\row_addr_gen_inst|Add0~6\ & VCC))
-- \row_addr_gen_inst|Add0~10\ = CARRY((\sync_gen_inst|temp_Vcount\(3) & !\row_addr_gen_inst|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(3),
	datad => VCC,
	cin => \row_addr_gen_inst|Add0~6\,
	combout => \row_addr_gen_inst|Add0~9_combout\,
	cout => \row_addr_gen_inst|Add0~10\);

-- Location: LCCOMB_X31_Y27_N24
\row_addr_gen_inst|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~11_combout\ = (\row_addr_gen_inst|Mux5~5_combout\ & ((\row_addr_gen_inst|Add0~9_combout\))) # (!\row_addr_gen_inst|Mux5~5_combout\ & (\sync_gen_inst|temp_Vcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(3),
	datac => \row_addr_gen_inst|Add0~9_combout\,
	datad => \row_addr_gen_inst|Mux5~5_combout\,
	combout => \row_addr_gen_inst|Add0~11_combout\);

-- Location: LCCOMB_X32_Y27_N20
\row_addr_gen_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~12_combout\ = (\row_addr_gen_inst|Add0~11_combout\ & ((\row_addr_gen_inst|Mux5~6_combout\) # ((\row_addr_gen_inst|Mux5~8_combout\) # (\row_addr_gen_inst|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux5~6_combout\,
	datab => \row_addr_gen_inst|Mux5~8_combout\,
	datac => \row_addr_gen_inst|Mux5~9_combout\,
	datad => \row_addr_gen_inst|Add0~11_combout\,
	combout => \row_addr_gen_inst|Add0~12_combout\);

-- Location: LCCOMB_X31_Y27_N30
\row_addr_gen_inst|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~3_combout\ = (\switch[0]~input_o\) # (\switch[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[0]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \row_addr_gen_inst|Add0~3_combout\);

-- Location: LCCOMB_X31_Y27_N6
\row_addr_gen_inst|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~13_combout\ = (\sync_gen_inst|temp_Vcount\(4) & ((\row_addr_gen_inst|Add0~3_combout\ & (!\row_addr_gen_inst|Add0~10\)) # (!\row_addr_gen_inst|Add0~3_combout\ & (\row_addr_gen_inst|Add0~10\ & VCC)))) # 
-- (!\sync_gen_inst|temp_Vcount\(4) & ((\row_addr_gen_inst|Add0~3_combout\ & ((\row_addr_gen_inst|Add0~10\) # (GND))) # (!\row_addr_gen_inst|Add0~3_combout\ & (!\row_addr_gen_inst|Add0~10\))))
-- \row_addr_gen_inst|Add0~14\ = CARRY((\sync_gen_inst|temp_Vcount\(4) & (\row_addr_gen_inst|Add0~3_combout\ & !\row_addr_gen_inst|Add0~10\)) # (!\sync_gen_inst|temp_Vcount\(4) & ((\row_addr_gen_inst|Add0~3_combout\) # (!\row_addr_gen_inst|Add0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(4),
	datab => \row_addr_gen_inst|Add0~3_combout\,
	datad => VCC,
	cin => \row_addr_gen_inst|Add0~10\,
	combout => \row_addr_gen_inst|Add0~13_combout\,
	cout => \row_addr_gen_inst|Add0~14\);

-- Location: LCCOMB_X31_Y27_N18
\row_addr_gen_inst|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~15_combout\ = (\row_addr_gen_inst|Mux5~5_combout\ & ((\row_addr_gen_inst|Add0~13_combout\))) # (!\row_addr_gen_inst|Mux5~5_combout\ & (\sync_gen_inst|temp_Vcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(4),
	datac => \row_addr_gen_inst|Mux5~5_combout\,
	datad => \row_addr_gen_inst|Add0~13_combout\,
	combout => \row_addr_gen_inst|Add0~15_combout\);

-- Location: LCCOMB_X32_Y27_N22
\row_addr_gen_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~16_combout\ = (\row_addr_gen_inst|Add0~15_combout\ & ((\row_addr_gen_inst|Mux5~6_combout\) # ((\row_addr_gen_inst|Mux5~8_combout\) # (\row_addr_gen_inst|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux5~6_combout\,
	datab => \row_addr_gen_inst|Add0~15_combout\,
	datac => \row_addr_gen_inst|Mux5~8_combout\,
	datad => \row_addr_gen_inst|Mux5~9_combout\,
	combout => \row_addr_gen_inst|Add0~16_combout\);

-- Location: LCCOMB_X31_Y27_N8
\row_addr_gen_inst|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~17_combout\ = ((\row_addr_gen_inst|Add0~3_combout\ $ (\sync_gen_inst|temp_Vcount\(5) $ (!\row_addr_gen_inst|Add0~14\)))) # (GND)
-- \row_addr_gen_inst|Add0~18\ = CARRY((\row_addr_gen_inst|Add0~3_combout\ & ((\sync_gen_inst|temp_Vcount\(5)) # (!\row_addr_gen_inst|Add0~14\))) # (!\row_addr_gen_inst|Add0~3_combout\ & (\sync_gen_inst|temp_Vcount\(5) & !\row_addr_gen_inst|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Add0~3_combout\,
	datab => \sync_gen_inst|temp_Vcount\(5),
	datad => VCC,
	cin => \row_addr_gen_inst|Add0~14\,
	combout => \row_addr_gen_inst|Add0~17_combout\,
	cout => \row_addr_gen_inst|Add0~18\);

-- Location: LCCOMB_X31_Y27_N20
\row_addr_gen_inst|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~19_combout\ = (\row_addr_gen_inst|Mux5~5_combout\ & ((\row_addr_gen_inst|Add0~17_combout\))) # (!\row_addr_gen_inst|Mux5~5_combout\ & (\sync_gen_inst|temp_Vcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Vcount\(5),
	datac => \row_addr_gen_inst|Add0~17_combout\,
	datad => \row_addr_gen_inst|Mux5~5_combout\,
	combout => \row_addr_gen_inst|Add0~19_combout\);

-- Location: LCCOMB_X32_Y27_N0
\row_addr_gen_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~20_combout\ = (\row_addr_gen_inst|Add0~19_combout\ & ((\row_addr_gen_inst|Mux5~6_combout\) # ((\row_addr_gen_inst|Mux5~8_combout\) # (\row_addr_gen_inst|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux5~6_combout\,
	datab => \row_addr_gen_inst|Mux5~8_combout\,
	datac => \row_addr_gen_inst|Mux5~9_combout\,
	datad => \row_addr_gen_inst|Add0~19_combout\,
	combout => \row_addr_gen_inst|Add0~20_combout\);

-- Location: LCCOMB_X31_Y27_N10
\row_addr_gen_inst|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~21_combout\ = \row_addr_gen_inst|Add0~3_combout\ $ (\row_addr_gen_inst|Add0~18\ $ (!\sync_gen_inst|temp_Vcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Add0~3_combout\,
	datad => \sync_gen_inst|temp_Vcount\(6),
	cin => \row_addr_gen_inst|Add0~18\,
	combout => \row_addr_gen_inst|Add0~21_combout\);

-- Location: LCCOMB_X32_Y27_N30
\row_addr_gen_inst|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~23_combout\ = (\row_addr_gen_inst|Mux5~5_combout\ & ((\row_addr_gen_inst|Add0~21_combout\))) # (!\row_addr_gen_inst|Mux5~5_combout\ & (\sync_gen_inst|temp_Vcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(6),
	datac => \row_addr_gen_inst|Mux5~5_combout\,
	datad => \row_addr_gen_inst|Add0~21_combout\,
	combout => \row_addr_gen_inst|Add0~23_combout\);

-- Location: LCCOMB_X32_Y27_N4
\row_addr_gen_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_addr_gen_inst|Add0~24_combout\ = (\row_addr_gen_inst|Add0~23_combout\ & ((\row_addr_gen_inst|Mux5~6_combout\) # ((\row_addr_gen_inst|Mux5~8_combout\) # (\row_addr_gen_inst|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_addr_gen_inst|Mux5~6_combout\,
	datab => \row_addr_gen_inst|Mux5~8_combout\,
	datac => \row_addr_gen_inst|Add0~23_combout\,
	datad => \row_addr_gen_inst|Mux5~9_combout\,
	combout => \row_addr_gen_inst|Add0~24_combout\);

-- Location: M9K_X33_Y25_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D41FFFFFFFFFFFFFFFFFECEFFFFFFFF64F57FFFFFFFFFFFFFFFF7B13FFFFFFFD7F9BFFFFFFFFFFFFFFFFBFF3FFFFFFFFAF0FFFFFFFFFFFFFFFFFDF83FFFFFFFDA05FE3FF7F72BC67DBFF1C8FDBCFFFFFBC2071B7B5391F73DA760FFFDA8DAC0FF3353F7AFCBC0F56BDF3FB4DBDD3F93FCFF53F7AFCFF3FE6BDF0C7E9BDEFFA3FA7913F7AFC7C232EBDF0EFE2BDFCBE3FC3A1BA39ABEED7B23FB38BA63FAF913CBB5DB16BA92CA71F55419E1B514F413FF77ECBAE22CDF77F7971FB3F797EBA3FCB7FF38FFD2FF863FCAFFFFFFFFFFA3FF23FF55FFEBFFD9BFE52FFFFFFF6FE3FFFFFFFCFF7BBFE4FFC03FFFFFFFDB91",
	mem_init2 => X"FF97FF97FF85BFF7FFE5FFFFFFFF6FFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFBEFFFFFFFFFFBAFFFFFFFFFFFFFABABFAFAFFAAEBFFEAFAFFFFFFAEAABFEBFEBEFEBFFFFAFFEBFABABFFFFABFAFFEFFEFFFAFFFFEFFFFFBFFEAAAFFABEFFFBFFBFFEBFFFFFAAFFFFFFFFAAFFEBFFFEFFAFFFAAABEAFFFFFFFFFFFFFFFBFFFFBFEFFFFFFFFFFFFFFFFFFFFFFEAFFFFFAFEAFFFFFFFFFFFFFFEEABAAABFFFFFFEFFFFFFFFFFFFFFFFABAAABFFFFFFFFFEFFFFFFFFFFFFFFEAEAFFFFFFFFFFFFFBFFFFFFFFFFFFFFBEAFFFFFFFFFFFFFFBFFFFFFFFFFFFEAABFFFFFFFFFFFFFFFBFFFFFFFFFFFEAEBFFFFFFFFFFFFFFFEFFFFFFFFFFFBAEBFFFFFFFFFFFFF",
	mem_init1 => X"FFFEBFFFFFFFFEAAAAFFFFFFFFFFFFFFFFFEFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFEBFFFAAFFEAAFFFFFFFFFFFFFFFFFFFFEBFFFEAAAFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFAAFFFFFFFFFFFFFFFFFFFFFFFBFFFFFEAFFFFFFFFFFFFFFFFFFFFFFFFBFAFAAABFFFFFFFFFFFFFFFFFFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBEAFFFFFFFFFFFFFFFFFFFFFFFFFFEAFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFAEBFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFBFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DDCEF0703ACEFA7BF0F3DFFFD07EE3F94F90A3010E4E426BB1F48EFFC03E01BD37B4E4F2D14E5F4DD0F97EFFC06800BC2F1BF9F2D44D7FC7D0797EFFC040006FD683F9F1FAC8BF03D0387EFFD071B81F840BE8F2CA8D3FCBD0B97EFF7062B01FA0F4E4E1F64E3F6BC0D97EFC0062B01FF7076B88E91EB94F9786FEFC0062B01FEFD65659B856D1FF9A956EFBD062B01FFF4AC3F2961269F789349E8CC052B01FF5F3F7F3AA11A15758CDBE92E030342FF77B9A155EB590764BFDBEA00050BC0FEAFFA97224E08D2E12551FCFFF0F73CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:\Digital_Design\lab-5-PETERFEE\src\part3\brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_7iu3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y23_N8
\red~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red~0_combout\ = (\process_0~8_combout\ & \rom_inst|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datad => \rom_inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \red~0_combout\);

-- Location: LCCOMB_X29_Y23_N6
\red~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red~1_combout\ = (\process_0~8_combout\ & \rom_inst|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datac => \rom_inst|altsyncram_component|auto_generated|q_a\(9),
	combout => \red~1_combout\);

-- Location: M9K_X33_Y28_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFA6FFFFFFFFAAA4FFFFFFFFFFFFFFFFFDA8BFFFFFFFA7FCBFFFFFFFFFFFFFFFF6FD7FFFFFFFE3FEFFFFFFFFFFFFFFFFF2FEFFFFFFFFF052ABEAAEAEAFABEBEAA411ABEBAAAAFEB88BC61E194650C3D24FA843D22A47FFEACFCB2F2FF2FC97E38FEAD7E2FFCBFE61CFCB2F2FF5FD57E39F64D7E3FFCBFCF8CFCB2F2EB5ED57E39D7C97E3FFCBF8F8CBCB2F11A068D7D38D7C97D3DBCBF466D1870119AA6AE1938529E193D68BFFEFFBEFBFFFBFEFFEFFFFEFFEFFEFCBFFABFFEBFFFBFFEEFFFABFFFFFFFFFCBFF9BFF7DFFF7FFE6FFEB7FFFFFFFBFCBFF57FF6AFFE6FFF7FFFFBFFFFFFF5A87",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFBFAFEFEFBBEAFEAFFEBFFFFFFFAFF83E2950D28747592842F83FFFD07801FD2E53F1D3D3893F47E3FC7FFFD070007F0487F1D3F1887F8BE3EC7FFFF0F0B43F0D8BF1D3F4487FCBE3C47FFFF0E0F83F86C7F1D3E3887F8BE3EC7FFE90E0FC3FC3C3F1D3C3892F4FE3BC7FFD00E0FC3FD7F45092E147457FD1542FFE50E0FC3FFEBFFFFFFFFFFFFFFFFFFFFFF0E0FC3FFDA7FBDF7AE9E7DF7AEE7FD3F0E0FC3FFD5BE7DF75F5E7DB797B6FC00040B41FF9EFE6DB79A5E7A77A2B6FC00000701FFBFFFFEFFFFFFBFBFFFFFFFAAAFAFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:\Digital_Design\lab-5-PETERFEE\src\part3\brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_7iu3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y23_N16
\red~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red~2_combout\ = (\process_0~8_combout\ & \rom_inst|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datad => \rom_inst|altsyncram_component|auto_generated|q_a\(10),
	combout => \red~2_combout\);

-- Location: LCCOMB_X29_Y23_N18
\red~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red~3_combout\ = (\rom_inst|altsyncram_component|auto_generated|q_a\(11) & \process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \process_0~8_combout\,
	combout => \red~3_combout\);

-- Location: M9K_X33_Y27_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE95FFFFFFFFFFFFFFFFFF17FFFFFFFFBD0C7FFFFFFFFFFFFFFFF9C87FFFFFFF2FF8FFFFFFFFFFFFFFFFF3FDBFFFFFFFC6F1FFFFFFFFFFFFFFFFFBFD7FFFFFFFE4A2024008087F1E41800CA701803000F808BB4008390E426A80D5C16A82BF79FF4487DB7F6BCDF483E76F8DF3EA7F87FD4587DB7F6FFCFCC3E76DC5B3E6FFDBF97C07DB7FA41C4403E76C7D83E7DFDBF07C4F8B6A5434CE0BD76A3DCBD7DD4BC20EF58E60781FCAC3B143B7C3B0DE4BFF4BF08B262D2F47F4975F87F497FBDBFDCBFF4DFFE6FFE77FDF3FFFFFFFFFDBFF47FFE7FFE3FFE2FFFAAFFFFFFFAFD7FF57FF01FF80BFEDFFD07FFFFFFF7CC9",
	mem_init2 => X"FF97FFD7FF95BFF7FFE5FFFFFFFF7001FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFF57AFF7DBFFB96FFFE93BFFFFFEBFA6FF37BDBEAEBFB8BFFF93AFFFFFFF05533F81F66DBF6FEFE4FFC3F53AC5BFE31F6FFA7F17FFEFFFF5BF9FF0013A61AE05EFFEAFD6FF9E91FC6E6FFFFFFF900BFB3FFF7BF0FFED4668F06FFFFFFFFFFFFA3FFFEEFE1BFDAFBAFFFFFFFFFFFFFE72FFFFF7FD17FFFFFFFFFFFFA2AC38F02FFFFFF5FEBFFFFFFFFFFFF86CBC316FFFFFFFF1BFFFFFFFFFFFFFAB4F1BEFFFFFFFFFF8FFFFFFFFFFFFF496ABFFFFFFFFFFFFE6FFFFFFFFFFFFCAA8BFFFFFFFFFFFFFD7FFFFFFFFFFFCE65FFFFFFFFFFFFFFFCBFFFFFFFFFD5208BFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFDB3ACBFFFFFFFFFFFFFFFFF3FFFFFFFFE51FFFFFFFFFFFFFFFFFFFD7FFF41BFD332FFFFFFFFFFFFFFFFFFFE3FFF95FC6AFFFFFFFFFFFFFFFFFFFFFD7FFFFF901FFFFFFFFFFFFFFFFFFFFFFE3FFAAE50BFFFFFFFFFFFFFFFFFFFFFFF3FE5BF06BFFFFFFFFFFFFFFFFFFFFFFF6F50ABFFFFFFFFFFFFFFFFFFFFFFFFFFBFE213FFFFFFFFFFFFFFFFFFFFFFFFFFE2FF5F3FFFFFFFFFFFFFFFFFFFFFFFFFE8BFFBCFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F393FFFFFFFFFFFFFFFFFFFFFFFFFFE37DE1FFFFFFFFFFFFFFFFFFFFFFFFFFFE0B883FFFFFFFFFFFFFFFFFFFFFFFFFFFE2EBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3D5FFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFBFBFFFFFFFFFFFFFFFFFFF56D1E45855E17CFB815F56EFFD57E07F15CBB57778B06387373FD9BFFF0F604BC0865F8D6C5C56F1AF1F937FFC038007D27D7F8E6E8C13F0FF18A37FFD150906FE90FF8E6F6517F4BF16537FFD182B06FC247F8D6EAC13F0FF19937FCE182F46FA1F5E7D2F7C51F2BE12937FFC182F46FE3531BCAF826741F8572DBFE3182F46FFC2AAAAABDABE6FFAAAAB7FFD182F46FFEE7DBE76F79B6DB5F4A67C9D1B2B46FF8ABC3D7255CFE8F13924BE2E0E0B01FFD9BF44E2100BDC210C14BE000507C3FEEFFE95669F5926666AA6ED00050B41FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:\Digital_Design\lab-5-PETERFEE\src\part3\brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_7iu3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y23_N4
\green~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green~0_combout\ = (\process_0~8_combout\ & \rom_inst|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datad => \rom_inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \green~0_combout\);

-- Location: LCCOMB_X29_Y23_N2
\green~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green~1_combout\ = (\process_0~8_combout\ & \rom_inst|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datad => \rom_inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \green~1_combout\);

-- Location: M9K_X33_Y24_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFFFFFFFFFFFFFFFFFFEAFFFFFFFFAAF5FFFFFFFFFFFFFFFFFEB9BFFFFFFFE7FDBFFFFFFFFFFFFFFFFAFE7FFFFFFFF7FEFFFFFFFFFFFFFFFFF6FEFFFFFFFFF556FFFFFFFFAFEBFFFFF555FFFFEFFFFFF98BDB6F5A96A5D7E75FBD97E66A87FFFBDFDB6F6FF2FDABE79FFADBE6FFDBFEB6DFDB6F6FF6FE6BE79F79DBE7FFDBFDF9DFDB6F6FF6FEABE79EBDABE7FFDBFDF9DBDB6F66E579E7E79DBDA7E7EBDBF9B6D697565AEA7AF5979969F597E69BFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDBFFBBFFFBFFFBFFEEFFFAFFFFFFFFFFDBFFABFF7DFFFBFFEAFFEB7FFFFFFFBFDBFFABFFBEFFFBFFF7FFFFBFFFFFFF9B97",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEFFFFFFFFFFFFFEFEBFAFAFFEBEBFFFEFAFFFFFFFFFEFFFFFEBFFEBFFFFBFFFFFAEABFFFFEFFFFFEFFEFFFAFFFFEFFFFFFFFEAAFFFFFFFFFBFFBFFEBFFFFAAAFFFFFFFFFFFFEFFFFEFFFFFFAAAFFAFFFFFFFFFFFFFFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFEFFFFFFEFEAFFFFFFFFFFFFFFEABFFAFFFFFFFFEFFFFFFFFFFFFFFFFABABEFFFFFFFFFFEFFFFFFFFFFFFFFEAFAFFFFFFFFFFFFFBFFFFFFFFFFFFFFBEAFFFFFFFFFFFFFFBFFFFFFFFFFFFFAABFFFFFFFFFFFFFFFBFFFFFFFFFFFFAEBFFFFFFFFFFFFFFFFBFFFFFFFFFFFEFBFFFFFFFFFFFFF",
	mem_init1 => X"FFFEBFFFFFFFFFEEABFFFFFFFFFFFFFFFFFEFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFEFFFFFFFFFEEFFFFFFFFFFFFFFFFFFFFEFFFFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEAEFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFFFFFFFFFFFFFFD7F69A5D69B9B9A6D96F97EFFD57D56FE7FA7F6E7E79E7F9BE7FDBEFFE5B555BF599BF6E7F69DBFDBE7FDBEFFF5F5B97F5EDBF6E7F99DBFDBE7D9BEFFF5F5FD7F9ADBF6E7E79DBFDBE7FDBEFFA5F5FD7FD7D7F5E7D79E7F9FE7FDBEFD15F5FD7FEBF9A5A6E69B9ABFE6997EFE95F5FD7FFFFFFFFFFFFFFFFFFFFFFEFFF5F5FD7FFEABFBEFBAEAEBEFBAFEBEE7F5E5FD7FFEABFBEFBAF6E7EBBDBFBED55555B96FFAFFEBEBBEFAE7BBBF7FBED55555B55FFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:\Digital_Design\lab-5-PETERFEE\src\part3\brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_7iu3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y23_N24
\green~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green~2_combout\ = (\process_0~8_combout\ & \rom_inst|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datad => \rom_inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \green~2_combout\);

-- Location: LCCOMB_X29_Y23_N22
\green~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green~3_combout\ = (\rom_inst|altsyncram_component|auto_generated|q_a\(7) & \process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \process_0~8_combout\,
	combout => \green~3_combout\);

-- Location: M9K_X33_Y26_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE32FFFFFFFFFFFFFFFFFF7DFFFFFFFF0359BFFFFFFFFFFFFFFFFB113FFFFFFF4BFD7FFFFFFFFFFFFFFFFDFFBFFFFFFFD6F7FFFFFFFFFFFFFFFFF8FFBFFFFFFFE5A4575559591F43969559A656955555F951035D396FD8F66AB59A55EAA485C9FF9D9BE35F8BD0F93FC72F90FFC4BFD3FCD79BD35F8FFBFFBFC72E9DBFC6FFD3F9B59BD35F895B57FFC72FFD3FC7DFD3F5B597D34B4755957BF72AFD3BF7F253DED8E71A67627590D2251E4ED221F813FF9BF5DF776E6F9BF9ABAF97F9ABCBD3FD13FF51FFEEFFC8BFD07FFFFFFFFFD3FF3FFFAAFFFBFFCCFFD2BFFFFFFF2FD3FFFFFFD7FF9DBFE9FFD5FFFFFFFFE55A",
	mem_init2 => X"FFABFFEBFF9ABFFBFFEAFFFFFFFF9555FFFFFFFFFFFFFFFFFEB2FFFFFFFFFFFFEF25FEEC7FFA71FFFDB46FFFFFD7E41FFAB0FB2097F7A2FFF789FFFFFFE5CF7BF23F10F7ACFEBD1FFEAF37ADF6FDBBFCFF5FF43FFDFFFF07FBBE1ABBA161EAF9FFC4FF2FF8E7AFC9AEFFFFFFFB557FBBFFF37F1FFE021E9E5EFFFFFFFFFFFF5BFFFD2F967FC1BAAFFFFFFFFAFFFF9C5FFFFFFF883FFFFFFFFFFFF6951A1055FFFFFFBBC6FFFFFFFFFFFE1D861B71BFFFFFFF77FFFFFFFFFFFFF6A8FB7ABFFFFFFFFF9FFFFFFFFFFFFFEAA63FFFFFFFFFFFFD2FFFFFFFFFFFFD2557FFFFFFFFFFFFFC2FFFFFFFFFFFD2EEFFFFFFFFFFFFFFFCBFFFFFFFFFC85557FFFFFFFFFFFF",
	mem_init1 => X"FFFF3FFFFFFFF8371E7FFFFFFFFFFFFFFFFE7FFFFFFFFD03EFFFFFFFFFFFFFFFFFFCBFFF2BBFC779FFFFFFFFFFFFFFFFFFFD7FFFBEF1D5FFFFFFFFFFFFFFFFFFFFFEBFFFFF654FFFFFFFFFFFFFFFFFFFFFFE7FFAA9AABFFFFFFFFFFFFFFFFFFFFFFF2E1F8068BFFFFFFFFFFFFFFFFFFFFFFFCEC542FFFFFFFFFFFFFFFFFFFFFFFFFF0FD544FFFFFFFFFFFFFFFFFFFFFFFFFF91FE8B3FFFFFFFFFFFFFFFFFFFFFFFFFC83FFA1FFFFFFFFFFFFFFFFFFFFFFFFFF73EE4BBFFFFFFFFFFFFFFFFFFFFFFFFFF97FFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFD5B16BFFFFFFFFFFFFFFFFFFFFFFFFFFFC5D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFF87C3FFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFEBE7FFFFFFFFFFFFFFFFFFF96E6F55995F6BD0B95AF56EFFEABF5BF55D42F6A403CEE356E0F1A6FFE5B607FF69C6F7C6F64B6FD2C2FDF1FFF1B854FE6E1FFBC6E655FF43C29DF1FFE5912C6F9B43FBC6FE15FF83D29DF1FFE591B56F5C8FFBC6C755FF47C299F1FD0592F96FD6E6F6C6E74B6FEBC26DF1FE0592F96FCF6EFA64D69FEFEFB7EEA5FCF592F96FFD6BAAAAFEABE6FFEEAAB5FFE592F96FFC4FD3FBE1439EFBE158F5EAE592F86FFB03DFFBEFABDAB3E626D5D2A5A53D3FF39FCD72A75F9A1BE596D6E41554F92FF7FFEAAA7AFAE6AAAAAAAAE555A5B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:\Digital_Design\lab-5-PETERFEE\src\part3\brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_7iu3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y23_N20
\blue~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue~0_combout\ = (\rom_inst|altsyncram_component|auto_generated|q_a\(0) & \process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_inst|altsyncram_component|auto_generated|q_a\(0),
	datad => \process_0~8_combout\,
	combout => \blue~0_combout\);

-- Location: LCCOMB_X29_Y23_N10
\blue~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue~1_combout\ = (\process_0~8_combout\ & \rom_inst|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datac => \rom_inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \blue~1_combout\);

-- Location: M9K_X33_Y29_N0
\rom_inst|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFEFAFFFFFFFFFFFFFFFFFEFEFFFFFFFFFBFEFFFFFFFFFFFFFFFFFBFEBFFFFFFFFBFEFFFFFFFFFFFFFFFFFBFEFFFFFFFFFAABFFFFFFFFFFFFFFFFFAAAFFFFFFFFFFFEEFEBAFAAABAAEBEBAFFEABEBBFABFFFBEFEFBFBFFBFEEBFBEFFFEBFBFFEFFFBAEFEFBFBFFAFEABFBEFBAEBFBFFEFFEFEEFEFBFBFFAFEABFBEEBEEBFBFFEFFEFEEFEFBFBAFABEEBEBEEBEEBEBEFEFFABBEAEBAAAEEFBFFAEBEABAFAEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFEFFFEBFFBEFFFBFFFBFFFFBFFFFFFFFFEFFFABFFBEFFFBFFFBFFFFBFFFFFFFAFEB",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFBFFFFFEFFFFF6AFFFFFFFFFFFFF9BE6F9F5FFD6D7FFEAF5FFFFFFABA9BFEAFD7EFD3FFFF6FFEBF4956AFFF9AFBFFDBF9FFF5FFFFDFFEFFAAA955AFFAAFFFF7FE7FFD7EAFE151FFFFFFFEAAFFDBFFFDFFAFFF945BE5ABFFFFFFFFFFFFFBFFFFBFDAFFFFFFFFFFFFFFFFFFFFFABFFFFF9FD1FFFFFFFFFFFFFF95ABEAABFFFFFF8FFFFFFFFFFFFFFFE165A9AFFFFFFFFF8FFFFFFFFFFFFFFD5A5AFFFFFFFFFFFF6FFFFFFFFFFFFFA695FFFFFFFFFFFFFF7FFFFFFFFFFFFE556FFFFFFFFFFFFFFF7FFFFFFFFFFFE992FFFFFFFFFFFFFFFE7FFFFFFFFFFB9A6FFFFFFFFFFFFF",
	mem_init1 => X"FFFDBFFFFFFFFFD956FFFFFFFFFFFFFFFFFDBFFFFFFFFFF87FFFFFFFFFFFFFFFFFFDBFFFEAFFF99BFFFFFFFFFFFFFFFFFFFDBFFFEA5ABFFFFFFFFFFFFFFFFFFFFFFEBFFFFFEABFFFFFFFFFFFFFFFFFFFFFFFBFFFFFAAFFFFFFFFFFFFFFFFFFFFFFFFBF906AABFFFFFFFFFFFFFFFFFFFFFFFFBF907FFFFFFFFFFFFFFFFFFFFFFFFFFFEFF91AFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFBDBFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFE9BFAEBFFFFFFFFFFFFFFFFFFFFFFFFFFF9BE7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF6FFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFBEAAEBEFABAEBEABFEBEFFEABEAAFEBFBBFAFBEBEEBFAFFBFEBEFFEABAAABFAAEBFAFBFAEEBFEFFBFEBEFFFAFAFABFAEEFFAFBFAEEBFEFFBEABEFFFAFAFEBFEBEBFAFBFBEEBFEFFBFEBEFFFAFAFEBFEBEBFAFBEBEEBFAFFBFEBEFEAAFAFEBFFBFAAAEBFAABAABFEAAABEFFAAFAFEBFFFFFFFFFFFFFFFFFFFFFFEFFFAFAFEBFFFFBFFEFBFFEFBEFBFFFBEEBFAFAFEBFFEFFFBEFBAFAFBEFBEFFBEEAAAAAFAAFFEFFFBEFBEFAFBFBBFBFBEEAAAAABAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "E:\Digital_Design\lab-5-PETERFEE\src\part3\brom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom:rom_inst|altsyncram:altsyncram_component|altsyncram_7iu3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y26_N28
\blue~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue~2_combout\ = (\process_0~8_combout\ & \rom_inst|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~8_combout\,
	datac => \rom_inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \blue~2_combout\);

-- Location: LCCOMB_X29_Y26_N22
\blue~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue~3_combout\ = (\process_0~8_combout\ & \rom_inst|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~8_combout\,
	datad => \rom_inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \blue~3_combout\);

-- Location: LCCOMB_X34_Y28_N12
\sync_gen_inst|Horiz_Sync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Horiz_Sync~0_combout\ = (\sync_gen_inst|temp_Hcount\(9) & (!\sync_gen_inst|temp_Hcount\(8) & \sync_gen_inst|temp_Hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(9),
	datab => \sync_gen_inst|temp_Hcount\(8),
	datac => \sync_gen_inst|temp_Hcount\(7),
	combout => \sync_gen_inst|Horiz_Sync~0_combout\);

-- Location: LCCOMB_X36_Y28_N26
\sync_gen_inst|Horiz_Sync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Horiz_Sync~1_combout\ = (\sync_gen_inst|temp_Hcount\(2)) # ((\sync_gen_inst|temp_Hcount\(0) & (!\sync_gen_inst|temp_Hcount\(5) & \sync_gen_inst|temp_Hcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Hcount\(0),
	datab => \sync_gen_inst|temp_Hcount\(5),
	datac => \sync_gen_inst|temp_Hcount\(1),
	datad => \sync_gen_inst|temp_Hcount\(2),
	combout => \sync_gen_inst|Horiz_Sync~1_combout\);

-- Location: LCCOMB_X35_Y28_N24
\sync_gen_inst|Horiz_Sync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Horiz_Sync~2_combout\ = (\sync_gen_inst|temp_Hcount\(4) & ((\sync_gen_inst|temp_Hcount\(3)) # (\sync_gen_inst|Horiz_Sync~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen_inst|temp_Hcount\(4),
	datac => \sync_gen_inst|temp_Hcount\(3),
	datad => \sync_gen_inst|Horiz_Sync~1_combout\,
	combout => \sync_gen_inst|Horiz_Sync~2_combout\);

-- Location: LCCOMB_X34_Y28_N18
\sync_gen_inst|Horiz_Sync~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Horiz_Sync~3_combout\ = ((\sync_gen_inst|temp_Hcount\(6) & (\sync_gen_inst|temp_Hcount\(5) & \sync_gen_inst|Horiz_Sync~2_combout\)) # (!\sync_gen_inst|temp_Hcount\(6) & (!\sync_gen_inst|temp_Hcount\(5) & 
-- !\sync_gen_inst|Horiz_Sync~2_combout\))) # (!\sync_gen_inst|Horiz_Sync~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|Horiz_Sync~0_combout\,
	datab => \sync_gen_inst|temp_Hcount\(6),
	datac => \sync_gen_inst|temp_Hcount\(5),
	datad => \sync_gen_inst|Horiz_Sync~2_combout\,
	combout => \sync_gen_inst|Horiz_Sync~3_combout\);

-- Location: LCCOMB_X34_Y27_N2
\sync_gen_inst|Vert_Sync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Vert_Sync~1_combout\ = (((!\sync_gen_inst|temp_Vcount\(1) & !\sync_gen_inst|temp_Vcount\(0))) # (!\sync_gen_inst|temp_Vcount\(3))) # (!\sync_gen_inst|temp_Vcount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|temp_Vcount\(2),
	datab => \sync_gen_inst|temp_Vcount\(1),
	datac => \sync_gen_inst|temp_Vcount\(3),
	datad => \sync_gen_inst|temp_Vcount\(0),
	combout => \sync_gen_inst|Vert_Sync~1_combout\);

-- Location: LCCOMB_X34_Y27_N24
\sync_gen_inst|Vert_Sync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Vert_Sync~0_combout\ = ((\sync_gen_inst|temp_Vcount\(5) & ((\sync_gen_inst|temp_Vcount\(4)) # (\row_addr_gen_inst|process_0~0_combout\)))) # (!\sync_gen_inst|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|LessThan5~0_combout\,
	datab => \sync_gen_inst|temp_Vcount\(5),
	datac => \sync_gen_inst|temp_Vcount\(4),
	datad => \row_addr_gen_inst|process_0~0_combout\,
	combout => \sync_gen_inst|Vert_Sync~0_combout\);

-- Location: LCCOMB_X34_Y27_N16
\sync_gen_inst|Vert_Sync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sync_gen_inst|Vert_Sync~2_combout\ = (\sync_gen_inst|Vert_Sync~1_combout\) # ((\sync_gen_inst|Vert_Sync~0_combout\) # (\sync_gen_inst|temp_Vcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen_inst|Vert_Sync~1_combout\,
	datab => \sync_gen_inst|Vert_Sync~0_combout\,
	datac => \sync_gen_inst|temp_Vcount\(9),
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


