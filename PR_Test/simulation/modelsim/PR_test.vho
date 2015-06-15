-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "06/15/2015 22:34:55"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PR_test_top IS
    PORT (
	PR1_button : IN std_logic;
	dir_switch_1 : IN std_logic;
	dir_switch_2 : IN std_logic;
	system_clock : IN std_logic;
	PR_reset_button : IN std_logic;
	PR_done_led : OUT std_logic;
	PR_error_led : OUT std_logic;
	LED : OUT std_logic_vector(3 DOWNTO 0);
	disp_hex0 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex1 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex2 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex3 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex4 : OUT std_logic_vector(6 DOWNTO 0);
	disp_hex5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END PR_test_top;

-- Design Ports Information
-- PR_done_led	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PR_error_led	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_hex5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PR_reset_button	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PR1_button	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_switch_1	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- system_clock	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_switch_2	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PR_test_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PR1_button : std_logic;
SIGNAL ww_dir_switch_1 : std_logic;
SIGNAL ww_dir_switch_2 : std_logic;
SIGNAL ww_system_clock : std_logic;
SIGNAL ww_PR_reset_button : std_logic;
SIGNAL ww_PR_done_led : std_logic;
SIGNAL ww_PR_error_led : std_logic;
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \PR_reset_button~input_o\ : std_logic;
SIGNAL \PR1_button~input_o\ : std_logic;
SIGNAL \dir_switch_1~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \system_clock~input_o\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~feeder_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~feeder_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~feeder_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~feeder_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~feeder_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~feeder_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~2\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|rtl~4_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|leds[0]~PR_OPORT_combout\ : std_logic;
SIGNAL \dir_switch_2~input_o\ : std_logic;
SIGNAL \freeze_region_inst|dir_sync~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|dir~PR_IPORT_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|rtl~5_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|leds[1]~PR_OPORT_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|leds[2]~PR_OPORT_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|leds[3]~PR_OPORT_combout\ : std_logic;
SIGNAL \ticker_inst|Add0~105_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~106\ : std_logic;
SIGNAL \ticker_inst|Add0~61_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~62\ : std_logic;
SIGNAL \ticker_inst|Add0~65_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~66\ : std_logic;
SIGNAL \ticker_inst|Add0~69_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~70\ : std_logic;
SIGNAL \ticker_inst|Add0~77_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~78\ : std_logic;
SIGNAL \ticker_inst|Add0~73_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~74\ : std_logic;
SIGNAL \ticker_inst|Add0~45_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~46\ : std_logic;
SIGNAL \ticker_inst|Add0~53_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~54\ : std_logic;
SIGNAL \ticker_inst|Add0~57_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~58\ : std_logic;
SIGNAL \ticker_inst|Add0~49_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~50\ : std_logic;
SIGNAL \ticker_inst|Add0~81_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~82\ : std_logic;
SIGNAL \ticker_inst|Add0~85_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~86\ : std_logic;
SIGNAL \ticker_inst|Add0~89_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~90\ : std_logic;
SIGNAL \ticker_inst|Add0~93_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~94\ : std_logic;
SIGNAL \ticker_inst|Add0~33_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~34\ : std_logic;
SIGNAL \ticker_inst|Add0~37_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~38\ : std_logic;
SIGNAL \ticker_inst|Add0~41_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~42\ : std_logic;
SIGNAL \ticker_inst|Add0~97_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~98\ : std_logic;
SIGNAL \ticker_inst|Add0~29_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~30\ : std_logic;
SIGNAL \ticker_inst|Add0~17_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~18\ : std_logic;
SIGNAL \ticker_inst|Add0~25_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~26\ : std_logic;
SIGNAL \ticker_inst|Add0~21_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~22\ : std_logic;
SIGNAL \ticker_inst|Add0~13_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~14\ : std_logic;
SIGNAL \ticker_inst|Add0~5_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~6\ : std_logic;
SIGNAL \ticker_inst|Add0~9_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~10\ : std_logic;
SIGNAL \ticker_inst|Add0~110\ : std_logic;
SIGNAL \ticker_inst|Add0~101_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~102\ : std_logic;
SIGNAL \ticker_inst|Add0~1_sumout\ : std_logic;
SIGNAL \ticker_inst|Add0~2\ : std_logic;
SIGNAL \ticker_inst|Add0~113_sumout\ : std_logic;
SIGNAL \ticker_inst|process_0~21_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~6_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~35_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~15_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~17_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~6_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~34_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~3_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~32_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~6_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~33_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~9_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~10_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~4_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~0_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~31_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0[3]~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~3_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~18_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~0_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~7_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~2_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~1_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~25_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~1_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~26_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~8_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~27_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~8_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~23_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~24_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~6_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~28_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~3_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~29_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~30_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0[3]~3_combout\ : std_logic;
SIGNAL \ticker_inst|count[3]~0_combout\ : std_logic;
SIGNAL \ticker_inst|Add0~109_sumout\ : std_logic;
SIGNAL \ticker_inst|process_0~12_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~13_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~11_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan5~1_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~14_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~16_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan11~0_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~19_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan4~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan3~2_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~20_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~22_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~3_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan7~2_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan9~0_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~2_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~3_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~8_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~2_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0[3]~5_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~37_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~36_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~7_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~5_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~6_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan10~8_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~38_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~40_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~39_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~41_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~7_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~8_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~9_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0~10_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~9_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~10_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~0_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~1_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~2_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan2~4_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~3_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~4_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~5_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~0_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~1_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~2_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~3_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~4_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan1~11_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~11_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~10_combout\ : std_logic;
SIGNAL \ticker_inst|LessThan0~12_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex3~0_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex2~5_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex3~1_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex4~0_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex4[3]~feeder_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex4~1_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex1~6_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex4~2_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex5~0_combout\ : std_logic;
SIGNAL \ticker_inst|process_0~42_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex0[3]~11_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex5~1_combout\ : std_logic;
SIGNAL \ticker_inst|disp_hex3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex4\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ticker_inst|count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|disp_hex2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ticker_inst|ALT_INV_LessThan7~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \freeze_region_inst|ALT_INV_dir_sync~q\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ticker_inst|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|ALT_INV_dir~PR_IPORT_combout\ : std_logic;
SIGNAL \ALT_INV_system_clock~input_o\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_leds\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[0]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[1]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[2]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[3]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[4]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[5]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[15]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[8]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[9]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[6]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[19]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[20]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[21]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[22]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\ : std_logic;
SIGNAL \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0[3]~11_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~42_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex1~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex2~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex1~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex1~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0~9_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~41_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~40_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~8_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~39_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~38_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~37_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~36_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0[3]~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~35_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~34_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~33_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~32_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~31_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0[3]~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~30_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~29_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~28_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~27_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~26_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~25_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~24_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~8_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan7~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~23_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~22_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~21_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~20_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~19_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~18_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~17_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_disp_hex0~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~16_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~15_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~14_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~13_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~12_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~11_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~10_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ticker_inst|ALT_INV_process_0~5_combout\ : std_logic;

BEGIN

ww_PR1_button <= PR1_button;
ww_dir_switch_1 <= dir_switch_1;
ww_dir_switch_2 <= dir_switch_2;
ww_system_clock <= system_clock;
ww_PR_reset_button <= PR_reset_button;
PR_done_led <= ww_PR_done_led;
PR_error_led <= ww_PR_error_led;
LED <= ww_LED;
disp_hex0 <= ww_disp_hex0;
disp_hex1 <= ww_disp_hex1;
disp_hex2 <= ww_disp_hex2;
disp_hex3 <= ww_disp_hex3;
disp_hex4 <= ww_disp_hex4;
disp_hex5 <= ww_disp_hex5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ticker_inst|ALT_INV_LessThan7~3_combout\ <= NOT \ticker_inst|LessThan7~3_combout\;
\ticker_inst|ALT_INV_LessThan7~2_combout\ <= NOT \ticker_inst|LessThan7~2_combout\;
\ticker_inst|ALT_INV_LessThan7~1_combout\ <= NOT \ticker_inst|LessThan7~1_combout\;
\ticker_inst|ALT_INV_LessThan7~0_combout\ <= NOT \ticker_inst|LessThan7~0_combout\;
\ticker_inst|ALT_INV_process_0~4_combout\ <= NOT \ticker_inst|process_0~4_combout\;
\ticker_inst|ALT_INV_process_0~3_combout\ <= NOT \ticker_inst|process_0~3_combout\;
\ticker_inst|ALT_INV_LessThan9~1_combout\ <= NOT \ticker_inst|LessThan9~1_combout\;
\ticker_inst|ALT_INV_process_0~2_combout\ <= NOT \ticker_inst|process_0~2_combout\;
\ticker_inst|ALT_INV_LessThan9~0_combout\ <= NOT \ticker_inst|LessThan9~0_combout\;
\ticker_inst|ALT_INV_process_0~1_combout\ <= NOT \ticker_inst|process_0~1_combout\;
\ticker_inst|ALT_INV_process_0~0_combout\ <= NOT \ticker_inst|process_0~0_combout\;
\freeze_region_inst|ALT_INV_dir_sync~q\ <= NOT \freeze_region_inst|dir_sync~q\;
\ticker_inst|ALT_INV_count\(28) <= NOT \ticker_inst|count\(28);
\ticker_inst|ALT_INV_count\(25) <= NOT \ticker_inst|count\(25);
\ticker_inst|ALT_INV_count\(0) <= NOT \ticker_inst|count\(0);
\ticker_inst|ALT_INV_count\(26) <= NOT \ticker_inst|count\(26);
\ticker_inst|ALT_INV_count\(17) <= NOT \ticker_inst|count\(17);
\ticker_inst|ALT_INV_count\(13) <= NOT \ticker_inst|count\(13);
\ticker_inst|ALT_INV_count\(12) <= NOT \ticker_inst|count\(12);
\ticker_inst|ALT_INV_count\(11) <= NOT \ticker_inst|count\(11);
\ticker_inst|ALT_INV_count\(10) <= NOT \ticker_inst|count\(10);
\ticker_inst|ALT_INV_count\(4) <= NOT \ticker_inst|count\(4);
\ticker_inst|ALT_INV_count\(5) <= NOT \ticker_inst|count\(5);
\ticker_inst|ALT_INV_count\(3) <= NOT \ticker_inst|count\(3);
\ticker_inst|ALT_INV_count\(2) <= NOT \ticker_inst|count\(2);
\ticker_inst|ALT_INV_count\(1) <= NOT \ticker_inst|count\(1);
\ticker_inst|ALT_INV_count\(8) <= NOT \ticker_inst|count\(8);
\ticker_inst|ALT_INV_count\(7) <= NOT \ticker_inst|count\(7);
\ticker_inst|ALT_INV_count\(9) <= NOT \ticker_inst|count\(9);
\ticker_inst|ALT_INV_count\(6) <= NOT \ticker_inst|count\(6);
\ticker_inst|ALT_INV_count\(16) <= NOT \ticker_inst|count\(16);
\ticker_inst|ALT_INV_count\(15) <= NOT \ticker_inst|count\(15);
\ticker_inst|ALT_INV_count\(14) <= NOT \ticker_inst|count\(14);
\ticker_inst|ALT_INV_count\(18) <= NOT \ticker_inst|count\(18);
\ticker_inst|ALT_INV_count\(20) <= NOT \ticker_inst|count\(20);
\ticker_inst|ALT_INV_count\(21) <= NOT \ticker_inst|count\(21);
\ticker_inst|ALT_INV_count\(19) <= NOT \ticker_inst|count\(19);
\ticker_inst|ALT_INV_count\(22) <= NOT \ticker_inst|count\(22);
\ticker_inst|ALT_INV_count\(24) <= NOT \ticker_inst|count\(24);
\ticker_inst|ALT_INV_count\(23) <= NOT \ticker_inst|count\(23);
\ticker_inst|ALT_INV_count\(27) <= NOT \ticker_inst|count\(27);
\ticker_inst|ALT_INV_Add0~113_sumout\ <= NOT \ticker_inst|Add0~113_sumout\;
\ticker_inst|ALT_INV_Add0~109_sumout\ <= NOT \ticker_inst|Add0~109_sumout\;
\ticker_inst|ALT_INV_Add0~105_sumout\ <= NOT \ticker_inst|Add0~105_sumout\;
\ticker_inst|ALT_INV_Add0~101_sumout\ <= NOT \ticker_inst|Add0~101_sumout\;
\ticker_inst|ALT_INV_Add0~97_sumout\ <= NOT \ticker_inst|Add0~97_sumout\;
\ticker_inst|ALT_INV_Add0~93_sumout\ <= NOT \ticker_inst|Add0~93_sumout\;
\ticker_inst|ALT_INV_Add0~89_sumout\ <= NOT \ticker_inst|Add0~89_sumout\;
\ticker_inst|ALT_INV_Add0~85_sumout\ <= NOT \ticker_inst|Add0~85_sumout\;
\ticker_inst|ALT_INV_Add0~81_sumout\ <= NOT \ticker_inst|Add0~81_sumout\;
\ticker_inst|ALT_INV_Add0~77_sumout\ <= NOT \ticker_inst|Add0~77_sumout\;
\ticker_inst|ALT_INV_Add0~73_sumout\ <= NOT \ticker_inst|Add0~73_sumout\;
\ticker_inst|ALT_INV_Add0~69_sumout\ <= NOT \ticker_inst|Add0~69_sumout\;
\ticker_inst|ALT_INV_Add0~65_sumout\ <= NOT \ticker_inst|Add0~65_sumout\;
\ticker_inst|ALT_INV_Add0~61_sumout\ <= NOT \ticker_inst|Add0~61_sumout\;
\ticker_inst|ALT_INV_Add0~57_sumout\ <= NOT \ticker_inst|Add0~57_sumout\;
\ticker_inst|ALT_INV_Add0~53_sumout\ <= NOT \ticker_inst|Add0~53_sumout\;
\ticker_inst|ALT_INV_Add0~49_sumout\ <= NOT \ticker_inst|Add0~49_sumout\;
\ticker_inst|ALT_INV_Add0~45_sumout\ <= NOT \ticker_inst|Add0~45_sumout\;
\ticker_inst|ALT_INV_Add0~41_sumout\ <= NOT \ticker_inst|Add0~41_sumout\;
\ticker_inst|ALT_INV_Add0~37_sumout\ <= NOT \ticker_inst|Add0~37_sumout\;
\ticker_inst|ALT_INV_Add0~33_sumout\ <= NOT \ticker_inst|Add0~33_sumout\;
\ticker_inst|ALT_INV_Add0~29_sumout\ <= NOT \ticker_inst|Add0~29_sumout\;
\ticker_inst|ALT_INV_Add0~25_sumout\ <= NOT \ticker_inst|Add0~25_sumout\;
\ticker_inst|ALT_INV_Add0~21_sumout\ <= NOT \ticker_inst|Add0~21_sumout\;
\ticker_inst|ALT_INV_Add0~17_sumout\ <= NOT \ticker_inst|Add0~17_sumout\;
\ticker_inst|ALT_INV_Add0~13_sumout\ <= NOT \ticker_inst|Add0~13_sumout\;
\ticker_inst|ALT_INV_Add0~9_sumout\ <= NOT \ticker_inst|Add0~9_sumout\;
\ticker_inst|ALT_INV_Add0~5_sumout\ <= NOT \ticker_inst|Add0~5_sumout\;
\ticker_inst|ALT_INV_Add0~1_sumout\ <= NOT \ticker_inst|Add0~1_sumout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~DUPLICATE_q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~DUPLICATE_q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~DUPLICATE_q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~DUPLICATE_q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~DUPLICATE_q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~DUPLICATE_q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~DUPLICATE_q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~DUPLICATE_q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~DUPLICATE_q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~DUPLICATE_q\;
\freeze_region_inst|led_wrapper_inst|ALT_INV_dir~PR_IPORT_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|dir~PR_IPORT_combout\;
\ALT_INV_system_clock~input_o\ <= NOT \system_clock~input_o\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~3_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~2_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~1_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~6_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~5_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~4_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~3_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~2_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~1_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~0_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~0_combout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_leds\(3) <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(3);
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_leds\(2) <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(2);
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_leds\(1) <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(1);
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_leds\(0) <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(0);
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[0]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~101_sumout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101_sumout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[1]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~97_sumout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97_sumout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[2]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[3]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~89_sumout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89_sumout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[4]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[5]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~57_sumout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57_sumout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~45_sumout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45_sumout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~13_sumout\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13_sumout\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[15]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[8]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[9]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[6]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[19]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[20]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[21]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[22]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\;
\freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\ <= NOT \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\;
\ticker_inst|ALT_INV_disp_hex0[3]~11_combout\ <= NOT \ticker_inst|disp_hex0[3]~11_combout\;
\ticker_inst|ALT_INV_process_0~42_combout\ <= NOT \ticker_inst|process_0~42_combout\;
\ticker_inst|ALT_INV_disp_hex1~6_combout\ <= NOT \ticker_inst|disp_hex1~6_combout\;
\ticker_inst|ALT_INV_LessThan0~12_combout\ <= NOT \ticker_inst|LessThan0~12_combout\;
\ticker_inst|ALT_INV_LessThan0~11_combout\ <= NOT \ticker_inst|LessThan0~11_combout\;
\ticker_inst|ALT_INV_LessThan1~11_combout\ <= NOT \ticker_inst|LessThan1~11_combout\;
\ticker_inst|ALT_INV_LessThan0~10_combout\ <= NOT \ticker_inst|LessThan0~10_combout\;
\ticker_inst|ALT_INV_LessThan0~9_combout\ <= NOT \ticker_inst|LessThan0~9_combout\;
\ticker_inst|ALT_INV_disp_hex2~0_combout\ <= NOT \ticker_inst|disp_hex2~0_combout\;
\ticker_inst|ALT_INV_disp_hex1~2_combout\ <= NOT \ticker_inst|disp_hex1~2_combout\;
\ticker_inst|ALT_INV_LessThan2~4_combout\ <= NOT \ticker_inst|LessThan2~4_combout\;
\ticker_inst|ALT_INV_disp_hex1~0_combout\ <= NOT \ticker_inst|disp_hex1~0_combout\;
\ticker_inst|ALT_INV_LessThan0~8_combout\ <= NOT \ticker_inst|LessThan0~8_combout\;
\ticker_inst|ALT_INV_LessThan1~10_combout\ <= NOT \ticker_inst|LessThan1~10_combout\;
\ticker_inst|ALT_INV_LessThan1~9_combout\ <= NOT \ticker_inst|LessThan1~9_combout\;
\ticker_inst|ALT_INV_LessThan0~7_combout\ <= NOT \ticker_inst|LessThan0~7_combout\;
\ticker_inst|ALT_INV_disp_hex0~9_combout\ <= NOT \ticker_inst|disp_hex0~9_combout\;
\ticker_inst|ALT_INV_process_0~41_combout\ <= NOT \ticker_inst|process_0~41_combout\;
\ticker_inst|ALT_INV_process_0~40_combout\ <= NOT \ticker_inst|process_0~40_combout\;
\ticker_inst|ALT_INV_LessThan10~8_combout\ <= NOT \ticker_inst|LessThan10~8_combout\;
\ticker_inst|ALT_INV_LessThan10~7_combout\ <= NOT \ticker_inst|LessThan10~7_combout\;
\ticker_inst|ALT_INV_LessThan10~6_combout\ <= NOT \ticker_inst|LessThan10~6_combout\;
\ticker_inst|ALT_INV_LessThan10~5_combout\ <= NOT \ticker_inst|LessThan10~5_combout\;
\ticker_inst|ALT_INV_LessThan0~6_combout\ <= NOT \ticker_inst|LessThan0~6_combout\;
\ticker_inst|ALT_INV_process_0~39_combout\ <= NOT \ticker_inst|process_0~39_combout\;
\ticker_inst|ALT_INV_process_0~38_combout\ <= NOT \ticker_inst|process_0~38_combout\;
\ticker_inst|ALT_INV_disp_hex0~7_combout\ <= NOT \ticker_inst|disp_hex0~7_combout\;
\ticker_inst|ALT_INV_process_0~37_combout\ <= NOT \ticker_inst|process_0~37_combout\;
\ticker_inst|ALT_INV_process_0~36_combout\ <= NOT \ticker_inst|process_0~36_combout\;
\ticker_inst|ALT_INV_LessThan11~7_combout\ <= NOT \ticker_inst|LessThan11~7_combout\;
\ticker_inst|ALT_INV_LessThan11~6_combout\ <= NOT \ticker_inst|LessThan11~6_combout\;
\ticker_inst|ALT_INV_LessThan11~5_combout\ <= NOT \ticker_inst|LessThan11~5_combout\;
\ticker_inst|ALT_INV_LessThan11~4_combout\ <= NOT \ticker_inst|LessThan11~4_combout\;
\ticker_inst|ALT_INV_LessThan11~3_combout\ <= NOT \ticker_inst|LessThan11~3_combout\;
\ticker_inst|ALT_INV_LessThan11~2_combout\ <= NOT \ticker_inst|LessThan11~2_combout\;
\ticker_inst|ALT_INV_disp_hex0[3]~4_combout\ <= NOT \ticker_inst|disp_hex0[3]~4_combout\;
\ticker_inst|ALT_INV_process_0~35_combout\ <= NOT \ticker_inst|process_0~35_combout\;
\ticker_inst|ALT_INV_LessThan4~7_combout\ <= NOT \ticker_inst|LessThan4~7_combout\;
\ticker_inst|ALT_INV_LessThan4~6_combout\ <= NOT \ticker_inst|LessThan4~6_combout\;
\ticker_inst|ALT_INV_LessThan4~5_combout\ <= NOT \ticker_inst|LessThan4~5_combout\;
\ticker_inst|ALT_INV_process_0~34_combout\ <= NOT \ticker_inst|process_0~34_combout\;
\ticker_inst|ALT_INV_LessThan3~6_combout\ <= NOT \ticker_inst|LessThan3~6_combout\;
\ticker_inst|ALT_INV_LessThan3~5_combout\ <= NOT \ticker_inst|LessThan3~5_combout\;
\ticker_inst|ALT_INV_LessThan3~4_combout\ <= NOT \ticker_inst|LessThan3~4_combout\;
\ticker_inst|ALT_INV_LessThan11~1_combout\ <= NOT \ticker_inst|LessThan11~1_combout\;
\ticker_inst|ALT_INV_process_0~33_combout\ <= NOT \ticker_inst|process_0~33_combout\;
\ticker_inst|ALT_INV_LessThan5~6_combout\ <= NOT \ticker_inst|LessThan5~6_combout\;
\ticker_inst|ALT_INV_process_0~32_combout\ <= NOT \ticker_inst|process_0~32_combout\;
\ticker_inst|ALT_INV_LessThan5~5_combout\ <= NOT \ticker_inst|LessThan5~5_combout\;
\ticker_inst|ALT_INV_process_0~31_combout\ <= NOT \ticker_inst|process_0~31_combout\;
\ticker_inst|ALT_INV_disp_hex0[3]~3_combout\ <= NOT \ticker_inst|disp_hex0[3]~3_combout\;
\ticker_inst|ALT_INV_process_0~30_combout\ <= NOT \ticker_inst|process_0~30_combout\;
\ticker_inst|ALT_INV_process_0~29_combout\ <= NOT \ticker_inst|process_0~29_combout\;
\ticker_inst|ALT_INV_LessThan10~4_combout\ <= NOT \ticker_inst|LessThan10~4_combout\;
\ticker_inst|ALT_INV_LessThan10~3_combout\ <= NOT \ticker_inst|LessThan10~3_combout\;
\ticker_inst|ALT_INV_LessThan10~2_combout\ <= NOT \ticker_inst|LessThan10~2_combout\;
\ticker_inst|ALT_INV_LessThan10~1_combout\ <= NOT \ticker_inst|LessThan10~1_combout\;
\ticker_inst|ALT_INV_LessThan10~0_combout\ <= NOT \ticker_inst|LessThan10~0_combout\;
\ticker_inst|ALT_INV_process_0~28_combout\ <= NOT \ticker_inst|process_0~28_combout\;
\ticker_inst|ALT_INV_LessThan9~6_combout\ <= NOT \ticker_inst|LessThan9~6_combout\;
\ticker_inst|ALT_INV_LessThan9~5_combout\ <= NOT \ticker_inst|LessThan9~5_combout\;
\ticker_inst|ALT_INV_LessThan9~4_combout\ <= NOT \ticker_inst|LessThan9~4_combout\;
\ticker_inst|ALT_INV_LessThan9~3_combout\ <= NOT \ticker_inst|LessThan9~3_combout\;
\ticker_inst|ALT_INV_process_0~27_combout\ <= NOT \ticker_inst|process_0~27_combout\;
\ticker_inst|ALT_INV_LessThan1~8_combout\ <= NOT \ticker_inst|LessThan1~8_combout\;
\ticker_inst|ALT_INV_LessThan9~2_combout\ <= NOT \ticker_inst|LessThan9~2_combout\;
\ticker_inst|ALT_INV_process_0~26_combout\ <= NOT \ticker_inst|process_0~26_combout\;
\ticker_inst|ALT_INV_process_0~25_combout\ <= NOT \ticker_inst|process_0~25_combout\;
\ticker_inst|ALT_INV_process_0~24_combout\ <= NOT \ticker_inst|process_0~24_combout\;
\ticker_inst|ALT_INV_LessThan7~8_combout\ <= NOT \ticker_inst|LessThan7~8_combout\;
\ticker_inst|ALT_INV_LessThan7~7_combout\ <= NOT \ticker_inst|LessThan7~7_combout\;
\ticker_inst|ALT_INV_LessThan7~6_combout\ <= NOT \ticker_inst|LessThan7~6_combout\;
\ticker_inst|ALT_INV_LessThan7~5_combout\ <= NOT \ticker_inst|LessThan7~5_combout\;
\ticker_inst|ALT_INV_LessThan7~4_combout\ <= NOT \ticker_inst|LessThan7~4_combout\;
\ticker_inst|ALT_INV_process_0~23_combout\ <= NOT \ticker_inst|process_0~23_combout\;
\ticker_inst|ALT_INV_LessThan5~4_combout\ <= NOT \ticker_inst|LessThan5~4_combout\;
\ticker_inst|ALT_INV_process_0~22_combout\ <= NOT \ticker_inst|process_0~22_combout\;
\ticker_inst|ALT_INV_process_0~21_combout\ <= NOT \ticker_inst|process_0~21_combout\;
\ticker_inst|ALT_INV_LessThan4~4_combout\ <= NOT \ticker_inst|LessThan4~4_combout\;
\ticker_inst|ALT_INV_LessThan4~3_combout\ <= NOT \ticker_inst|LessThan4~3_combout\;
\ticker_inst|ALT_INV_LessThan4~2_combout\ <= NOT \ticker_inst|LessThan4~2_combout\;
\ticker_inst|ALT_INV_LessThan4~1_combout\ <= NOT \ticker_inst|LessThan4~1_combout\;
\ticker_inst|ALT_INV_LessThan4~0_combout\ <= NOT \ticker_inst|LessThan4~0_combout\;
\ticker_inst|ALT_INV_process_0~20_combout\ <= NOT \ticker_inst|process_0~20_combout\;
\ticker_inst|ALT_INV_LessThan3~3_combout\ <= NOT \ticker_inst|LessThan3~3_combout\;
\ticker_inst|ALT_INV_LessThan3~2_combout\ <= NOT \ticker_inst|LessThan3~2_combout\;
\ticker_inst|ALT_INV_LessThan3~1_combout\ <= NOT \ticker_inst|LessThan3~1_combout\;
\ticker_inst|ALT_INV_LessThan11~0_combout\ <= NOT \ticker_inst|LessThan11~0_combout\;
\ticker_inst|ALT_INV_process_0~19_combout\ <= NOT \ticker_inst|process_0~19_combout\;
\ticker_inst|ALT_INV_disp_hex0~1_combout\ <= NOT \ticker_inst|disp_hex0~1_combout\;
\ticker_inst|ALT_INV_LessThan0~5_combout\ <= NOT \ticker_inst|LessThan0~5_combout\;
\ticker_inst|ALT_INV_LessThan0~4_combout\ <= NOT \ticker_inst|LessThan0~4_combout\;
\ticker_inst|ALT_INV_process_0~18_combout\ <= NOT \ticker_inst|process_0~18_combout\;
\ticker_inst|ALT_INV_LessThan2~3_combout\ <= NOT \ticker_inst|LessThan2~3_combout\;
\ticker_inst|ALT_INV_process_0~17_combout\ <= NOT \ticker_inst|process_0~17_combout\;
\ticker_inst|ALT_INV_LessThan3~0_combout\ <= NOT \ticker_inst|LessThan3~0_combout\;
\ticker_inst|ALT_INV_LessThan2~2_combout\ <= NOT \ticker_inst|LessThan2~2_combout\;
\ticker_inst|ALT_INV_LessThan2~1_combout\ <= NOT \ticker_inst|LessThan2~1_combout\;
\ticker_inst|ALT_INV_LessThan2~0_combout\ <= NOT \ticker_inst|LessThan2~0_combout\;
\ticker_inst|ALT_INV_disp_hex0~0_combout\ <= NOT \ticker_inst|disp_hex0~0_combout\;
\ticker_inst|ALT_INV_LessThan1~7_combout\ <= NOT \ticker_inst|LessThan1~7_combout\;
\ticker_inst|ALT_INV_LessThan1~6_combout\ <= NOT \ticker_inst|LessThan1~6_combout\;
\ticker_inst|ALT_INV_LessThan1~5_combout\ <= NOT \ticker_inst|LessThan1~5_combout\;
\ticker_inst|ALT_INV_LessThan1~4_combout\ <= NOT \ticker_inst|LessThan1~4_combout\;
\ticker_inst|ALT_INV_LessThan1~3_combout\ <= NOT \ticker_inst|LessThan1~3_combout\;
\ticker_inst|ALT_INV_LessThan1~2_combout\ <= NOT \ticker_inst|LessThan1~2_combout\;
\ticker_inst|ALT_INV_LessThan1~1_combout\ <= NOT \ticker_inst|LessThan1~1_combout\;
\ticker_inst|ALT_INV_LessThan0~3_combout\ <= NOT \ticker_inst|LessThan0~3_combout\;
\ticker_inst|ALT_INV_LessThan1~0_combout\ <= NOT \ticker_inst|LessThan1~0_combout\;
\ticker_inst|ALT_INV_LessThan0~2_combout\ <= NOT \ticker_inst|LessThan0~2_combout\;
\ticker_inst|ALT_INV_LessThan0~1_combout\ <= NOT \ticker_inst|LessThan0~1_combout\;
\ticker_inst|ALT_INV_LessThan0~0_combout\ <= NOT \ticker_inst|LessThan0~0_combout\;
\ticker_inst|ALT_INV_process_0~16_combout\ <= NOT \ticker_inst|process_0~16_combout\;
\ticker_inst|ALT_INV_process_0~15_combout\ <= NOT \ticker_inst|process_0~15_combout\;
\ticker_inst|ALT_INV_process_0~14_combout\ <= NOT \ticker_inst|process_0~14_combout\;
\ticker_inst|ALT_INV_LessThan5~3_combout\ <= NOT \ticker_inst|LessThan5~3_combout\;
\ticker_inst|ALT_INV_LessThan5~2_combout\ <= NOT \ticker_inst|LessThan5~2_combout\;
\ticker_inst|ALT_INV_LessThan5~1_combout\ <= NOT \ticker_inst|LessThan5~1_combout\;
\ticker_inst|ALT_INV_LessThan5~0_combout\ <= NOT \ticker_inst|LessThan5~0_combout\;
\ticker_inst|ALT_INV_process_0~13_combout\ <= NOT \ticker_inst|process_0~13_combout\;
\ticker_inst|ALT_INV_process_0~12_combout\ <= NOT \ticker_inst|process_0~12_combout\;
\ticker_inst|ALT_INV_process_0~11_combout\ <= NOT \ticker_inst|process_0~11_combout\;
\ticker_inst|ALT_INV_process_0~10_combout\ <= NOT \ticker_inst|process_0~10_combout\;
\ticker_inst|ALT_INV_process_0~9_combout\ <= NOT \ticker_inst|process_0~9_combout\;
\ticker_inst|ALT_INV_process_0~8_combout\ <= NOT \ticker_inst|process_0~8_combout\;
\ticker_inst|ALT_INV_process_0~7_combout\ <= NOT \ticker_inst|process_0~7_combout\;
\ticker_inst|ALT_INV_process_0~6_combout\ <= NOT \ticker_inst|process_0~6_combout\;
\ticker_inst|ALT_INV_process_0~5_combout\ <= NOT \ticker_inst|process_0~5_combout\;

-- Location: IOOBUF_X89_Y8_N5
\PR_done_led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_PR_done_led);

-- Location: IOOBUF_X89_Y6_N22
\PR_error_led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_PR_error_led);

-- Location: IOOBUF_X89_Y6_N5
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \freeze_region_inst|led_wrapper_inst|leds[0]~PR_OPORT_combout\,
	devoe => ww_devoe,
	o => ww_LED(0));

-- Location: IOOBUF_X84_Y0_N2
\LED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \freeze_region_inst|led_wrapper_inst|leds[1]~PR_OPORT_combout\,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X80_Y0_N19
\LED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \freeze_region_inst|led_wrapper_inst|leds[2]~PR_OPORT_combout\,
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X60_Y0_N19
\LED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \freeze_region_inst|led_wrapper_inst|leds[3]~PR_OPORT_combout\,
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X89_Y8_N39
\disp_hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex0(0));

-- Location: IOOBUF_X89_Y11_N79
\disp_hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex0(1));

-- Location: IOOBUF_X89_Y11_N96
\disp_hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex0\(2),
	devoe => ww_devoe,
	o => ww_disp_hex0(2));

-- Location: IOOBUF_X89_Y4_N79
\disp_hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex0\(3),
	devoe => ww_devoe,
	o => ww_disp_hex0(3));

-- Location: IOOBUF_X89_Y13_N56
\disp_hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex0\(4),
	devoe => ww_devoe,
	o => ww_disp_hex0(4));

-- Location: IOOBUF_X89_Y13_N39
\disp_hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex0(5));

-- Location: IOOBUF_X89_Y4_N96
\disp_hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex0\(6),
	devoe => ww_devoe,
	o => ww_disp_hex0(6));

-- Location: IOOBUF_X89_Y6_N39
\disp_hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex1(0));

-- Location: IOOBUF_X89_Y6_N56
\disp_hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex1(1));

-- Location: IOOBUF_X89_Y16_N39
\disp_hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex1\(2),
	devoe => ww_devoe,
	o => ww_disp_hex1(2));

-- Location: IOOBUF_X89_Y16_N56
\disp_hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex1\(3),
	devoe => ww_devoe,
	o => ww_disp_hex1(3));

-- Location: IOOBUF_X89_Y15_N39
\disp_hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex1\(4),
	devoe => ww_devoe,
	o => ww_disp_hex1(4));

-- Location: IOOBUF_X89_Y15_N56
\disp_hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex1(5));

-- Location: IOOBUF_X89_Y8_N56
\disp_hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex1\(6),
	devoe => ww_devoe,
	o => ww_disp_hex1(6));

-- Location: IOOBUF_X89_Y9_N22
\disp_hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex2(0));

-- Location: IOOBUF_X89_Y23_N39
\disp_hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex2(1));

-- Location: IOOBUF_X89_Y23_N56
\disp_hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex2\(2),
	devoe => ww_devoe,
	o => ww_disp_hex2(2));

-- Location: IOOBUF_X89_Y20_N79
\disp_hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex2\(3),
	devoe => ww_devoe,
	o => ww_disp_hex2(3));

-- Location: IOOBUF_X89_Y25_N39
\disp_hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex2\(4),
	devoe => ww_devoe,
	o => ww_disp_hex2(4));

-- Location: IOOBUF_X89_Y20_N96
\disp_hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex2(5));

-- Location: IOOBUF_X89_Y25_N56
\disp_hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex2\(6),
	devoe => ww_devoe,
	o => ww_disp_hex2(6));

-- Location: IOOBUF_X89_Y16_N5
\disp_hex3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex3(0));

-- Location: IOOBUF_X89_Y16_N22
\disp_hex3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex3(1));

-- Location: IOOBUF_X89_Y4_N45
\disp_hex3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex3\(2),
	devoe => ww_devoe,
	o => ww_disp_hex3(2));

-- Location: IOOBUF_X89_Y4_N62
\disp_hex3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex3\(3),
	devoe => ww_devoe,
	o => ww_disp_hex3(3));

-- Location: IOOBUF_X89_Y21_N39
\disp_hex3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex3\(4),
	devoe => ww_devoe,
	o => ww_disp_hex3(4));

-- Location: IOOBUF_X89_Y11_N62
\disp_hex3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex3(5));

-- Location: IOOBUF_X89_Y9_N5
\disp_hex3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex3\(6),
	devoe => ww_devoe,
	o => ww_disp_hex3(6));

-- Location: IOOBUF_X89_Y11_N45
\disp_hex4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex4(0));

-- Location: IOOBUF_X89_Y13_N5
\disp_hex4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex4(1));

-- Location: IOOBUF_X89_Y13_N22
\disp_hex4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex4\(2),
	devoe => ww_devoe,
	o => ww_disp_hex4(2));

-- Location: IOOBUF_X89_Y8_N22
\disp_hex4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex4\(3),
	devoe => ww_devoe,
	o => ww_disp_hex4(3));

-- Location: IOOBUF_X89_Y15_N22
\disp_hex4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex4\(4),
	devoe => ww_devoe,
	o => ww_disp_hex4(4));

-- Location: IOOBUF_X89_Y15_N5
\disp_hex4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex4(5));

-- Location: IOOBUF_X89_Y20_N45
\disp_hex4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex4\(6),
	devoe => ww_devoe,
	o => ww_disp_hex4(6));

-- Location: IOOBUF_X89_Y20_N62
\disp_hex5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex5(0));

-- Location: IOOBUF_X89_Y21_N56
\disp_hex5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex5(1));

-- Location: IOOBUF_X89_Y25_N22
\disp_hex5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex5\(2),
	devoe => ww_devoe,
	o => ww_disp_hex5(2));

-- Location: IOOBUF_X89_Y23_N22
\disp_hex5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex5\(3),
	devoe => ww_devoe,
	o => ww_disp_hex5(3));

-- Location: IOOBUF_X89_Y9_N56
\disp_hex5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex5\(4),
	devoe => ww_devoe,
	o => ww_disp_hex5(4));

-- Location: IOOBUF_X89_Y23_N5
\disp_hex5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_disp_hex5(5));

-- Location: IOOBUF_X89_Y9_N39
\disp_hex5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ticker_inst|disp_hex5\(6),
	devoe => ww_devoe,
	o => ww_disp_hex5(6));

-- Location: IOIBUF_X32_Y0_N1
\system_clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_system_clock,
	o => \system_clock~input_o\);

-- Location: LABCELL_X10_Y6_N6
\freeze_region_inst|led_wrapper_inst|clk~PR_IPORT\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\ = ( \system_clock~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_system_clock~input_o\,
	combout => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\);

-- Location: LABCELL_X10_Y6_N30
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[0]~q\,
	cin => GND,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\);

-- Location: LABCELL_X10_Y6_N27
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~feeder_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~101_sumout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~feeder_combout\);

-- Location: FF_X10_Y5_N50
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~feeder_combout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\);

-- Location: LABCELL_X10_Y6_N54
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[8]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\);

-- Location: LABCELL_X10_Y6_N57
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[9]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~50\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\);

-- Location: FF_X9_Y6_N34
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~41_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\);

-- Location: LABCELL_X10_Y5_N0
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~DUPLICATE_q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~DUPLICATE_q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~DUPLICATE_q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~42\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\);

-- Location: FF_X10_Y5_N59
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y5_N3
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~38\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\);

-- Location: LABCELL_X9_Y6_N45
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~feeder_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~57_sumout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~feeder_combout\);

-- Location: FF_X9_Y6_N47
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~feeder_combout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\);

-- Location: LABCELL_X10_Y5_N6
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~DUPLICATE_q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~DUPLICATE_q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~DUPLICATE_q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~58\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\);

-- Location: FF_X9_Y6_N40
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y5_N9
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~70\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\);

-- Location: FF_X9_Y6_N53
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~65_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\);

-- Location: LABCELL_X10_Y5_N12
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~DUPLICATE_q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~DUPLICATE_q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~DUPLICATE_q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~66\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\);

-- Location: FF_X9_Y6_N58
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y5_N15
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[15]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~62\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\);

-- Location: FF_X9_Y6_N32
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~73_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\);

-- Location: LABCELL_X10_Y5_N18
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~74\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\);

-- Location: FF_X9_Y6_N14
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~53_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\);

-- Location: LABCELL_X10_Y5_N21
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~54\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\);

-- Location: LABCELL_X10_Y5_N48
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~feeder_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~13_sumout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~feeder_combout\);

-- Location: FF_X10_Y5_N49
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~feeder_combout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y5_N24
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~14\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\);

-- Location: FF_X9_Y6_N1
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~9_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\);

-- Location: LABCELL_X10_Y5_N27
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[19]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~10\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\);

-- Location: FF_X9_Y6_N43
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~29_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\);

-- Location: LABCELL_X10_Y5_N30
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[20]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~30\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\);

-- Location: FF_X9_Y6_N50
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~25_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\);

-- Location: LABCELL_X10_Y5_N33
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[21]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~26\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\);

-- Location: FF_X9_Y6_N8
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~21_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\);

-- Location: LABCELL_X10_Y5_N36
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[22]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~22\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\);

-- Location: FF_X9_Y6_N23
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~17_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\);

-- Location: LABCELL_X10_Y5_N39
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~18\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\);

-- Location: FF_X9_Y6_N20
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~5_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\);

-- Location: LABCELL_X10_Y5_N42
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~2\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~6\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~2\);

-- Location: FF_X9_Y6_N38
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~1_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\);

-- Location: LABCELL_X9_Y6_N6
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[20]~q\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[19]~q\ & 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[22]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[21]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[19]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[22]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[21]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[20]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\);

-- Location: LABCELL_X9_Y6_N54
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & ( 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ & !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ & ( 
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ & ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~DUPLICATE_q\) # 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\))) ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~DUPLICATE_q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~0_combout\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\);

-- Location: LABCELL_X9_Y6_N18
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~0_combout\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~3_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\);

-- Location: FF_X10_Y6_N29
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~feeder_combout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[0]~q\);

-- Location: LABCELL_X10_Y6_N33
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[1]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~102\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\);

-- Location: LABCELL_X10_Y6_N0
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~feeder_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~97_sumout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~feeder_combout\);

-- Location: FF_X10_Y6_N2
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~feeder_combout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[1]~q\);

-- Location: LABCELL_X10_Y6_N36
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[2]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~98\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\);

-- Location: FF_X10_Y6_N17
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~93_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[2]~q\);

-- Location: LABCELL_X10_Y6_N39
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[3]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~94\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\);

-- Location: LABCELL_X10_Y6_N24
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~feeder_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~89_sumout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~feeder_combout\);

-- Location: FF_X10_Y6_N25
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~feeder_combout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[3]~q\);

-- Location: LABCELL_X10_Y6_N42
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[4]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~90\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\);

-- Location: FF_X10_Y6_N23
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~85_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[4]~q\);

-- Location: LABCELL_X10_Y6_N45
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[5]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~86\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\);

-- Location: FF_X10_Y6_N14
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~81_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[5]~q\);

-- Location: LABCELL_X10_Y6_N48
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[6]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~82\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\);

-- Location: FF_X9_Y6_N25
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~33_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\);

-- Location: LABCELL_X10_Y6_N51
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~DUPLICATE_q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\ ))
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\ = CARRY(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~DUPLICATE_q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~DUPLICATE_q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~34\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45_sumout\,
	cout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~46\);

-- Location: LABCELL_X10_Y6_N3
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~feeder_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_Add0~45_sumout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~feeder_combout\);

-- Location: FF_X10_Y6_N5
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~feeder_combout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~DUPLICATE_q\);

-- Location: FF_X10_Y6_N20
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~49_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\);

-- Location: FF_X10_Y6_N4
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	d => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~feeder_combout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\);

-- Location: FF_X10_Y5_N58
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~37_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\);

-- Location: LABCELL_X9_Y6_N33
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\ = (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[8]~q\ & (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[7]~q\ & 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[10]~q\ & !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[8]~q\,
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[7]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[10]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[9]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\);

-- Location: LABCELL_X9_Y6_N3
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\ = ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ & 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\);

-- Location: LABCELL_X10_Y5_N45
\freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77_sumout\ = SUM(( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ ) + ( GND ) + ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\,
	cin => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~2\,
	sumout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77_sumout\);

-- Location: FF_X9_Y6_N17
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~77_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\);

-- Location: FF_X9_Y6_N59
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~61_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\);

-- Location: FF_X9_Y6_N41
\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|led_flash_inst|Add0~69_sumout\,
	sclr => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\);

-- Location: LABCELL_X9_Y6_N21
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~q\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ & 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\,
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[15]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\);

-- Location: LABCELL_X9_Y6_N15
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ & 
-- ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\) # ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\) # (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\)))) ) ) # ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~1_combout\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~2_combout\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111110110000000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~1_combout\,
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~2_combout\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~1_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\);

-- Location: LABCELL_X9_Y6_N30
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[18]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[18]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\);

-- Location: LABCELL_X9_Y6_N48
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[12]~DUPLICATE_q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[14]~DUPLICATE_q\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[13]~q\ & (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[11]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[13]~q\,
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[11]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[12]~DUPLICATE_q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[14]~DUPLICATE_q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\);

-- Location: LABCELL_X9_Y6_N12
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~DUPLICATE_q\ & 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[16]~q\) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[15]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[17]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[17]~DUPLICATE_q\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[16]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[15]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\);

-- Location: LABCELL_X9_Y6_N27
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ & (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\ & ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~1_combout\) # 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[6]~q\)))) ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\) ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~2_combout\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~3_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~4_combout\ & \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~4_combout\,
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[6]~q\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~0_combout\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~1_combout\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~2_combout\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~3_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\);

-- Location: LABCELL_X9_Y6_N36
\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\ = ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ & ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ ) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[24]~q\ & ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[23]~q\ & ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|led:count[25]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[25]~q\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[24]~q\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_led:count[23]~q\,
	combout => \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\);

-- Location: LABCELL_X9_Y6_N9
\freeze_region_inst|led_wrapper_inst|rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|rtl~4_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\) # 
-- ((\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ & !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\)) ) ) # ( !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ & !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~3_combout\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~0_combout\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~5_combout\,
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~6_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|rtl~4_combout\);

-- Location: FF_X9_Y6_N4
\freeze_region_inst|led_wrapper_inst|led_flash_inst|leds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|rtl~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(0));

-- Location: LABCELL_X10_Y4_N48
\freeze_region_inst|led_wrapper_inst|leds[0]~PR_OPORT\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|leds[0]~PR_OPORT_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_leds\(0),
	combout => \freeze_region_inst|led_wrapper_inst|leds[0]~PR_OPORT_combout\);

-- Location: IOIBUF_X16_Y0_N1
\dir_switch_2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir_switch_2,
	o => \dir_switch_2~input_o\);

-- Location: FF_X31_Y1_N13
\freeze_region_inst|dir_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \dir_switch_2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|dir_sync~q\);

-- Location: LABCELL_X10_Y6_N9
\freeze_region_inst|led_wrapper_inst|dir~PR_IPORT\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|dir~PR_IPORT_combout\ = ( \freeze_region_inst|dir_sync~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|ALT_INV_dir_sync~q\,
	combout => \freeze_region_inst|led_wrapper_inst|dir~PR_IPORT_combout\);

-- Location: LABCELL_X10_Y6_N18
\freeze_region_inst|led_wrapper_inst|rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|rtl~5_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ & ( \freeze_region_inst|led_wrapper_inst|dir~PR_IPORT_combout\ & ( 
-- (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\) # ((\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\ & !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\)) ) ) ) # ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ & ( \freeze_region_inst|led_wrapper_inst|dir~PR_IPORT_combout\ & ( (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\ & 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\) ) ) ) # ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ & ( !\freeze_region_inst|led_wrapper_inst|dir~PR_IPORT_combout\ & ( 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~0_combout\ & ((!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\) # (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\))) ) ) ) # ( 
-- !\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan1~3_combout\ & ( !\freeze_region_inst|led_wrapper_inst|dir~PR_IPORT_combout\ & ( (!\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~6_combout\) # 
-- (\freeze_region_inst|led_wrapper_inst|led_flash_inst|LessThan0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111010100000101010100001111000000001010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~0_combout\,
	datac => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~6_combout\,
	datad => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan0~5_combout\,
	datae => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_LessThan1~3_combout\,
	dataf => \freeze_region_inst|led_wrapper_inst|ALT_INV_dir~PR_IPORT_combout\,
	combout => \freeze_region_inst|led_wrapper_inst|rtl~5_combout\);

-- Location: FF_X10_Y6_N31
\freeze_region_inst|led_wrapper_inst|led_flash_inst|leds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|rtl~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(1));

-- Location: LABCELL_X10_Y2_N39
\freeze_region_inst|led_wrapper_inst|leds[1]~PR_OPORT\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|leds[1]~PR_OPORT_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_leds\(1),
	combout => \freeze_region_inst|led_wrapper_inst|leds[1]~PR_OPORT_combout\);

-- Location: FF_X10_Y6_N52
\freeze_region_inst|led_wrapper_inst|led_flash_inst|leds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	asdata => \freeze_region_inst|led_wrapper_inst|rtl~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(2));

-- Location: LABCELL_X10_Y1_N0
\freeze_region_inst|led_wrapper_inst|leds[2]~PR_OPORT\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|leds[2]~PR_OPORT_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_leds\(2),
	combout => \freeze_region_inst|led_wrapper_inst|leds[2]~PR_OPORT_combout\);

-- Location: FF_X9_Y6_N10
\freeze_region_inst|led_wrapper_inst|led_flash_inst|leds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freeze_region_inst|led_wrapper_inst|clk~PR_IPORT_combout\,
	d => \freeze_region_inst|led_wrapper_inst|rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(3));

-- Location: LABCELL_X10_Y1_N9
\freeze_region_inst|led_wrapper_inst|leds[3]~PR_OPORT\ : cyclonev_lcell_comb
-- Equation(s):
-- \freeze_region_inst|led_wrapper_inst|leds[3]~PR_OPORT_combout\ = ( \freeze_region_inst|led_wrapper_inst|led_flash_inst|leds\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freeze_region_inst|led_wrapper_inst|led_flash_inst|ALT_INV_leds\(3),
	combout => \freeze_region_inst|led_wrapper_inst|leds[3]~PR_OPORT_combout\);

-- Location: FF_X84_Y11_N32
\ticker_inst|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~1_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(27));

-- Location: MLABCELL_X84_Y12_N30
\ticker_inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~105_sumout\ = SUM(( \ticker_inst|count\(0) ) + ( VCC ) + ( !VCC ))
-- \ticker_inst|Add0~106\ = CARRY(( \ticker_inst|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(0),
	cin => GND,
	sumout => \ticker_inst|Add0~105_sumout\,
	cout => \ticker_inst|Add0~106\);

-- Location: FF_X84_Y12_N2
\ticker_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~105_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(0));

-- Location: MLABCELL_X84_Y12_N33
\ticker_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~61_sumout\ = SUM(( \ticker_inst|count\(1) ) + ( GND ) + ( \ticker_inst|Add0~106\ ))
-- \ticker_inst|Add0~62\ = CARRY(( \ticker_inst|count\(1) ) + ( GND ) + ( \ticker_inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(1),
	cin => \ticker_inst|Add0~106\,
	sumout => \ticker_inst|Add0~61_sumout\,
	cout => \ticker_inst|Add0~62\);

-- Location: FF_X84_Y12_N14
\ticker_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~61_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(1));

-- Location: MLABCELL_X84_Y12_N36
\ticker_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~65_sumout\ = SUM(( \ticker_inst|count\(2) ) + ( GND ) + ( \ticker_inst|Add0~62\ ))
-- \ticker_inst|Add0~66\ = CARRY(( \ticker_inst|count\(2) ) + ( GND ) + ( \ticker_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(2),
	cin => \ticker_inst|Add0~62\,
	sumout => \ticker_inst|Add0~65_sumout\,
	cout => \ticker_inst|Add0~66\);

-- Location: FF_X84_Y12_N20
\ticker_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~65_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(2));

-- Location: MLABCELL_X84_Y12_N39
\ticker_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~69_sumout\ = SUM(( \ticker_inst|count\(3) ) + ( GND ) + ( \ticker_inst|Add0~66\ ))
-- \ticker_inst|Add0~70\ = CARRY(( \ticker_inst|count\(3) ) + ( GND ) + ( \ticker_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_count\(3),
	cin => \ticker_inst|Add0~66\,
	sumout => \ticker_inst|Add0~69_sumout\,
	cout => \ticker_inst|Add0~70\);

-- Location: FF_X84_Y12_N26
\ticker_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~69_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(3));

-- Location: MLABCELL_X84_Y12_N42
\ticker_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~77_sumout\ = SUM(( \ticker_inst|count\(4) ) + ( GND ) + ( \ticker_inst|Add0~70\ ))
-- \ticker_inst|Add0~78\ = CARRY(( \ticker_inst|count\(4) ) + ( GND ) + ( \ticker_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_count\(4),
	cin => \ticker_inst|Add0~70\,
	sumout => \ticker_inst|Add0~77_sumout\,
	cout => \ticker_inst|Add0~78\);

-- Location: FF_X84_Y12_N11
\ticker_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~77_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(4));

-- Location: MLABCELL_X84_Y12_N45
\ticker_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~73_sumout\ = SUM(( \ticker_inst|count\(5) ) + ( GND ) + ( \ticker_inst|Add0~78\ ))
-- \ticker_inst|Add0~74\ = CARRY(( \ticker_inst|count\(5) ) + ( GND ) + ( \ticker_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(5),
	cin => \ticker_inst|Add0~78\,
	sumout => \ticker_inst|Add0~73_sumout\,
	cout => \ticker_inst|Add0~74\);

-- Location: FF_X84_Y12_N17
\ticker_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~73_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(5));

-- Location: MLABCELL_X84_Y12_N48
\ticker_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~45_sumout\ = SUM(( \ticker_inst|count\(6) ) + ( GND ) + ( \ticker_inst|Add0~74\ ))
-- \ticker_inst|Add0~46\ = CARRY(( \ticker_inst|count\(6) ) + ( GND ) + ( \ticker_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(6),
	cin => \ticker_inst|Add0~74\,
	sumout => \ticker_inst|Add0~45_sumout\,
	cout => \ticker_inst|Add0~46\);

-- Location: FF_X84_Y12_N5
\ticker_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~45_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(6));

-- Location: MLABCELL_X84_Y12_N51
\ticker_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~53_sumout\ = SUM(( \ticker_inst|count\(7) ) + ( GND ) + ( \ticker_inst|Add0~46\ ))
-- \ticker_inst|Add0~54\ = CARRY(( \ticker_inst|count\(7) ) + ( GND ) + ( \ticker_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(7),
	cin => \ticker_inst|Add0~46\,
	sumout => \ticker_inst|Add0~53_sumout\,
	cout => \ticker_inst|Add0~54\);

-- Location: FF_X84_Y12_N29
\ticker_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~53_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(7));

-- Location: MLABCELL_X84_Y12_N54
\ticker_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~57_sumout\ = SUM(( \ticker_inst|count\(8) ) + ( GND ) + ( \ticker_inst|Add0~54\ ))
-- \ticker_inst|Add0~58\ = CARRY(( \ticker_inst|count\(8) ) + ( GND ) + ( \ticker_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_count\(8),
	cin => \ticker_inst|Add0~54\,
	sumout => \ticker_inst|Add0~57_sumout\,
	cout => \ticker_inst|Add0~58\);

-- Location: FF_X84_Y12_N8
\ticker_inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~57_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(8));

-- Location: MLABCELL_X84_Y12_N57
\ticker_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~49_sumout\ = SUM(( \ticker_inst|count\(9) ) + ( GND ) + ( \ticker_inst|Add0~58\ ))
-- \ticker_inst|Add0~50\ = CARRY(( \ticker_inst|count\(9) ) + ( GND ) + ( \ticker_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_count\(9),
	cin => \ticker_inst|Add0~58\,
	sumout => \ticker_inst|Add0~49_sumout\,
	cout => \ticker_inst|Add0~50\);

-- Location: FF_X84_Y12_N23
\ticker_inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~49_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(9));

-- Location: MLABCELL_X84_Y11_N0
\ticker_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~81_sumout\ = SUM(( \ticker_inst|count\(10) ) + ( GND ) + ( \ticker_inst|Add0~50\ ))
-- \ticker_inst|Add0~82\ = CARRY(( \ticker_inst|count\(10) ) + ( GND ) + ( \ticker_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_count\(10),
	cin => \ticker_inst|Add0~50\,
	sumout => \ticker_inst|Add0~81_sumout\,
	cout => \ticker_inst|Add0~82\);

-- Location: FF_X84_Y11_N8
\ticker_inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~81_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(10));

-- Location: MLABCELL_X84_Y11_N3
\ticker_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~85_sumout\ = SUM(( \ticker_inst|count\(11) ) + ( GND ) + ( \ticker_inst|Add0~82\ ))
-- \ticker_inst|Add0~86\ = CARRY(( \ticker_inst|count\(11) ) + ( GND ) + ( \ticker_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(11),
	cin => \ticker_inst|Add0~82\,
	sumout => \ticker_inst|Add0~85_sumout\,
	cout => \ticker_inst|Add0~86\);

-- Location: FF_X84_Y11_N59
\ticker_inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~85_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(11));

-- Location: MLABCELL_X84_Y11_N6
\ticker_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~89_sumout\ = SUM(( \ticker_inst|count\(12) ) + ( GND ) + ( \ticker_inst|Add0~86\ ))
-- \ticker_inst|Add0~90\ = CARRY(( \ticker_inst|count\(12) ) + ( GND ) + ( \ticker_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(12),
	cin => \ticker_inst|Add0~86\,
	sumout => \ticker_inst|Add0~89_sumout\,
	cout => \ticker_inst|Add0~90\);

-- Location: FF_X83_Y11_N34
\ticker_inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~89_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(12));

-- Location: MLABCELL_X84_Y11_N9
\ticker_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~93_sumout\ = SUM(( \ticker_inst|count\(13) ) + ( GND ) + ( \ticker_inst|Add0~90\ ))
-- \ticker_inst|Add0~94\ = CARRY(( \ticker_inst|count\(13) ) + ( GND ) + ( \ticker_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(13),
	cin => \ticker_inst|Add0~90\,
	sumout => \ticker_inst|Add0~93_sumout\,
	cout => \ticker_inst|Add0~94\);

-- Location: FF_X84_Y11_N44
\ticker_inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~93_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(13));

-- Location: MLABCELL_X84_Y11_N12
\ticker_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~33_sumout\ = SUM(( \ticker_inst|count\(14) ) + ( GND ) + ( \ticker_inst|Add0~94\ ))
-- \ticker_inst|Add0~34\ = CARRY(( \ticker_inst|count\(14) ) + ( GND ) + ( \ticker_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(14),
	cin => \ticker_inst|Add0~94\,
	sumout => \ticker_inst|Add0~33_sumout\,
	cout => \ticker_inst|Add0~34\);

-- Location: FF_X84_Y11_N26
\ticker_inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~33_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(14));

-- Location: MLABCELL_X84_Y11_N15
\ticker_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~37_sumout\ = SUM(( \ticker_inst|count\(15) ) + ( GND ) + ( \ticker_inst|Add0~34\ ))
-- \ticker_inst|Add0~38\ = CARRY(( \ticker_inst|count\(15) ) + ( GND ) + ( \ticker_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(15),
	cin => \ticker_inst|Add0~34\,
	sumout => \ticker_inst|Add0~37_sumout\,
	cout => \ticker_inst|Add0~38\);

-- Location: FF_X84_Y11_N14
\ticker_inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~37_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(15));

-- Location: MLABCELL_X84_Y11_N18
\ticker_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~41_sumout\ = SUM(( \ticker_inst|count\(16) ) + ( GND ) + ( \ticker_inst|Add0~38\ ))
-- \ticker_inst|Add0~42\ = CARRY(( \ticker_inst|count\(16) ) + ( GND ) + ( \ticker_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_count\(16),
	cin => \ticker_inst|Add0~38\,
	sumout => \ticker_inst|Add0~41_sumout\,
	cout => \ticker_inst|Add0~42\);

-- Location: FF_X84_Y11_N56
\ticker_inst|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~41_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(16));

-- Location: MLABCELL_X84_Y11_N21
\ticker_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~97_sumout\ = SUM(( \ticker_inst|count\(17) ) + ( GND ) + ( \ticker_inst|Add0~42\ ))
-- \ticker_inst|Add0~98\ = CARRY(( \ticker_inst|count\(17) ) + ( GND ) + ( \ticker_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(17),
	cin => \ticker_inst|Add0~42\,
	sumout => \ticker_inst|Add0~97_sumout\,
	cout => \ticker_inst|Add0~98\);

-- Location: FF_X84_Y11_N5
\ticker_inst|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~97_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(17));

-- Location: MLABCELL_X84_Y11_N24
\ticker_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~29_sumout\ = SUM(( \ticker_inst|count\(18) ) + ( GND ) + ( \ticker_inst|Add0~98\ ))
-- \ticker_inst|Add0~30\ = CARRY(( \ticker_inst|count\(18) ) + ( GND ) + ( \ticker_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_count\(18),
	cin => \ticker_inst|Add0~98\,
	sumout => \ticker_inst|Add0~29_sumout\,
	cout => \ticker_inst|Add0~30\);

-- Location: FF_X84_Y11_N38
\ticker_inst|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~29_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(18));

-- Location: MLABCELL_X84_Y11_N27
\ticker_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~17_sumout\ = SUM(( \ticker_inst|count\(19) ) + ( GND ) + ( \ticker_inst|Add0~30\ ))
-- \ticker_inst|Add0~18\ = CARRY(( \ticker_inst|count\(19) ) + ( GND ) + ( \ticker_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(19),
	cin => \ticker_inst|Add0~30\,
	sumout => \ticker_inst|Add0~17_sumout\,
	cout => \ticker_inst|Add0~18\);

-- Location: FF_X84_Y11_N17
\ticker_inst|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~17_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(19));

-- Location: MLABCELL_X84_Y11_N30
\ticker_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~25_sumout\ = SUM(( \ticker_inst|count\(20) ) + ( GND ) + ( \ticker_inst|Add0~18\ ))
-- \ticker_inst|Add0~26\ = CARRY(( \ticker_inst|count\(20) ) + ( GND ) + ( \ticker_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(20),
	cin => \ticker_inst|Add0~18\,
	sumout => \ticker_inst|Add0~25_sumout\,
	cout => \ticker_inst|Add0~26\);

-- Location: FF_X83_Y11_N40
\ticker_inst|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~25_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(20));

-- Location: MLABCELL_X84_Y11_N33
\ticker_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~21_sumout\ = SUM(( \ticker_inst|count\(21) ) + ( GND ) + ( \ticker_inst|Add0~26\ ))
-- \ticker_inst|Add0~22\ = CARRY(( \ticker_inst|count\(21) ) + ( GND ) + ( \ticker_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_count\(21),
	cin => \ticker_inst|Add0~26\,
	sumout => \ticker_inst|Add0~21_sumout\,
	cout => \ticker_inst|Add0~22\);

-- Location: FF_X84_Y11_N20
\ticker_inst|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~21_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(21));

-- Location: MLABCELL_X84_Y11_N36
\ticker_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~13_sumout\ = SUM(( \ticker_inst|count\(22) ) + ( GND ) + ( \ticker_inst|Add0~22\ ))
-- \ticker_inst|Add0~14\ = CARRY(( \ticker_inst|count\(22) ) + ( GND ) + ( \ticker_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(22),
	cin => \ticker_inst|Add0~22\,
	sumout => \ticker_inst|Add0~13_sumout\,
	cout => \ticker_inst|Add0~14\);

-- Location: FF_X83_Y11_N55
\ticker_inst|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~13_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(22));

-- Location: MLABCELL_X84_Y11_N39
\ticker_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~5_sumout\ = SUM(( \ticker_inst|count\(23) ) + ( GND ) + ( \ticker_inst|Add0~14\ ))
-- \ticker_inst|Add0~6\ = CARRY(( \ticker_inst|count\(23) ) + ( GND ) + ( \ticker_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(23),
	cin => \ticker_inst|Add0~14\,
	sumout => \ticker_inst|Add0~5_sumout\,
	cout => \ticker_inst|Add0~6\);

-- Location: FF_X83_Y12_N58
\ticker_inst|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~5_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(23));

-- Location: MLABCELL_X84_Y11_N42
\ticker_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~9_sumout\ = SUM(( \ticker_inst|count\(24) ) + ( GND ) + ( \ticker_inst|Add0~6\ ))
-- \ticker_inst|Add0~10\ = CARRY(( \ticker_inst|count\(24) ) + ( GND ) + ( \ticker_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_count\(24),
	cin => \ticker_inst|Add0~6\,
	sumout => \ticker_inst|Add0~9_sumout\,
	cout => \ticker_inst|Add0~10\);

-- Location: FF_X84_Y11_N41
\ticker_inst|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~9_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(24));

-- Location: MLABCELL_X84_Y11_N45
\ticker_inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~109_sumout\ = SUM(( \ticker_inst|count\(25) ) + ( GND ) + ( \ticker_inst|Add0~10\ ))
-- \ticker_inst|Add0~110\ = CARRY(( \ticker_inst|count\(25) ) + ( GND ) + ( \ticker_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_count\(25),
	cin => \ticker_inst|Add0~10\,
	sumout => \ticker_inst|Add0~109_sumout\,
	cout => \ticker_inst|Add0~110\);

-- Location: MLABCELL_X84_Y11_N48
\ticker_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~101_sumout\ = SUM(( \ticker_inst|count\(26) ) + ( GND ) + ( \ticker_inst|Add0~110\ ))
-- \ticker_inst|Add0~102\ = CARRY(( \ticker_inst|count\(26) ) + ( GND ) + ( \ticker_inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(26),
	cin => \ticker_inst|Add0~110\,
	sumout => \ticker_inst|Add0~101_sumout\,
	cout => \ticker_inst|Add0~102\);

-- Location: FF_X84_Y12_N35
\ticker_inst|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~101_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(26));

-- Location: MLABCELL_X84_Y11_N51
\ticker_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~1_sumout\ = SUM(( \ticker_inst|count\(27) ) + ( GND ) + ( \ticker_inst|Add0~102\ ))
-- \ticker_inst|Add0~2\ = CARRY(( \ticker_inst|count\(27) ) + ( GND ) + ( \ticker_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_count\(27),
	cin => \ticker_inst|Add0~102\,
	sumout => \ticker_inst|Add0~1_sumout\,
	cout => \ticker_inst|Add0~2\);

-- Location: FF_X84_Y12_N46
\ticker_inst|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~113_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(28));

-- Location: MLABCELL_X84_Y11_N54
\ticker_inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|Add0~113_sumout\ = SUM(( \ticker_inst|count\(28) ) + ( GND ) + ( \ticker_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_count\(28),
	cin => \ticker_inst|Add0~2\,
	sumout => \ticker_inst|Add0~113_sumout\);

-- Location: LABCELL_X85_Y11_N24
\ticker_inst|process_0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~21_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( ((\ticker_inst|Add0~21_sumout\ & ((\ticker_inst|Add0~17_sumout\) # (\ticker_inst|Add0~25_sumout\)))) # (\ticker_inst|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|process_0~21_combout\);

-- Location: LABCELL_X85_Y11_N45
\ticker_inst|LessThan4~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~7_combout\ = ( !\ticker_inst|Add0~29_sumout\ & ( (!\ticker_inst|Add0~13_sumout\ & (!\ticker_inst|Add0~97_sumout\ & !\ticker_inst|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~25_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~29_sumout\,
	combout => \ticker_inst|LessThan4~7_combout\);

-- Location: LABCELL_X85_Y11_N57
\ticker_inst|LessThan4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~5_combout\ = ( \ticker_inst|Add0~85_sumout\ & ( (!\ticker_inst|Add0~93_sumout\ & !\ticker_inst|Add0~89_sumout\) ) ) # ( !\ticker_inst|Add0~85_sumout\ & ( !\ticker_inst|Add0~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~89_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~85_sumout\,
	combout => \ticker_inst|LessThan4~5_combout\);

-- Location: LABCELL_X85_Y11_N30
\ticker_inst|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~1_combout\ = ( \ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|Add0~93_sumout\ & ( (!\ticker_inst|Add0~65_sumout\ & (!\ticker_inst|Add0~77_sumout\ & (!\ticker_inst|Add0~61_sumout\ & !\ticker_inst|Add0~69_sumout\))) ) ) ) # ( 
-- !\ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|Add0~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~73_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan4~1_combout\);

-- Location: LABCELL_X85_Y11_N54
\ticker_inst|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~0_combout\ = ( !\ticker_inst|Add0~57_sumout\ & ( (!\ticker_inst|Add0~45_sumout\ & (!\ticker_inst|Add0~81_sumout\ & (!\ticker_inst|Add0~49_sumout\ & !\ticker_inst|Add0~53_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~53_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~57_sumout\,
	combout => \ticker_inst|LessThan4~0_combout\);

-- Location: LABCELL_X85_Y11_N6
\ticker_inst|LessThan4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~6_combout\ = ( \ticker_inst|LessThan4~0_combout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (!\ticker_inst|LessThan4~5_combout\ & (!\ticker_inst|LessThan4~1_combout\ & \ticker_inst|Add0~37_sumout\))) ) ) ) 
-- # ( !\ticker_inst|LessThan4~0_combout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (!\ticker_inst|LessThan4~5_combout\ & \ticker_inst|Add0~37_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan4~5_combout\,
	datac => \ticker_inst|ALT_INV_LessThan4~1_combout\,
	datad => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan4~0_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan4~6_combout\);

-- Location: LABCELL_X85_Y11_N0
\ticker_inst|process_0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~35_combout\ = ( \ticker_inst|LessThan4~7_combout\ & ( \ticker_inst|LessThan4~6_combout\ & ( (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~109_sumout\ & ((\ticker_inst|Add0~9_sumout\))) # (\ticker_inst|Add0~109_sumout\ & 
-- ((!\ticker_inst|process_0~21_combout\) # (!\ticker_inst|Add0~9_sumout\))))) ) ) ) # ( !\ticker_inst|LessThan4~7_combout\ & ( \ticker_inst|LessThan4~6_combout\ & ( (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~109_sumout\ & 
-- ((\ticker_inst|Add0~9_sumout\))) # (\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|process_0~21_combout\) # (!\ticker_inst|Add0~9_sumout\))))) ) ) ) # ( \ticker_inst|LessThan4~7_combout\ & ( !\ticker_inst|LessThan4~6_combout\ & ( 
-- (\ticker_inst|Add0~101_sumout\ & ((\ticker_inst|Add0~9_sumout\) # (\ticker_inst|Add0~109_sumout\))) ) ) ) # ( !\ticker_inst|LessThan4~7_combout\ & ( !\ticker_inst|LessThan4~6_combout\ & ( (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~109_sumout\ & 
-- ((\ticker_inst|Add0~9_sumout\))) # (\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|process_0~21_combout\) # (!\ticker_inst|Add0~9_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110010000100010011001100010001001100100001000100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~21_combout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan4~7_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan4~6_combout\,
	combout => \ticker_inst|process_0~35_combout\);

-- Location: MLABCELL_X84_Y10_N30
\ticker_inst|process_0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~15_combout\ = ( \ticker_inst|Add0~109_sumout\ & ( \ticker_inst|Add0~1_sumout\ & ( !\ticker_inst|Add0~101_sumout\ ) ) ) # ( !\ticker_inst|Add0~109_sumout\ & ( \ticker_inst|Add0~1_sumout\ & ( !\ticker_inst|Add0~101_sumout\ ) ) ) # ( 
-- \ticker_inst|Add0~109_sumout\ & ( !\ticker_inst|Add0~1_sumout\ & ( (\ticker_inst|Add0~9_sumout\ & \ticker_inst|Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~1_sumout\,
	combout => \ticker_inst|process_0~15_combout\);

-- Location: LABCELL_X83_Y11_N12
\ticker_inst|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~2_combout\ = ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~93_sumout\ & (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|Add0~97_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~97_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan2~2_combout\);

-- Location: LABCELL_X83_Y12_N33
\ticker_inst|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~0_combout\ = ( \ticker_inst|Add0~25_sumout\ & ( \ticker_inst|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~25_sumout\,
	combout => \ticker_inst|LessThan3~0_combout\);

-- Location: LABCELL_X83_Y12_N42
\ticker_inst|process_0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~17_combout\ = ( !\ticker_inst|Add0~5_sumout\ & ( (!\ticker_inst|Add0~21_sumout\ & !\ticker_inst|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|process_0~17_combout\);

-- Location: MLABCELL_X84_Y10_N36
\ticker_inst|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~5_combout\ = ( \ticker_inst|Add0~81_sumout\ & ( \ticker_inst|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~57_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~81_sumout\,
	combout => \ticker_inst|LessThan3~5_combout\);

-- Location: MLABCELL_X84_Y10_N57
\ticker_inst|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~3_combout\ = ( !\ticker_inst|Add0~89_sumout\ & ( !\ticker_inst|Add0~85_sumout\ & ( (!\ticker_inst|Add0~81_sumout\) # (!\ticker_inst|Add0~49_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~89_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~85_sumout\,
	combout => \ticker_inst|LessThan3~3_combout\);

-- Location: LABCELL_X85_Y13_N51
\ticker_inst|LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~1_combout\ = ( !\ticker_inst|Add0~61_sumout\ & ( !\ticker_inst|Add0~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~105_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~61_sumout\,
	combout => \ticker_inst|LessThan11~1_combout\);

-- Location: LABCELL_X85_Y13_N24
\ticker_inst|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~4_combout\ = ( \ticker_inst|Add0~45_sumout\ & ( \ticker_inst|LessThan11~1_combout\ & ( (\ticker_inst|Add0~73_sumout\ & \ticker_inst|Add0~77_sumout\) ) ) ) # ( \ticker_inst|Add0~45_sumout\ & ( !\ticker_inst|LessThan11~1_combout\ & ( 
-- (\ticker_inst|Add0~73_sumout\ & (((\ticker_inst|Add0~69_sumout\ & \ticker_inst|Add0~65_sumout\)) # (\ticker_inst|Add0~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000111100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~45_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan11~1_combout\,
	combout => \ticker_inst|LessThan3~4_combout\);

-- Location: MLABCELL_X84_Y10_N18
\ticker_inst|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~6_combout\ = ( \ticker_inst|LessThan3~4_combout\ & ( \ticker_inst|Add0~17_sumout\ & ( (\ticker_inst|Add0~25_sumout\ & ((!\ticker_inst|LessThan3~3_combout\) # (\ticker_inst|LessThan3~5_combout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan3~4_combout\ & ( \ticker_inst|Add0~17_sumout\ & ( (\ticker_inst|Add0~25_sumout\ & ((!\ticker_inst|LessThan3~3_combout\) # ((\ticker_inst|LessThan3~5_combout\ & \ticker_inst|Add0~53_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan3~5_combout\,
	datab => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan3~3_combout\,
	datae => \ticker_inst|ALT_INV_LessThan3~4_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~17_sumout\,
	combout => \ticker_inst|LessThan3~6_combout\);

-- Location: MLABCELL_X84_Y12_N12
\ticker_inst|process_0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~34_combout\ = ( \ticker_inst|process_0~17_combout\ & ( \ticker_inst|LessThan3~6_combout\ & ( (!\ticker_inst|LessThan2~2_combout\ & (!\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|Add0~29_sumout\) # 
-- (!\ticker_inst|LessThan3~0_combout\)))) ) ) ) # ( \ticker_inst|process_0~17_combout\ & ( !\ticker_inst|LessThan3~6_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|Add0~29_sumout\) # (!\ticker_inst|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001010000000000000000000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan2~2_combout\,
	datac => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan3~0_combout\,
	datae => \ticker_inst|ALT_INV_process_0~17_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan3~6_combout\,
	combout => \ticker_inst|process_0~34_combout\);

-- Location: LABCELL_X85_Y11_N48
\ticker_inst|LessThan5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~5_combout\ = ( \ticker_inst|Add0~21_sumout\ & ( \ticker_inst|Add0~37_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~17_sumout\ & (\ticker_inst|Add0~93_sumout\ & \ticker_inst|Add0~41_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~21_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~37_sumout\,
	combout => \ticker_inst|LessThan5~5_combout\);

-- Location: LABCELL_X85_Y10_N12
\ticker_inst|LessThan5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~3_combout\ = ( \ticker_inst|Add0~37_sumout\ & ( \ticker_inst|Add0~41_sumout\ & ( (\ticker_inst|Add0~85_sumout\ & (\ticker_inst|Add0~33_sumout\ & \ticker_inst|Add0~89_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~37_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~41_sumout\,
	combout => \ticker_inst|LessThan5~3_combout\);

-- Location: LABCELL_X85_Y11_N27
\ticker_inst|process_0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~32_combout\ = ( \ticker_inst|Add0~29_sumout\ & ( (\ticker_inst|Add0~21_sumout\ & ((\ticker_inst|Add0~17_sumout\) # (\ticker_inst|Add0~25_sumout\))) ) ) # ( !\ticker_inst|Add0~29_sumout\ & ( (\ticker_inst|Add0~21_sumout\ & 
-- (((\ticker_inst|Add0~97_sumout\ & \ticker_inst|Add0~17_sumout\)) # (\ticker_inst|Add0~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010011000100010001001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~29_sumout\,
	combout => \ticker_inst|process_0~32_combout\);

-- Location: LABCELL_X85_Y11_N12
\ticker_inst|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~0_combout\ = ( \ticker_inst|Add0~73_sumout\ & ( \ticker_inst|Add0~61_sumout\ & ( (((\ticker_inst|Add0~77_sumout\) # (\ticker_inst|Add0~65_sumout\)) # (\ticker_inst|Add0~69_sumout\)) # (\ticker_inst|Add0~105_sumout\) ) ) ) # ( 
-- \ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|Add0~61_sumout\ & ( ((\ticker_inst|Add0~77_sumout\) # (\ticker_inst|Add0~65_sumout\)) # (\ticker_inst|Add0~69_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111111111111100000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~105_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~73_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~61_sumout\,
	combout => \ticker_inst|LessThan5~0_combout\);

-- Location: LABCELL_X85_Y11_N42
\ticker_inst|LessThan5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~6_combout\ = ( \ticker_inst|LessThan5~0_combout\ & ( (\ticker_inst|Add0~21_sumout\ & \ticker_inst|Add0~17_sumout\) ) ) # ( !\ticker_inst|LessThan5~0_combout\ & ( (\ticker_inst|Add0~21_sumout\ & (\ticker_inst|Add0~17_sumout\ & 
-- !\ticker_inst|LessThan4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan4~0_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan5~0_combout\,
	combout => \ticker_inst|LessThan5~6_combout\);

-- Location: LABCELL_X85_Y11_N36
\ticker_inst|process_0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~33_combout\ = ( !\ticker_inst|process_0~32_combout\ & ( \ticker_inst|LessThan5~6_combout\ & ( (!\ticker_inst|LessThan5~5_combout\ & (!\ticker_inst|Add0~13_sumout\ & (!\ticker_inst|Add0~1_sumout\ & 
-- !\ticker_inst|LessThan5~3_combout\))) ) ) ) # ( !\ticker_inst|process_0~32_combout\ & ( !\ticker_inst|LessThan5~6_combout\ & ( (!\ticker_inst|LessThan5~5_combout\ & (!\ticker_inst|Add0~13_sumout\ & !\ticker_inst|Add0~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan5~5_combout\,
	datab => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan5~3_combout\,
	datae => \ticker_inst|ALT_INV_process_0~32_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan5~6_combout\,
	combout => \ticker_inst|process_0~33_combout\);

-- Location: MLABCELL_X84_Y13_N48
\ticker_inst|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~9_combout\ = ( \ticker_inst|Add0~53_sumout\ & ( !\ticker_inst|Add0~57_sumout\ & ( (!\ticker_inst|Add0~45_sumout\) # ((!\ticker_inst|Add0~73_sumout\ & ((!\ticker_inst|Add0~69_sumout\) # (!\ticker_inst|Add0~77_sumout\)))) ) ) ) # ( 
-- !\ticker_inst|Add0~53_sumout\ & ( !\ticker_inst|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111101111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~53_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~57_sumout\,
	combout => \ticker_inst|process_0~9_combout\);

-- Location: LABCELL_X85_Y10_N36
\ticker_inst|process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~10_combout\ = ( !\ticker_inst|Add0~93_sumout\ & ( \ticker_inst|process_0~9_combout\ & ( (!\ticker_inst|Add0~89_sumout\ & ((!\ticker_inst|Add0~81_sumout\) # (!\ticker_inst|Add0~85_sumout\))) ) ) ) # ( !\ticker_inst|Add0~93_sumout\ & 
-- ( !\ticker_inst|process_0~9_combout\ & ( (!\ticker_inst|Add0~89_sumout\ & ((!\ticker_inst|Add0~85_sumout\) # ((!\ticker_inst|Add0~49_sumout\ & !\ticker_inst|Add0~81_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000000000000000000011001100110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~93_sumout\,
	dataf => \ticker_inst|ALT_INV_process_0~9_combout\,
	combout => \ticker_inst|process_0~10_combout\);

-- Location: LABCELL_X85_Y10_N48
\ticker_inst|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~0_combout\ = ( \ticker_inst|Add0~97_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~29_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~97_sumout\,
	combout => \ticker_inst|LessThan7~0_combout\);

-- Location: LABCELL_X85_Y10_N30
\ticker_inst|LessThan5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~4_combout\ = ( \ticker_inst|Add0~21_sumout\ & ( \ticker_inst|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~25_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~21_sumout\,
	combout => \ticker_inst|LessThan5~4_combout\);

-- Location: LABCELL_X85_Y10_N18
\ticker_inst|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~0_combout\ = ( !\ticker_inst|Add0~5_sumout\ & ( !\ticker_inst|Add0~9_sumout\ & ( (!\ticker_inst|Add0~13_sumout\ & ((!\ticker_inst|Add0~17_sumout\) # ((!\ticker_inst|Add0~25_sumout\) # (!\ticker_inst|Add0~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~5_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~9_sumout\,
	combout => \ticker_inst|process_0~0_combout\);

-- Location: LABCELL_X85_Y10_N54
\ticker_inst|process_0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~31_combout\ = ( !\ticker_inst|Add0~101_sumout\ & ( \ticker_inst|process_0~0_combout\ & ( (!\ticker_inst|process_0~10_combout\ & (\ticker_inst|Add0~109_sumout\ & (\ticker_inst|LessThan7~0_combout\ & 
-- \ticker_inst|LessThan5~4_combout\))) ) ) ) # ( !\ticker_inst|Add0~101_sumout\ & ( !\ticker_inst|process_0~0_combout\ & ( \ticker_inst|Add0~109_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~10_combout\,
	datab => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan7~0_combout\,
	datad => \ticker_inst|ALT_INV_LessThan5~4_combout\,
	datae => \ticker_inst|ALT_INV_Add0~101_sumout\,
	dataf => \ticker_inst|ALT_INV_process_0~0_combout\,
	combout => \ticker_inst|process_0~31_combout\);

-- Location: LABCELL_X85_Y12_N12
\ticker_inst|disp_hex0[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0[3]~4_combout\ = ( \ticker_inst|process_0~33_combout\ & ( \ticker_inst|process_0~31_combout\ & ( (\ticker_inst|process_0~35_combout\ & (!\ticker_inst|process_0~34_combout\ & !\ticker_inst|Add0~1_sumout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~33_combout\ & ( \ticker_inst|process_0~31_combout\ & ( (\ticker_inst|process_0~35_combout\ & (!\ticker_inst|process_0~34_combout\ & !\ticker_inst|Add0~1_sumout\)) ) ) ) # ( \ticker_inst|process_0~33_combout\ & ( 
-- !\ticker_inst|process_0~31_combout\ & ( (\ticker_inst|process_0~35_combout\ & (!\ticker_inst|process_0~34_combout\ & !\ticker_inst|Add0~1_sumout\)) ) ) ) # ( !\ticker_inst|process_0~33_combout\ & ( !\ticker_inst|process_0~31_combout\ & ( 
-- ((\ticker_inst|process_0~35_combout\ & (!\ticker_inst|process_0~34_combout\ & !\ticker_inst|Add0~1_sumout\))) # (\ticker_inst|process_0~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011010100000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~35_combout\,
	datab => \ticker_inst|ALT_INV_process_0~15_combout\,
	datac => \ticker_inst|ALT_INV_process_0~34_combout\,
	datad => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~33_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~31_combout\,
	combout => \ticker_inst|disp_hex0[3]~4_combout\);

-- Location: LABCELL_X83_Y13_N9
\ticker_inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~0_combout\ = ( !\ticker_inst|Add0~81_sumout\ & ( !\ticker_inst|Add0~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~85_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~81_sumout\,
	combout => \ticker_inst|LessThan0~0_combout\);

-- Location: LABCELL_X83_Y13_N39
\ticker_inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~1_combout\ = ( \ticker_inst|Add0~77_sumout\ & ( (\ticker_inst|Add0~73_sumout\ & (((\ticker_inst|Add0~61_sumout\ & \ticker_inst|Add0~65_sumout\)) # (\ticker_inst|Add0~69_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101110000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~73_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~77_sumout\,
	combout => \ticker_inst|LessThan0~1_combout\);

-- Location: LABCELL_X83_Y13_N12
\ticker_inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~2_combout\ = ( \ticker_inst|LessThan0~1_combout\ & ( (\ticker_inst|Add0~49_sumout\ & ((\ticker_inst|Add0~53_sumout\) # (\ticker_inst|Add0~57_sumout\))) ) ) # ( !\ticker_inst|LessThan0~1_combout\ & ( (\ticker_inst|Add0~49_sumout\ & 
-- (((\ticker_inst|Add0~45_sumout\ & \ticker_inst|Add0~53_sumout\)) # (\ticker_inst|Add0~57_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110111000000000011011100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~1_combout\,
	combout => \ticker_inst|LessThan0~2_combout\);

-- Location: LABCELL_X83_Y13_N24
\ticker_inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~0_combout\ = ( \ticker_inst|Add0~89_sumout\ & ( \ticker_inst|Add0~33_sumout\ & ( (\ticker_inst|Add0~93_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|Add0~41_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~89_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~33_sumout\,
	combout => \ticker_inst|LessThan1~0_combout\);

-- Location: LABCELL_X83_Y13_N48
\ticker_inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~3_combout\ = ( \ticker_inst|Add0~17_sumout\ & ( \ticker_inst|LessThan1~0_combout\ & ( (\ticker_inst|Add0~29_sumout\ & (((!\ticker_inst|LessThan0~0_combout\) # (\ticker_inst|LessThan0~2_combout\)) # (\ticker_inst|Add0~97_sumout\))) ) 
-- ) ) # ( \ticker_inst|Add0~17_sumout\ & ( !\ticker_inst|LessThan1~0_combout\ & ( (\ticker_inst|Add0~97_sumout\ & \ticker_inst|Add0~29_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan0~0_combout\,
	datac => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan0~2_combout\,
	datae => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~0_combout\,
	combout => \ticker_inst|LessThan0~3_combout\);

-- Location: LABCELL_X83_Y11_N57
\ticker_inst|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~5_combout\ = ( !\ticker_inst|Add0~101_sumout\ & ( \ticker_inst|Add0~109_sumout\ & ( (!\ticker_inst|Add0~9_sumout\ & !\ticker_inst|Add0~5_sumout\) ) ) ) # ( !\ticker_inst|Add0~101_sumout\ & ( !\ticker_inst|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~101_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~109_sumout\,
	combout => \ticker_inst|LessThan0~5_combout\);

-- Location: MLABCELL_X82_Y12_N36
\ticker_inst|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~0_combout\ = ( \ticker_inst|Add0~45_sumout\ & ( \ticker_inst|Add0~73_sumout\ & ( (!\ticker_inst|Add0~77_sumout\ & (!\ticker_inst|Add0~53_sumout\ & ((!\ticker_inst|Add0~69_sumout\) # (!\ticker_inst|Add0~65_sumout\)))) ) ) ) # ( 
-- !\ticker_inst|Add0~45_sumout\ & ( \ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|Add0~53_sumout\ ) ) ) # ( \ticker_inst|Add0~45_sumout\ & ( !\ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|Add0~53_sumout\ ) ) ) # ( !\ticker_inst|Add0~45_sumout\ & ( 
-- !\ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|Add0~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~45_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan2~0_combout\);

-- Location: MLABCELL_X82_Y12_N54
\ticker_inst|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~1_combout\ = ( !\ticker_inst|Add0~85_sumout\ & ( \ticker_inst|Add0~81_sumout\ & ( (!\ticker_inst|Add0~89_sumout\ & (!\ticker_inst|Add0~49_sumout\ & ((!\ticker_inst|Add0~57_sumout\) # (\ticker_inst|LessThan2~0_combout\)))) ) ) ) # ( 
-- !\ticker_inst|Add0~85_sumout\ & ( !\ticker_inst|Add0~81_sumout\ & ( !\ticker_inst|Add0~89_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000010110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan2~0_combout\,
	datac => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~85_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~81_sumout\,
	combout => \ticker_inst|LessThan2~1_combout\);

-- Location: LABCELL_X83_Y12_N0
\ticker_inst|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~3_combout\ = ( \ticker_inst|LessThan2~2_combout\ & ( \ticker_inst|LessThan2~1_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & (\ticker_inst|process_0~17_combout\ & ((!\ticker_inst|LessThan3~0_combout\) # 
-- (!\ticker_inst|Add0~29_sumout\)))) ) ) ) # ( !\ticker_inst|LessThan2~2_combout\ & ( \ticker_inst|LessThan2~1_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & (\ticker_inst|process_0~17_combout\ & ((!\ticker_inst|LessThan3~0_combout\) # 
-- (!\ticker_inst|Add0~29_sumout\)))) ) ) ) # ( \ticker_inst|LessThan2~2_combout\ & ( !\ticker_inst|LessThan2~1_combout\ & ( (!\ticker_inst|LessThan3~0_combout\ & (!\ticker_inst|Add0~109_sumout\ & \ticker_inst|process_0~17_combout\)) ) ) ) # ( 
-- !\ticker_inst|LessThan2~2_combout\ & ( !\ticker_inst|LessThan2~1_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & (\ticker_inst|process_0~17_combout\ & ((!\ticker_inst|LessThan3~0_combout\) # (!\ticker_inst|Add0~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001010000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan3~0_combout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~17_combout\,
	datae => \ticker_inst|ALT_INV_LessThan2~2_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan2~1_combout\,
	combout => \ticker_inst|LessThan2~3_combout\);

-- Location: LABCELL_X83_Y12_N39
\ticker_inst|process_0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~18_combout\ = ( \ticker_inst|Add0~109_sumout\ & ( \ticker_inst|Add0~101_sumout\ ) ) # ( !\ticker_inst|Add0~109_sumout\ & ( (\ticker_inst|Add0~9_sumout\ & \ticker_inst|Add0~101_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~109_sumout\,
	combout => \ticker_inst|process_0~18_combout\);

-- Location: MLABCELL_X82_Y11_N12
\ticker_inst|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~4_combout\ = ( !\ticker_inst|Add0~9_sumout\ & ( !\ticker_inst|Add0~101_sumout\ & ( (!\ticker_inst|Add0~25_sumout\ & (!\ticker_inst|Add0~21_sumout\ & !\ticker_inst|Add0~13_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~101_sumout\,
	combout => \ticker_inst|LessThan0~4_combout\);

-- Location: LABCELL_X83_Y11_N15
\ticker_inst|LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~6_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( (\ticker_inst|Add0~29_sumout\ & \ticker_inst|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|LessThan1~6_combout\);

-- Location: LABCELL_X83_Y11_N6
\ticker_inst|LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~7_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( (!\ticker_inst|Add0~25_sumout\ & (!\ticker_inst|Add0~13_sumout\ & (!\ticker_inst|Add0~21_sumout\ & !\ticker_inst|Add0~9_sumout\))) ) ) # ( !\ticker_inst|Add0~5_sumout\ & ( 
-- !\ticker_inst|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|LessThan1~7_combout\);

-- Location: LABCELL_X83_Y11_N27
\ticker_inst|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~4_combout\ = ( \ticker_inst|Add0~49_sumout\ & ( (!\ticker_inst|Add0~81_sumout\ & (!\ticker_inst|Add0~57_sumout\ & !\ticker_inst|Add0~85_sumout\)) ) ) # ( !\ticker_inst|Add0~49_sumout\ & ( (!\ticker_inst|Add0~81_sumout\ & 
-- !\ticker_inst|Add0~85_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~85_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~49_sumout\,
	combout => \ticker_inst|LessThan1~4_combout\);

-- Location: LABCELL_X83_Y11_N30
\ticker_inst|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~2_combout\ = ( \ticker_inst|Add0~65_sumout\ & ( \ticker_inst|Add0~61_sumout\ & ( (!\ticker_inst|Add0~105_sumout\ & !\ticker_inst|Add0~69_sumout\) ) ) ) # ( !\ticker_inst|Add0~65_sumout\ & ( \ticker_inst|Add0~61_sumout\ & ( 
-- !\ticker_inst|Add0~69_sumout\ ) ) ) # ( \ticker_inst|Add0~65_sumout\ & ( !\ticker_inst|Add0~61_sumout\ & ( !\ticker_inst|Add0~69_sumout\ ) ) ) # ( !\ticker_inst|Add0~65_sumout\ & ( !\ticker_inst|Add0~61_sumout\ & ( !\ticker_inst|Add0~69_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~105_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~65_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~61_sumout\,
	combout => \ticker_inst|LessThan1~2_combout\);

-- Location: LABCELL_X83_Y11_N36
\ticker_inst|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~3_combout\ = ( \ticker_inst|Add0~45_sumout\ & ( \ticker_inst|Add0~49_sumout\ & ( \ticker_inst|Add0~53_sumout\ ) ) ) # ( !\ticker_inst|Add0~45_sumout\ & ( \ticker_inst|Add0~49_sumout\ & ( (\ticker_inst|Add0~77_sumout\ & 
-- (\ticker_inst|Add0~53_sumout\ & (\ticker_inst|Add0~73_sumout\ & !\ticker_inst|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan1~2_combout\,
	datae => \ticker_inst|ALT_INV_Add0~45_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~49_sumout\,
	combout => \ticker_inst|LessThan1~3_combout\);

-- Location: LABCELL_X83_Y13_N33
\ticker_inst|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~1_combout\ = ( \ticker_inst|Add0~89_sumout\ & ( \ticker_inst|Add0~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~89_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan1~1_combout\);

-- Location: LABCELL_X83_Y11_N48
\ticker_inst|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~5_combout\ = ( \ticker_inst|LessThan1~3_combout\ & ( \ticker_inst|LessThan1~1_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~33_sumout\)) ) ) ) # ( !\ticker_inst|LessThan1~3_combout\ & 
-- ( \ticker_inst|LessThan1~1_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~41_sumout\ & (!\ticker_inst|LessThan1~4_combout\ & \ticker_inst|Add0~33_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan1~4_combout\,
	datad => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan1~3_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~1_combout\,
	combout => \ticker_inst|LessThan1~5_combout\);

-- Location: LABCELL_X83_Y11_N0
\ticker_inst|disp_hex0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~0_combout\ = ( \ticker_inst|LessThan1~7_combout\ & ( \ticker_inst|LessThan1~5_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~109_sumout\) # (!\ticker_inst|LessThan1~6_combout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan1~7_combout\ & ( \ticker_inst|LessThan1~5_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & !\ticker_inst|Add0~109_sumout\) ) ) ) # ( \ticker_inst|LessThan1~7_combout\ & ( !\ticker_inst|LessThan1~5_combout\ & ( 
-- (!\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~97_sumout\) # ((!\ticker_inst|Add0~109_sumout\) # (!\ticker_inst|LessThan1~6_combout\)))) ) ) ) # ( !\ticker_inst|LessThan1~7_combout\ & ( !\ticker_inst|LessThan1~5_combout\ & ( 
-- (!\ticker_inst|Add0~101_sumout\ & !\ticker_inst|Add0~109_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110011001100100011000000110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan1~6_combout\,
	datae => \ticker_inst|ALT_INV_LessThan1~7_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~5_combout\,
	combout => \ticker_inst|disp_hex0~0_combout\);

-- Location: LABCELL_X83_Y12_N12
\ticker_inst|disp_hex0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~1_combout\ = ( \ticker_inst|LessThan0~4_combout\ & ( \ticker_inst|disp_hex0~0_combout\ & ( (\ticker_inst|LessThan0~3_combout\ & !\ticker_inst|LessThan0~5_combout\) ) ) ) # ( !\ticker_inst|LessThan0~4_combout\ & ( 
-- \ticker_inst|disp_hex0~0_combout\ & ( !\ticker_inst|LessThan0~5_combout\ ) ) ) # ( \ticker_inst|LessThan0~4_combout\ & ( !\ticker_inst|disp_hex0~0_combout\ & ( (\ticker_inst|LessThan0~3_combout\ & (!\ticker_inst|LessThan0~5_combout\ & 
-- (!\ticker_inst|LessThan2~3_combout\ & \ticker_inst|process_0~18_combout\))) ) ) ) # ( !\ticker_inst|LessThan0~4_combout\ & ( !\ticker_inst|disp_hex0~0_combout\ & ( (!\ticker_inst|LessThan0~5_combout\ & (!\ticker_inst|LessThan2~3_combout\ & 
-- \ticker_inst|process_0~18_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000100000011001100110011000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan0~3_combout\,
	datab => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	datac => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	datad => \ticker_inst|ALT_INV_process_0~18_combout\,
	datae => \ticker_inst|ALT_INV_LessThan0~4_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	combout => \ticker_inst|disp_hex0~1_combout\);

-- Location: LABCELL_X85_Y13_N12
\ticker_inst|LessThan11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~2_combout\ = ( \ticker_inst|Add0~73_sumout\ & ( \ticker_inst|LessThan11~1_combout\ & ( \ticker_inst|Add0~45_sumout\ ) ) ) # ( !\ticker_inst|Add0~73_sumout\ & ( \ticker_inst|LessThan11~1_combout\ & ( (\ticker_inst|Add0~45_sumout\ & 
-- ((\ticker_inst|Add0~77_sumout\) # (\ticker_inst|Add0~69_sumout\))) ) ) ) # ( \ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|LessThan11~1_combout\ & ( \ticker_inst|Add0~45_sumout\ ) ) ) # ( !\ticker_inst|Add0~73_sumout\ & ( 
-- !\ticker_inst|LessThan11~1_combout\ & ( (\ticker_inst|Add0~45_sumout\ & (((\ticker_inst|Add0~77_sumout\) # (\ticker_inst|Add0~65_sumout\)) # (\ticker_inst|Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000011110000111100000101000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~73_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan11~1_combout\,
	combout => \ticker_inst|LessThan11~2_combout\);

-- Location: LABCELL_X85_Y13_N48
\ticker_inst|LessThan11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~3_combout\ = ( \ticker_inst|Add0~97_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~37_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~37_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~97_sumout\,
	combout => \ticker_inst|LessThan11~3_combout\);

-- Location: LABCELL_X85_Y13_N45
\ticker_inst|LessThan11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~4_combout\ = ( \ticker_inst|Add0~37_sumout\ & ( \ticker_inst|Add0~97_sumout\ & ( (\ticker_inst|Add0~89_sumout\ & (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~93_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~37_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~97_sumout\,
	combout => \ticker_inst|LessThan11~4_combout\);

-- Location: MLABCELL_X87_Y12_N15
\ticker_inst|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~0_combout\ = ( !\ticker_inst|Add0~85_sumout\ & ( (!\ticker_inst|Add0~53_sumout\ & (!\ticker_inst|Add0~57_sumout\ & (!\ticker_inst|Add0~49_sumout\ & !\ticker_inst|Add0~81_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~81_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~85_sumout\,
	combout => \ticker_inst|LessThan10~0_combout\);

-- Location: LABCELL_X85_Y13_N54
\ticker_inst|LessThan11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~5_combout\ = ( !\ticker_inst|Add0~29_sumout\ & ( \ticker_inst|LessThan10~0_combout\ & ( (!\ticker_inst|Add0~17_sumout\ & (!\ticker_inst|LessThan11~3_combout\ & ((!\ticker_inst|LessThan11~2_combout\) # 
-- (!\ticker_inst|LessThan11~4_combout\)))) ) ) ) # ( !\ticker_inst|Add0~29_sumout\ & ( !\ticker_inst|LessThan10~0_combout\ & ( (!\ticker_inst|Add0~17_sumout\ & (!\ticker_inst|LessThan11~3_combout\ & !\ticker_inst|LessThan11~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000010100000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan11~2_combout\,
	datac => \ticker_inst|ALT_INV_LessThan11~3_combout\,
	datad => \ticker_inst|ALT_INV_LessThan11~4_combout\,
	datae => \ticker_inst|ALT_INV_Add0~29_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan10~0_combout\,
	combout => \ticker_inst|LessThan11~5_combout\);

-- Location: LABCELL_X85_Y13_N39
\ticker_inst|LessThan11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~6_combout\ = ( \ticker_inst|Add0~109_sumout\ & ( \ticker_inst|Add0~101_sumout\ & ( (\ticker_inst|Add0~1_sumout\ & \ticker_inst|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~101_sumout\,
	combout => \ticker_inst|LessThan11~6_combout\);

-- Location: LABCELL_X85_Y13_N6
\ticker_inst|LessThan11~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~7_combout\ = ( \ticker_inst|LessThan11~5_combout\ & ( \ticker_inst|LessThan11~6_combout\ & ( ((\ticker_inst|Add0~21_sumout\ & \ticker_inst|Add0~13_sumout\)) # (\ticker_inst|Add0~5_sumout\) ) ) ) # ( 
-- !\ticker_inst|LessThan11~5_combout\ & ( \ticker_inst|LessThan11~6_combout\ & ( ((\ticker_inst|Add0~13_sumout\ & ((\ticker_inst|Add0~25_sumout\) # (\ticker_inst|Add0~21_sumout\)))) # (\ticker_inst|Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan11~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan11~6_combout\,
	combout => \ticker_inst|LessThan11~7_combout\);

-- Location: LABCELL_X83_Y11_N21
\ticker_inst|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~4_combout\ = ( !\ticker_inst|Add0~21_sumout\ & ( (!\ticker_inst|Add0~25_sumout\ & (!\ticker_inst|Add0~17_sumout\ & ((!\ticker_inst|Add0~29_sumout\) # (!\ticker_inst|Add0~97_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~21_sumout\,
	combout => \ticker_inst|process_0~4_combout\);

-- Location: MLABCELL_X84_Y13_N36
\ticker_inst|LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~2_combout\ = ( \ticker_inst|Add0~29_sumout\ & ( (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~37_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~29_sumout\,
	combout => \ticker_inst|LessThan9~2_combout\);

-- Location: MLABCELL_X84_Y13_N0
\ticker_inst|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~1_combout\ = ( \ticker_inst|Add0~69_sumout\ & ( (\ticker_inst|Add0~65_sumout\ & \ticker_inst|Add0~61_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~61_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~69_sumout\,
	combout => \ticker_inst|process_0~1_combout\);

-- Location: MLABCELL_X84_Y13_N54
\ticker_inst|process_0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~25_combout\ = ( \ticker_inst|process_0~1_combout\ & ( \ticker_inst|Add0~57_sumout\ & ( \ticker_inst|Add0~53_sumout\ ) ) ) # ( !\ticker_inst|process_0~1_combout\ & ( \ticker_inst|Add0~57_sumout\ & ( (\ticker_inst|Add0~53_sumout\ & 
-- (((\ticker_inst|Add0~77_sumout\) # (\ticker_inst|Add0~73_sumout\)) # (\ticker_inst|Add0~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~1_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~57_sumout\,
	combout => \ticker_inst|process_0~25_combout\);

-- Location: MLABCELL_X82_Y11_N39
\ticker_inst|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~1_combout\ = ( \ticker_inst|Add0~89_sumout\ & ( \ticker_inst|Add0~93_sumout\ & ( (\ticker_inst|Add0~81_sumout\ & \ticker_inst|Add0~85_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~89_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan9~1_combout\);

-- Location: MLABCELL_X84_Y13_N21
\ticker_inst|process_0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~26_combout\ = ( !\ticker_inst|Add0~33_sumout\ & ( \ticker_inst|LessThan9~1_combout\ & ( (!\ticker_inst|Add0~49_sumout\ & !\ticker_inst|process_0~25_combout\) ) ) ) # ( !\ticker_inst|Add0~33_sumout\ & ( 
-- !\ticker_inst|LessThan9~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~25_combout\,
	datae => \ticker_inst|ALT_INV_Add0~33_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~1_combout\,
	combout => \ticker_inst|process_0~26_combout\);

-- Location: LABCELL_X83_Y11_N18
\ticker_inst|LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~8_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( \ticker_inst|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|LessThan1~8_combout\);

-- Location: MLABCELL_X84_Y13_N30
\ticker_inst|process_0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~27_combout\ = ( \ticker_inst|process_0~26_combout\ & ( \ticker_inst|LessThan1~8_combout\ & ( (!\ticker_inst|process_0~4_combout\ & \ticker_inst|Add0~101_sumout\) ) ) ) # ( !\ticker_inst|process_0~26_combout\ & ( 
-- \ticker_inst|LessThan1~8_combout\ & ( (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|process_0~4_combout\) # (\ticker_inst|LessThan9~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_process_0~4_combout\,
	datac => \ticker_inst|ALT_INV_LessThan9~2_combout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~26_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~8_combout\,
	combout => \ticker_inst|process_0~27_combout\);

-- Location: LABCELL_X83_Y12_N54
\ticker_inst|LessThan7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~7_combout\ = ( \ticker_inst|Add0~49_sumout\ & ( \ticker_inst|Add0~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~49_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~85_sumout\,
	combout => \ticker_inst|LessThan7~7_combout\);

-- Location: LABCELL_X85_Y13_N33
\ticker_inst|LessThan7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~4_combout\ = ( !\ticker_inst|Add0~65_sumout\ & ( (!\ticker_inst|Add0~61_sumout\ & !\ticker_inst|Add0~105_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~105_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~65_sumout\,
	combout => \ticker_inst|LessThan7~4_combout\);

-- Location: LABCELL_X85_Y13_N18
\ticker_inst|LessThan7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~5_combout\ = ( \ticker_inst|Add0~53_sumout\ & ( \ticker_inst|LessThan7~4_combout\ & ( (\ticker_inst|Add0~73_sumout\ & \ticker_inst|Add0~45_sumout\) ) ) ) # ( \ticker_inst|Add0~53_sumout\ & ( !\ticker_inst|LessThan7~4_combout\ & ( 
-- (\ticker_inst|Add0~45_sumout\ & (((\ticker_inst|Add0~77_sumout\ & \ticker_inst|Add0~69_sumout\)) # (\ticker_inst|Add0~73_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101011100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~53_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan7~4_combout\,
	combout => \ticker_inst|LessThan7~5_combout\);

-- Location: LABCELL_X83_Y10_N27
\ticker_inst|LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~6_combout\ = ( \ticker_inst|Add0~81_sumout\ & ( \ticker_inst|Add0~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~81_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~85_sumout\,
	combout => \ticker_inst|LessThan7~6_combout\);

-- Location: MLABCELL_X84_Y12_N0
\ticker_inst|LessThan7~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~8_combout\ = ( \ticker_inst|LessThan7~5_combout\ & ( !\ticker_inst|LessThan7~6_combout\ & ( (!\ticker_inst|LessThan7~7_combout\ & (!\ticker_inst|Add0~93_sumout\ & !\ticker_inst|Add0~89_sumout\)) ) ) ) # ( 
-- !\ticker_inst|LessThan7~5_combout\ & ( !\ticker_inst|LessThan7~6_combout\ & ( (!\ticker_inst|Add0~93_sumout\ & (!\ticker_inst|Add0~89_sumout\ & ((!\ticker_inst|LessThan7~7_combout\) # (!\ticker_inst|Add0~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan7~7_combout\,
	datab => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan7~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan7~6_combout\,
	combout => \ticker_inst|LessThan7~8_combout\);

-- Location: LABCELL_X85_Y10_N3
\ticker_inst|process_0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~23_combout\ = ( !\ticker_inst|Add0~5_sumout\ & ( !\ticker_inst|Add0~13_sumout\ & ( (!\ticker_inst|Add0~21_sumout\) # ((!\ticker_inst|Add0~25_sumout\) # (!\ticker_inst|Add0~17_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~5_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~13_sumout\,
	combout => \ticker_inst|process_0~23_combout\);

-- Location: LABCELL_X85_Y12_N24
\ticker_inst|process_0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~24_combout\ = ( \ticker_inst|process_0~23_combout\ & ( \ticker_inst|LessThan5~4_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & (!\ticker_inst|Add0~9_sumout\ & ((!\ticker_inst|LessThan7~0_combout\) # 
-- (\ticker_inst|LessThan7~8_combout\)))) ) ) ) # ( \ticker_inst|process_0~23_combout\ & ( !\ticker_inst|LessThan5~4_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & !\ticker_inst|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000000000001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan7~0_combout\,
	datad => \ticker_inst|ALT_INV_LessThan7~8_combout\,
	datae => \ticker_inst|ALT_INV_process_0~23_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan5~4_combout\,
	combout => \ticker_inst|process_0~24_combout\);

-- Location: MLABCELL_X87_Y12_N9
\ticker_inst|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~7_combout\ = ( \ticker_inst|Add0~109_sumout\ & ( !\ticker_inst|Add0~101_sumout\ ) ) # ( !\ticker_inst|Add0~109_sumout\ & ( (!\ticker_inst|Add0~9_sumout\ & \ticker_inst|Add0~101_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~109_sumout\,
	combout => \ticker_inst|process_0~7_combout\);

-- Location: LABCELL_X83_Y11_N24
\ticker_inst|LessThan9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~3_combout\ = ( \ticker_inst|Add0~29_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|Add0~41_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~41_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~29_sumout\,
	combout => \ticker_inst|LessThan9~3_combout\);

-- Location: MLABCELL_X82_Y11_N24
\ticker_inst|LessThan9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~4_combout\ = ( \ticker_inst|Add0~61_sumout\ & ( (\ticker_inst|Add0~105_sumout\ & (\ticker_inst|Add0~65_sumout\ & \ticker_inst|Add0~69_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~105_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~69_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~61_sumout\,
	combout => \ticker_inst|LessThan9~4_combout\);

-- Location: MLABCELL_X82_Y11_N30
\ticker_inst|LessThan9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~5_combout\ = ( \ticker_inst|Add0~53_sumout\ & ( \ticker_inst|LessThan9~4_combout\ & ( \ticker_inst|Add0~57_sumout\ ) ) ) # ( \ticker_inst|Add0~53_sumout\ & ( !\ticker_inst|LessThan9~4_combout\ & ( (\ticker_inst|Add0~57_sumout\ & 
-- (((\ticker_inst|Add0~45_sumout\) # (\ticker_inst|Add0~73_sumout\)) # (\ticker_inst|Add0~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~53_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~4_combout\,
	combout => \ticker_inst|LessThan9~5_combout\);

-- Location: MLABCELL_X82_Y11_N6
\ticker_inst|LessThan9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~6_combout\ = ( \ticker_inst|Add0~29_sumout\ & ( \ticker_inst|LessThan9~5_combout\ & ( (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|LessThan9~1_combout\)) ) ) ) # ( \ticker_inst|Add0~29_sumout\ & ( 
-- !\ticker_inst|LessThan9~5_combout\ & ( (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~49_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|LessThan9~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan9~1_combout\,
	datae => \ticker_inst|ALT_INV_Add0~29_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan9~5_combout\,
	combout => \ticker_inst|LessThan9~6_combout\);

-- Location: LABCELL_X83_Y11_N42
\ticker_inst|process_0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~28_combout\ = ( !\ticker_inst|LessThan9~6_combout\ & ( \ticker_inst|LessThan1~8_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|Add0~9_sumout\ & (\ticker_inst|process_0~4_combout\ & 
-- !\ticker_inst|LessThan9~3_combout\))) ) ) ) # ( \ticker_inst|LessThan9~6_combout\ & ( !\ticker_inst|LessThan1~8_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & !\ticker_inst|Add0~9_sumout\) ) ) ) # ( !\ticker_inst|LessThan9~6_combout\ & ( 
-- !\ticker_inst|LessThan1~8_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & !\ticker_inst|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~4_combout\,
	datad => \ticker_inst|ALT_INV_LessThan9~3_combout\,
	datae => \ticker_inst|ALT_INV_LessThan9~6_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~8_combout\,
	combout => \ticker_inst|process_0~28_combout\);

-- Location: MLABCELL_X87_Y12_N27
\ticker_inst|LessThan10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~4_combout\ = ( !\ticker_inst|Add0~5_sumout\ & ( (!\ticker_inst|Add0~21_sumout\ & (!\ticker_inst|Add0~17_sumout\ & !\ticker_inst|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~29_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|LessThan10~4_combout\);

-- Location: MLABCELL_X87_Y12_N54
\ticker_inst|LessThan10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~2_combout\ = ( \ticker_inst|Add0~65_sumout\ & ( !\ticker_inst|Add0~33_sumout\ & ( !\ticker_inst|Add0~45_sumout\ ) ) ) # ( !\ticker_inst|Add0~65_sumout\ & ( !\ticker_inst|Add0~33_sumout\ & ( (!\ticker_inst|Add0~45_sumout\) # 
-- ((!\ticker_inst|Add0~73_sumout\ & (!\ticker_inst|Add0~77_sumout\ & !\ticker_inst|Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~65_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~33_sumout\,
	combout => \ticker_inst|LessThan10~2_combout\);

-- Location: MLABCELL_X87_Y12_N12
\ticker_inst|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~1_combout\ = ( \ticker_inst|Add0~93_sumout\ & ( (!\ticker_inst|Add0~89_sumout\ & !\ticker_inst|Add0~33_sumout\) ) ) # ( !\ticker_inst|Add0~93_sumout\ & ( !\ticker_inst|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~33_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan10~1_combout\);

-- Location: MLABCELL_X87_Y12_N0
\ticker_inst|LessThan10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~3_combout\ = ( \ticker_inst|LessThan10~2_combout\ & ( !\ticker_inst|LessThan10~1_combout\ & ( (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~97_sumout\ & !\ticker_inst|LessThan10~0_combout\))) ) 
-- ) ) # ( !\ticker_inst|LessThan10~2_combout\ & ( !\ticker_inst|LessThan10~1_combout\ & ( (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|Add0~97_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan10~0_combout\,
	datae => \ticker_inst|ALT_INV_LessThan10~2_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan10~1_combout\,
	combout => \ticker_inst|LessThan10~3_combout\);

-- Location: MLABCELL_X87_Y12_N24
\ticker_inst|process_0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~29_combout\ = ( \ticker_inst|Add0~13_sumout\ & ( (!\ticker_inst|Add0~21_sumout\ & (!\ticker_inst|Add0~25_sumout\ & !\ticker_inst|Add0~5_sumout\)) ) ) # ( !\ticker_inst|Add0~13_sumout\ & ( !\ticker_inst|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~5_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~13_sumout\,
	combout => \ticker_inst|process_0~29_combout\);

-- Location: MLABCELL_X87_Y12_N30
\ticker_inst|process_0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~30_combout\ = ( \ticker_inst|LessThan10~3_combout\ & ( \ticker_inst|process_0~29_combout\ & ( \ticker_inst|Add0~101_sumout\ ) ) ) # ( !\ticker_inst|LessThan10~3_combout\ & ( \ticker_inst|process_0~29_combout\ & ( 
-- \ticker_inst|Add0~101_sumout\ ) ) ) # ( \ticker_inst|LessThan10~3_combout\ & ( !\ticker_inst|process_0~29_combout\ & ( (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~109_sumout\) # (!\ticker_inst|Add0~9_sumout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan10~3_combout\ & ( !\ticker_inst|process_0~29_combout\ & ( (\ticker_inst|Add0~101_sumout\ & (((!\ticker_inst|Add0~109_sumout\) # (!\ticker_inst|Add0~9_sumout\)) # (\ticker_inst|LessThan10~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101000011110000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan10~4_combout\,
	datab => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan10~3_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~29_combout\,
	combout => \ticker_inst|process_0~30_combout\);

-- Location: LABCELL_X85_Y12_N18
\ticker_inst|disp_hex0[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0[3]~3_combout\ = ( \ticker_inst|process_0~28_combout\ & ( \ticker_inst|process_0~30_combout\ & ( (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~27_combout\ & (!\ticker_inst|process_0~24_combout\ & 
-- \ticker_inst|process_0~7_combout\))) ) ) ) # ( !\ticker_inst|process_0~28_combout\ & ( \ticker_inst|process_0~30_combout\ & ( \ticker_inst|Add0~1_sumout\ ) ) ) # ( \ticker_inst|process_0~28_combout\ & ( !\ticker_inst|process_0~30_combout\ & ( 
-- (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~27_combout\ & (!\ticker_inst|process_0~24_combout\ & \ticker_inst|process_0~7_combout\))) ) ) ) # ( !\ticker_inst|process_0~28_combout\ & ( !\ticker_inst|process_0~30_combout\ & ( 
-- (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~27_combout\ & (!\ticker_inst|process_0~24_combout\ & \ticker_inst|process_0~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000001010101010101010000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datab => \ticker_inst|ALT_INV_process_0~27_combout\,
	datac => \ticker_inst|ALT_INV_process_0~24_combout\,
	datad => \ticker_inst|ALT_INV_process_0~7_combout\,
	datae => \ticker_inst|ALT_INV_process_0~28_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~30_combout\,
	combout => \ticker_inst|disp_hex0[3]~3_combout\);

-- Location: MLABCELL_X84_Y12_N21
\ticker_inst|count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|count[3]~0_combout\ = ( \ticker_inst|LessThan11~7_combout\ & ( \ticker_inst|disp_hex0[3]~3_combout\ & ( \ticker_inst|Add0~113_sumout\ ) ) ) # ( !\ticker_inst|LessThan11~7_combout\ & ( \ticker_inst|disp_hex0[3]~3_combout\ & ( 
-- \ticker_inst|Add0~113_sumout\ ) ) ) # ( \ticker_inst|LessThan11~7_combout\ & ( !\ticker_inst|disp_hex0[3]~3_combout\ & ( ((!\ticker_inst|disp_hex0[3]~4_combout\ & ((\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|Add0~1_sumout\)))) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|LessThan11~7_combout\ & ( !\ticker_inst|disp_hex0[3]~3_combout\ & ( \ticker_inst|Add0~113_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011100111111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_disp_hex0[3]~4_combout\,
	datad => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datae => \ticker_inst|ALT_INV_LessThan11~7_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0[3]~3_combout\,
	combout => \ticker_inst|count[3]~0_combout\);

-- Location: FF_X83_Y12_N11
\ticker_inst|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|Add0~109_sumout\,
	sclr => \ticker_inst|count[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|count\(25));

-- Location: MLABCELL_X84_Y10_N24
\ticker_inst|process_0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~12_combout\ = ( \ticker_inst|Add0~109_sumout\ & ( !\ticker_inst|Add0~101_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~101_sumout\,
	combout => \ticker_inst|process_0~12_combout\);

-- Location: LABCELL_X83_Y10_N18
\ticker_inst|process_0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~13_combout\ = ( !\ticker_inst|Add0~13_sumout\ & ( \ticker_inst|Add0~29_sumout\ & ( (!\ticker_inst|Add0~21_sumout\) # ((!\ticker_inst|Add0~25_sumout\ & !\ticker_inst|Add0~17_sumout\)) ) ) ) # ( !\ticker_inst|Add0~13_sumout\ & ( 
-- !\ticker_inst|Add0~29_sumout\ & ( (!\ticker_inst|Add0~21_sumout\) # ((!\ticker_inst|Add0~25_sumout\ & ((!\ticker_inst|Add0~97_sumout\) # (!\ticker_inst|Add0~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101010000000000000000011111010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~13_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~29_sumout\,
	combout => \ticker_inst|process_0~13_combout\);

-- Location: LABCELL_X85_Y10_N33
\ticker_inst|process_0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~11_combout\ = ( \ticker_inst|LessThan7~0_combout\ & ( (\ticker_inst|Add0~21_sumout\ & (\ticker_inst|Add0~25_sumout\ & !\ticker_inst|process_0~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~10_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan7~0_combout\,
	combout => \ticker_inst|process_0~11_combout\);

-- Location: LABCELL_X85_Y10_N51
\ticker_inst|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~2_combout\ = ( \ticker_inst|Add0~93_sumout\ & ( (\ticker_inst|Add0~33_sumout\ & (\ticker_inst|Add0~37_sumout\ & \ticker_inst|Add0~41_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~41_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan5~2_combout\);

-- Location: MLABCELL_X87_Y10_N27
\ticker_inst|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan5~1_combout\ = ( !\ticker_inst|Add0~57_sumout\ & ( !\ticker_inst|LessThan5~0_combout\ & ( (!\ticker_inst|Add0~45_sumout\ & (!\ticker_inst|Add0~53_sumout\ & (!\ticker_inst|Add0~81_sumout\ & !\ticker_inst|Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~81_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~57_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan5~0_combout\,
	combout => \ticker_inst|LessThan5~1_combout\);

-- Location: LABCELL_X85_Y10_N24
\ticker_inst|process_0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~14_combout\ = ( \ticker_inst|LessThan5~1_combout\ & ( !\ticker_inst|Add0~1_sumout\ & ( (!\ticker_inst|LessThan5~2_combout\) # ((!\ticker_inst|Add0~17_sumout\) # (!\ticker_inst|Add0~21_sumout\)) ) ) ) # ( 
-- !\ticker_inst|LessThan5~1_combout\ & ( !\ticker_inst|Add0~1_sumout\ & ( (!\ticker_inst|Add0~17_sumout\) # ((!\ticker_inst|Add0~21_sumout\) # ((!\ticker_inst|LessThan5~2_combout\ & !\ticker_inst|LessThan5~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111000111111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan5~2_combout\,
	datab => \ticker_inst|ALT_INV_LessThan5~3_combout\,
	datac => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan5~1_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~1_sumout\,
	combout => \ticker_inst|process_0~14_combout\);

-- Location: MLABCELL_X84_Y10_N15
\ticker_inst|process_0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~16_combout\ = ( \ticker_inst|process_0~0_combout\ & ( \ticker_inst|process_0~14_combout\ & ( (\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~13_combout\ & ((!\ticker_inst|process_0~12_combout\) # 
-- (!\ticker_inst|process_0~11_combout\)))) ) ) ) # ( !\ticker_inst|process_0~0_combout\ & ( \ticker_inst|process_0~14_combout\ & ( (!\ticker_inst|process_0~12_combout\ & (\ticker_inst|process_0~15_combout\ & !\ticker_inst|process_0~13_combout\)) ) ) ) # ( 
-- \ticker_inst|process_0~0_combout\ & ( !\ticker_inst|process_0~14_combout\ & ( (\ticker_inst|process_0~15_combout\ & ((!\ticker_inst|process_0~12_combout\) # (!\ticker_inst|process_0~11_combout\))) ) ) ) # ( !\ticker_inst|process_0~0_combout\ & ( 
-- !\ticker_inst|process_0~14_combout\ & ( (!\ticker_inst|process_0~12_combout\ & \ticker_inst|process_0~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001100110010001000100000001000000011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~12_combout\,
	datab => \ticker_inst|ALT_INV_process_0~15_combout\,
	datac => \ticker_inst|ALT_INV_process_0~13_combout\,
	datad => \ticker_inst|ALT_INV_process_0~11_combout\,
	datae => \ticker_inst|ALT_INV_process_0~0_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~14_combout\,
	combout => \ticker_inst|process_0~16_combout\);

-- Location: MLABCELL_X82_Y13_N30
\ticker_inst|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan11~0_combout\ = ( \ticker_inst|Add0~109_sumout\ & ( \ticker_inst|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~9_sumout\,
	combout => \ticker_inst|LessThan11~0_combout\);

-- Location: MLABCELL_X82_Y13_N48
\ticker_inst|process_0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~19_combout\ = ( !\ticker_inst|Add0~109_sumout\ & ( !\ticker_inst|Add0~21_sumout\ & ( (!\ticker_inst|Add0~5_sumout\ & !\ticker_inst|Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~109_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~21_sumout\,
	combout => \ticker_inst|process_0~19_combout\);

-- Location: MLABCELL_X82_Y11_N27
\ticker_inst|LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~3_combout\ = ( !\ticker_inst|Add0~97_sumout\ & ( !\ticker_inst|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~29_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~97_sumout\,
	combout => \ticker_inst|LessThan4~3_combout\);

-- Location: MLABCELL_X82_Y11_N54
\ticker_inst|LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~2_combout\ = ( \ticker_inst|Add0~37_sumout\ & ( \ticker_inst|Add0~33_sumout\ & ( (\ticker_inst|Add0~41_sumout\ & (((\ticker_inst|Add0~85_sumout\ & \ticker_inst|Add0~89_sumout\)) # (\ticker_inst|Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~37_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~33_sumout\,
	combout => \ticker_inst|LessThan4~2_combout\);

-- Location: MLABCELL_X82_Y11_N45
\ticker_inst|LessThan4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan4~4_combout\ = ( !\ticker_inst|Add0~25_sumout\ & ( !\ticker_inst|Add0~13_sumout\ & ( (\ticker_inst|LessThan4~3_combout\ & ((!\ticker_inst|LessThan4~2_combout\) # ((\ticker_inst|LessThan4~1_combout\ & 
-- \ticker_inst|LessThan4~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan4~3_combout\,
	datab => \ticker_inst|ALT_INV_LessThan4~1_combout\,
	datac => \ticker_inst|ALT_INV_LessThan4~0_combout\,
	datad => \ticker_inst|ALT_INV_LessThan4~2_combout\,
	datae => \ticker_inst|ALT_INV_Add0~25_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~13_sumout\,
	combout => \ticker_inst|LessThan4~4_combout\);

-- Location: LABCELL_X85_Y13_N30
\ticker_inst|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~1_combout\ = ( !\ticker_inst|Add0~77_sumout\ & ( (!\ticker_inst|Add0~65_sumout\) # ((!\ticker_inst|Add0~69_sumout\) # ((!\ticker_inst|Add0~61_sumout\ & !\ticker_inst|Add0~105_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010111111101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~105_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~77_sumout\,
	combout => \ticker_inst|LessThan3~1_combout\);

-- Location: LABCELL_X85_Y13_N0
\ticker_inst|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan3~2_combout\ = ( \ticker_inst|Add0~45_sumout\ & ( \ticker_inst|Add0~81_sumout\ & ( (\ticker_inst|Add0~57_sumout\ & (((\ticker_inst|Add0~73_sumout\ & !\ticker_inst|LessThan3~1_combout\)) # (\ticker_inst|Add0~53_sumout\))) ) ) ) # ( 
-- !\ticker_inst|Add0~45_sumout\ & ( \ticker_inst|Add0~81_sumout\ & ( (\ticker_inst|Add0~53_sumout\ & \ticker_inst|Add0~57_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~73_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan3~1_combout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~45_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~81_sumout\,
	combout => \ticker_inst|LessThan3~2_combout\);

-- Location: MLABCELL_X84_Y10_N45
\ticker_inst|process_0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~20_combout\ = ( \ticker_inst|LessThan3~2_combout\ & ( \ticker_inst|LessThan2~2_combout\ & ( (\ticker_inst|Add0~17_sumout\ & \ticker_inst|Add0~25_sumout\) ) ) ) # ( !\ticker_inst|LessThan3~2_combout\ & ( 
-- \ticker_inst|LessThan2~2_combout\ & ( (\ticker_inst|Add0~17_sumout\ & (\ticker_inst|Add0~25_sumout\ & ((!\ticker_inst|LessThan3~3_combout\) # (\ticker_inst|Add0~29_sumout\)))) ) ) ) # ( \ticker_inst|LessThan3~2_combout\ & ( 
-- !\ticker_inst|LessThan2~2_combout\ & ( (\ticker_inst|Add0~17_sumout\ & (\ticker_inst|Add0~29_sumout\ & \ticker_inst|Add0~25_sumout\)) ) ) ) # ( !\ticker_inst|LessThan3~2_combout\ & ( !\ticker_inst|LessThan2~2_combout\ & ( (\ticker_inst|Add0~17_sumout\ & 
-- (\ticker_inst|Add0~29_sumout\ & \ticker_inst|Add0~25_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010001010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan3~3_combout\,
	datac => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan3~2_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan2~2_combout\,
	combout => \ticker_inst|process_0~20_combout\);

-- Location: LABCELL_X83_Y13_N0
\ticker_inst|process_0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~22_combout\ = ( \ticker_inst|LessThan4~4_combout\ & ( \ticker_inst|process_0~20_combout\ & ( \ticker_inst|process_0~18_combout\ ) ) ) # ( !\ticker_inst|LessThan4~4_combout\ & ( \ticker_inst|process_0~20_combout\ & ( 
-- (\ticker_inst|process_0~18_combout\ & ((!\ticker_inst|LessThan11~0_combout\) # (!\ticker_inst|process_0~21_combout\))) ) ) ) # ( \ticker_inst|LessThan4~4_combout\ & ( !\ticker_inst|process_0~20_combout\ & ( (\ticker_inst|process_0~18_combout\ & 
-- !\ticker_inst|process_0~19_combout\) ) ) ) # ( !\ticker_inst|LessThan4~4_combout\ & ( !\ticker_inst|process_0~20_combout\ & ( (\ticker_inst|process_0~18_combout\ & (!\ticker_inst|process_0~19_combout\ & ((!\ticker_inst|LessThan11~0_combout\) # 
-- (!\ticker_inst|process_0~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011110000000000001110000011100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan11~0_combout\,
	datab => \ticker_inst|ALT_INV_process_0~21_combout\,
	datac => \ticker_inst|ALT_INV_process_0~18_combout\,
	datad => \ticker_inst|ALT_INV_process_0~19_combout\,
	datae => \ticker_inst|ALT_INV_LessThan4~4_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~20_combout\,
	combout => \ticker_inst|process_0~22_combout\);

-- Location: LABCELL_X83_Y12_N45
\ticker_inst|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~6_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( (\ticker_inst|Add0~13_sumout\ & \ticker_inst|Add0~101_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|process_0~6_combout\);

-- Location: LABCELL_X83_Y10_N57
\ticker_inst|LessThan7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~3_combout\ = ( !\ticker_inst|Add0~93_sumout\ & ( (!\ticker_inst|Add0~89_sumout\ & ((!\ticker_inst|Add0~85_sumout\) # (!\ticker_inst|Add0~81_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~81_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~93_sumout\,
	combout => \ticker_inst|LessThan7~3_combout\);

-- Location: MLABCELL_X82_Y11_N21
\ticker_inst|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~1_combout\ = ( \ticker_inst|Add0~69_sumout\ & ( !\ticker_inst|Add0~73_sumout\ & ( (!\ticker_inst|Add0~77_sumout\) # ((!\ticker_inst|Add0~61_sumout\ & (!\ticker_inst|Add0~105_sumout\ & !\ticker_inst|Add0~65_sumout\))) ) ) ) # ( 
-- !\ticker_inst|Add0~69_sumout\ & ( !\ticker_inst|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~61_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~105_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~77_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~69_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan7~1_combout\);

-- Location: MLABCELL_X82_Y11_N0
\ticker_inst|LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan7~2_combout\ = ( \ticker_inst|LessThan7~1_combout\ & ( \ticker_inst|Add0~57_sumout\ & ( (\ticker_inst|Add0~85_sumout\ & \ticker_inst|Add0~49_sumout\) ) ) ) # ( !\ticker_inst|LessThan7~1_combout\ & ( \ticker_inst|Add0~57_sumout\ & ( 
-- (\ticker_inst|Add0~85_sumout\ & \ticker_inst|Add0~49_sumout\) ) ) ) # ( !\ticker_inst|LessThan7~1_combout\ & ( !\ticker_inst|Add0~57_sumout\ & ( (\ticker_inst|Add0~45_sumout\ & (\ticker_inst|Add0~53_sumout\ & (\ticker_inst|Add0~85_sumout\ & 
-- \ticker_inst|Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan7~1_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~57_sumout\,
	combout => \ticker_inst|LessThan7~2_combout\);

-- Location: LABCELL_X83_Y10_N9
\ticker_inst|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~5_combout\ = ( \ticker_inst|LessThan7~0_combout\ & ( \ticker_inst|LessThan7~2_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|Add0~25_sumout\) # (!\ticker_inst|Add0~21_sumout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan7~0_combout\ & ( \ticker_inst|LessThan7~2_combout\ & ( !\ticker_inst|Add0~101_sumout\ ) ) ) # ( \ticker_inst|LessThan7~0_combout\ & ( !\ticker_inst|LessThan7~2_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & 
-- ((!\ticker_inst|Add0~25_sumout\) # ((!\ticker_inst|Add0~21_sumout\) # (\ticker_inst|LessThan7~3_combout\)))) ) ) ) # ( !\ticker_inst|LessThan7~0_combout\ & ( !\ticker_inst|LessThan7~2_combout\ & ( !\ticker_inst|Add0~101_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111110110000000011111111000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan7~3_combout\,
	datac => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan7~0_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan7~2_combout\,
	combout => \ticker_inst|process_0~5_combout\);

-- Location: MLABCELL_X84_Y13_N39
\ticker_inst|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan9~0_combout\ = ( !\ticker_inst|Add0~73_sumout\ & ( !\ticker_inst|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~77_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan9~0_combout\);

-- Location: MLABCELL_X84_Y13_N6
\ticker_inst|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~2_combout\ = ( \ticker_inst|process_0~1_combout\ & ( !\ticker_inst|Add0~49_sumout\ & ( (!\ticker_inst|Add0~53_sumout\) # (!\ticker_inst|Add0~57_sumout\) ) ) ) # ( !\ticker_inst|process_0~1_combout\ & ( !\ticker_inst|Add0~49_sumout\ 
-- & ( (!\ticker_inst|Add0~53_sumout\) # ((!\ticker_inst|Add0~57_sumout\) # ((!\ticker_inst|Add0~45_sumout\ & \ticker_inst|LessThan9~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110010111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan9~0_combout\,
	datac => \ticker_inst|ALT_INV_Add0~53_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~57_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~1_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~49_sumout\,
	combout => \ticker_inst|process_0~2_combout\);

-- Location: MLABCELL_X84_Y13_N24
\ticker_inst|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~3_combout\ = ( \ticker_inst|LessThan9~1_combout\ & ( \ticker_inst|process_0~2_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~33_sumout\ & \ticker_inst|Add0~29_sumout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan9~1_combout\ & ( \ticker_inst|process_0~2_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~33_sumout\ & \ticker_inst|Add0~29_sumout\))) ) ) ) # ( \ticker_inst|LessThan9~1_combout\ & ( 
-- !\ticker_inst|process_0~2_combout\ & ( (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~41_sumout\ & \ticker_inst|Add0~29_sumout\)) ) ) ) # ( !\ticker_inst|LessThan9~1_combout\ & ( !\ticker_inst|process_0~2_combout\ & ( (\ticker_inst|Add0~37_sumout\ & 
-- (\ticker_inst|Add0~41_sumout\ & (\ticker_inst|Add0~33_sumout\ & \ticker_inst|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000001000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan9~1_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~2_combout\,
	combout => \ticker_inst|process_0~3_combout\);

-- Location: MLABCELL_X84_Y12_N24
\ticker_inst|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~8_combout\ = ( \ticker_inst|process_0~5_combout\ & ( \ticker_inst|process_0~3_combout\ & ( (\ticker_inst|process_0~7_combout\ & (!\ticker_inst|process_0~6_combout\ & !\ticker_inst|process_0~0_combout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~5_combout\ & ( \ticker_inst|process_0~3_combout\ & ( (\ticker_inst|process_0~7_combout\ & !\ticker_inst|process_0~6_combout\) ) ) ) # ( \ticker_inst|process_0~5_combout\ & ( !\ticker_inst|process_0~3_combout\ & ( 
-- (\ticker_inst|process_0~7_combout\ & (!\ticker_inst|process_0~0_combout\ & ((!\ticker_inst|process_0~6_combout\) # (\ticker_inst|process_0~4_combout\)))) ) ) ) # ( !\ticker_inst|process_0~5_combout\ & ( !\ticker_inst|process_0~3_combout\ & ( 
-- (\ticker_inst|process_0~7_combout\ & ((!\ticker_inst|process_0~6_combout\) # (\ticker_inst|process_0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010000000001010000010100000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~7_combout\,
	datab => \ticker_inst|ALT_INV_process_0~4_combout\,
	datac => \ticker_inst|ALT_INV_process_0~6_combout\,
	datad => \ticker_inst|ALT_INV_process_0~0_combout\,
	datae => \ticker_inst|ALT_INV_process_0~5_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~3_combout\,
	combout => \ticker_inst|process_0~8_combout\);

-- Location: LABCELL_X83_Y12_N24
\ticker_inst|disp_hex0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~2_combout\ = ( \ticker_inst|process_0~22_combout\ & ( \ticker_inst|process_0~8_combout\ & ( (!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( 
-- \ticker_inst|process_0~8_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|process_0~16_combout\) # (!\ticker_inst|disp_hex0~1_combout\)))) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( \ticker_inst|process_0~22_combout\ & ( 
-- !\ticker_inst|process_0~8_combout\ & ( (!\ticker_inst|process_0~16_combout\) # ((!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|Add0~113_sumout\)) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( !\ticker_inst|process_0~8_combout\ & ( 
-- (!\ticker_inst|process_0~16_combout\) # (((!\ticker_inst|Add0~1_sumout\ & !\ticker_inst|disp_hex0~1_combout\)) # (\ticker_inst|Add0~113_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101110111011111110111111101111110011101100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~16_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datae => \ticker_inst|ALT_INV_process_0~22_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~8_combout\,
	combout => \ticker_inst|disp_hex0~2_combout\);

-- Location: LABCELL_X85_Y12_N6
\ticker_inst|disp_hex0[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0[3]~5_combout\ = ( \ticker_inst|LessThan11~7_combout\ & ( \ticker_inst|disp_hex0[3]~3_combout\ ) ) # ( !\ticker_inst|LessThan11~7_combout\ & ( \ticker_inst|disp_hex0[3]~3_combout\ ) ) # ( \ticker_inst|LessThan11~7_combout\ & ( 
-- !\ticker_inst|disp_hex0[3]~3_combout\ ) ) # ( !\ticker_inst|LessThan11~7_combout\ & ( !\ticker_inst|disp_hex0[3]~3_combout\ & ( (((!\ticker_inst|Add0~1_sumout\ & !\ticker_inst|disp_hex0~1_combout\)) # (\ticker_inst|disp_hex0[3]~4_combout\)) # 
-- (\ticker_inst|Add0~113_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datad => \ticker_inst|ALT_INV_disp_hex0[3]~4_combout\,
	datae => \ticker_inst|ALT_INV_LessThan11~7_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0[3]~3_combout\,
	combout => \ticker_inst|disp_hex0[3]~5_combout\);

-- Location: FF_X83_Y12_N25
\ticker_inst|disp_hex0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex0~2_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex0\(2));

-- Location: MLABCELL_X84_Y10_N0
\ticker_inst|process_0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~37_combout\ = ( \ticker_inst|process_0~14_combout\ & ( (\ticker_inst|process_0~15_combout\ & !\ticker_inst|process_0~13_combout\) ) ) # ( !\ticker_inst|process_0~14_combout\ & ( \ticker_inst|process_0~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_process_0~15_combout\,
	datad => \ticker_inst|ALT_INV_process_0~13_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~14_combout\,
	combout => \ticker_inst|process_0~37_combout\);

-- Location: LABCELL_X85_Y10_N6
\ticker_inst|process_0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~36_combout\ = ( \ticker_inst|process_0~3_combout\ & ( \ticker_inst|process_0~4_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|Add0~9_sumout\ & (!\ticker_inst|LessThan1~8_combout\ & \ticker_inst|Add0~101_sumout\))) # 
-- (\ticker_inst|Add0~109_sumout\ & (((!\ticker_inst|Add0~101_sumout\)))) ) ) ) # ( !\ticker_inst|process_0~3_combout\ & ( \ticker_inst|process_0~4_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|Add0~9_sumout\ & \ticker_inst|Add0~101_sumout\)) 
-- # (\ticker_inst|Add0~109_sumout\ & ((!\ticker_inst|Add0~101_sumout\))) ) ) ) # ( \ticker_inst|process_0~3_combout\ & ( !\ticker_inst|process_0~4_combout\ & ( (!\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|Add0~9_sumout\ & 
-- (!\ticker_inst|LessThan1~8_combout\ & \ticker_inst|Add0~101_sumout\))) # (\ticker_inst|Add0~109_sumout\ & (((!\ticker_inst|Add0~101_sumout\)))) ) ) ) # ( !\ticker_inst|process_0~3_combout\ & ( !\ticker_inst|process_0~4_combout\ & ( 
-- (!\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|Add0~9_sumout\ & (!\ticker_inst|LessThan1~8_combout\ & \ticker_inst|Add0~101_sumout\))) # (\ticker_inst|Add0~109_sumout\ & (((!\ticker_inst|Add0~101_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110000000001100111000000000110011100010000011001110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan1~8_combout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~3_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~4_combout\,
	combout => \ticker_inst|process_0~36_combout\);

-- Location: LABCELL_X85_Y10_N45
\ticker_inst|disp_hex0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~6_combout\ = ( \ticker_inst|process_0~24_combout\ & ( \ticker_inst|process_0~36_combout\ ) ) # ( !\ticker_inst|process_0~24_combout\ & ( \ticker_inst|process_0~36_combout\ & ( ((!\ticker_inst|Add0~1_sumout\) # 
-- ((!\ticker_inst|process_0~31_combout\ & \ticker_inst|process_0~37_combout\))) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( \ticker_inst|process_0~24_combout\ & ( !\ticker_inst|process_0~36_combout\ ) ) # ( !\ticker_inst|process_0~24_combout\ & ( 
-- !\ticker_inst|process_0~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111001110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~31_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~37_combout\,
	datad => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~24_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~36_combout\,
	combout => \ticker_inst|disp_hex0~6_combout\);

-- Location: FF_X85_Y10_N46
\ticker_inst|disp_hex0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex0~6_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex0\(3));

-- Location: MLABCELL_X82_Y11_N48
\ticker_inst|LessThan10~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~7_combout\ = ( \ticker_inst|Add0~41_sumout\ & ( \ticker_inst|Add0~33_sumout\ & ( (\ticker_inst|Add0~37_sumout\ & \ticker_inst|Add0~97_sumout\) ) ) ) # ( \ticker_inst|Add0~41_sumout\ & ( !\ticker_inst|Add0~33_sumout\ & ( 
-- (\ticker_inst|Add0~37_sumout\ & (\ticker_inst|Add0~89_sumout\ & (\ticker_inst|Add0~97_sumout\ & \ticker_inst|Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~37_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~89_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~93_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~41_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~33_sumout\,
	combout => \ticker_inst|LessThan10~7_combout\);

-- Location: MLABCELL_X82_Y12_N42
\ticker_inst|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~6_combout\ = ( !\ticker_inst|Add0~53_sumout\ & ( !\ticker_inst|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ticker_inst|ALT_INV_Add0~53_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~57_sumout\,
	combout => \ticker_inst|LessThan0~6_combout\);

-- Location: LABCELL_X80_Y12_N48
\ticker_inst|LessThan10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~5_combout\ = ( \ticker_inst|Add0~77_sumout\ & ( \ticker_inst|Add0~73_sumout\ & ( \ticker_inst|Add0~45_sumout\ ) ) ) # ( !\ticker_inst|Add0~77_sumout\ & ( \ticker_inst|Add0~73_sumout\ & ( \ticker_inst|Add0~45_sumout\ ) ) ) # ( 
-- \ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~73_sumout\ & ( \ticker_inst|Add0~45_sumout\ ) ) ) # ( !\ticker_inst|Add0~77_sumout\ & ( !\ticker_inst|Add0~73_sumout\ & ( (\ticker_inst|Add0~45_sumout\ & ((\ticker_inst|Add0~65_sumout\) # 
-- (\ticker_inst|Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~69_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~65_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~45_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~77_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~73_sumout\,
	combout => \ticker_inst|LessThan10~5_combout\);

-- Location: LABCELL_X81_Y12_N48
\ticker_inst|LessThan10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~6_combout\ = ( !\ticker_inst|LessThan10~5_combout\ & ( !\ticker_inst|Add0~81_sumout\ & ( (!\ticker_inst|Add0~49_sumout\ & (!\ticker_inst|Add0~33_sumout\ & (!\ticker_inst|Add0~85_sumout\ & \ticker_inst|LessThan0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~33_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~85_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan0~6_combout\,
	datae => \ticker_inst|ALT_INV_LessThan10~5_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~81_sumout\,
	combout => \ticker_inst|LessThan10~6_combout\);

-- Location: LABCELL_X81_Y12_N54
\ticker_inst|LessThan10~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan10~8_combout\ = ( \ticker_inst|LessThan10~7_combout\ & ( \ticker_inst|LessThan10~6_combout\ & ( (!\ticker_inst|Add0~5_sumout\ & (!\ticker_inst|Add0~29_sumout\ & (!\ticker_inst|Add0~17_sumout\ & !\ticker_inst|Add0~21_sumout\))) ) ) ) # 
-- ( !\ticker_inst|LessThan10~7_combout\ & ( \ticker_inst|LessThan10~6_combout\ & ( (!\ticker_inst|Add0~5_sumout\ & (!\ticker_inst|Add0~29_sumout\ & (!\ticker_inst|Add0~17_sumout\ & !\ticker_inst|Add0~21_sumout\))) ) ) ) # ( 
-- !\ticker_inst|LessThan10~7_combout\ & ( !\ticker_inst|LessThan10~6_combout\ & ( (!\ticker_inst|Add0~5_sumout\ & (!\ticker_inst|Add0~29_sumout\ & (!\ticker_inst|Add0~17_sumout\ & !\ticker_inst|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~5_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~17_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan10~7_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan10~6_combout\,
	combout => \ticker_inst|LessThan10~8_combout\);

-- Location: LABCELL_X83_Y11_N9
\ticker_inst|process_0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~38_combout\ = ( !\ticker_inst|Add0~109_sumout\ & ( !\ticker_inst|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~109_sumout\,
	combout => \ticker_inst|process_0~38_combout\);

-- Location: LABCELL_X81_Y12_N27
\ticker_inst|process_0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~40_combout\ = ( \ticker_inst|Add0~5_sumout\ & ( \ticker_inst|Add0~109_sumout\ & ( \ticker_inst|Add0~9_sumout\ ) ) ) # ( !\ticker_inst|Add0~5_sumout\ & ( \ticker_inst|Add0~109_sumout\ & ( (\ticker_inst|Add0~13_sumout\ & 
-- (\ticker_inst|Add0~9_sumout\ & ((\ticker_inst|Add0~25_sumout\) # (\ticker_inst|Add0~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datab => \ticker_inst|ALT_INV_Add0~21_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~5_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~109_sumout\,
	combout => \ticker_inst|process_0~40_combout\);

-- Location: MLABCELL_X82_Y12_N24
\ticker_inst|process_0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~39_combout\ = ( \ticker_inst|LessThan9~1_combout\ & ( \ticker_inst|process_0~4_combout\ & ( (!\ticker_inst|LessThan9~3_combout\ & ((!\ticker_inst|LessThan9~2_combout\) # ((!\ticker_inst|Add0~49_sumout\ & 
-- !\ticker_inst|LessThan9~5_combout\)))) ) ) ) # ( !\ticker_inst|LessThan9~1_combout\ & ( \ticker_inst|process_0~4_combout\ & ( !\ticker_inst|LessThan9~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan9~2_combout\,
	datab => \ticker_inst|ALT_INV_Add0~49_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan9~3_combout\,
	datad => \ticker_inst|ALT_INV_LessThan9~5_combout\,
	datae => \ticker_inst|ALT_INV_LessThan9~1_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~4_combout\,
	combout => \ticker_inst|process_0~39_combout\);

-- Location: MLABCELL_X82_Y12_N0
\ticker_inst|process_0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~41_combout\ = ( \ticker_inst|process_0~40_combout\ & ( \ticker_inst|process_0~39_combout\ & ( (\ticker_inst|LessThan10~8_combout\ & (\ticker_inst|Add0~101_sumout\ & !\ticker_inst|process_0~38_combout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~40_combout\ & ( \ticker_inst|process_0~39_combout\ & ( (\ticker_inst|Add0~101_sumout\ & !\ticker_inst|process_0~38_combout\) ) ) ) # ( \ticker_inst|process_0~40_combout\ & ( !\ticker_inst|process_0~39_combout\ & ( 
-- (\ticker_inst|LessThan10~8_combout\ & (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|process_0~38_combout\) # (\ticker_inst|LessThan1~8_combout\)))) ) ) ) # ( !\ticker_inst|process_0~40_combout\ & ( !\ticker_inst|process_0~39_combout\ & ( 
-- (\ticker_inst|Add0~101_sumout\ & ((!\ticker_inst|process_0~38_combout\) # (\ticker_inst|LessThan1~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011000100000001000100110000001100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan10~8_combout\,
	datab => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datac => \ticker_inst|ALT_INV_process_0~38_combout\,
	datad => \ticker_inst|ALT_INV_LessThan1~8_combout\,
	datae => \ticker_inst|ALT_INV_process_0~40_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~39_combout\,
	combout => \ticker_inst|process_0~41_combout\);

-- Location: LABCELL_X85_Y12_N30
\ticker_inst|disp_hex0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~7_combout\ = ( \ticker_inst|process_0~36_combout\ & ( \ticker_inst|process_0~24_combout\ & ( (\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~33_combout\ & !\ticker_inst|process_0~31_combout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~36_combout\ & ( \ticker_inst|process_0~24_combout\ & ( (\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~33_combout\ & !\ticker_inst|process_0~31_combout\)) ) ) ) # ( \ticker_inst|process_0~36_combout\ & ( 
-- !\ticker_inst|process_0~24_combout\ & ( ((\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~33_combout\ & !\ticker_inst|process_0~31_combout\))) # (\ticker_inst|Add0~1_sumout\) ) ) ) # ( !\ticker_inst|process_0~36_combout\ & ( 
-- !\ticker_inst|process_0~24_combout\ & ( (\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~33_combout\ & !\ticker_inst|process_0~31_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000001111111101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~15_combout\,
	datab => \ticker_inst|ALT_INV_process_0~33_combout\,
	datac => \ticker_inst|ALT_INV_process_0~31_combout\,
	datad => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~36_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~24_combout\,
	combout => \ticker_inst|disp_hex0~7_combout\);

-- Location: LABCELL_X85_Y12_N48
\ticker_inst|disp_hex0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~8_combout\ = ( \ticker_inst|process_0~22_combout\ & ( \ticker_inst|disp_hex0~7_combout\ & ( (!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( 
-- \ticker_inst|disp_hex0~7_combout\ & ( ((!\ticker_inst|disp_hex0~1_combout\ & !\ticker_inst|Add0~1_sumout\)) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( \ticker_inst|process_0~22_combout\ & ( !\ticker_inst|disp_hex0~7_combout\ & ( 
-- ((!\ticker_inst|Add0~1_sumout\) # (!\ticker_inst|process_0~41_combout\)) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( !\ticker_inst|disp_hex0~7_combout\ & ( ((!\ticker_inst|Add0~1_sumout\) # 
-- (!\ticker_inst|process_0~41_combout\)) # (\ticker_inst|Add0~113_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001110110011101100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~41_combout\,
	datae => \ticker_inst|ALT_INV_process_0~22_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0~7_combout\,
	combout => \ticker_inst|disp_hex0~8_combout\);

-- Location: FF_X85_Y12_N49
\ticker_inst|disp_hex0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex0~8_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex0\(4));

-- Location: MLABCELL_X87_Y12_N42
\ticker_inst|disp_hex0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~9_combout\ = ( \ticker_inst|process_0~27_combout\ & ( \ticker_inst|process_0~24_combout\ & ( (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~28_combout\ & \ticker_inst|process_0~30_combout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~27_combout\ & ( \ticker_inst|process_0~24_combout\ & ( (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~28_combout\ & \ticker_inst|process_0~30_combout\)) ) ) ) # ( \ticker_inst|process_0~27_combout\ & ( 
-- !\ticker_inst|process_0~24_combout\ & ( (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~28_combout\ & \ticker_inst|process_0~30_combout\)) ) ) ) # ( !\ticker_inst|process_0~27_combout\ & ( !\ticker_inst|process_0~24_combout\ & ( 
-- (\ticker_inst|Add0~1_sumout\ & (!\ticker_inst|process_0~7_combout\ & (!\ticker_inst|process_0~28_combout\ & \ticker_inst|process_0~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datab => \ticker_inst|ALT_INV_process_0~7_combout\,
	datac => \ticker_inst|ALT_INV_process_0~28_combout\,
	datad => \ticker_inst|ALT_INV_process_0~30_combout\,
	datae => \ticker_inst|ALT_INV_process_0~27_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~24_combout\,
	combout => \ticker_inst|disp_hex0~9_combout\);

-- Location: MLABCELL_X87_Y12_N48
\ticker_inst|disp_hex0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0~10_combout\ = ( \ticker_inst|disp_hex0~1_combout\ & ( \ticker_inst|process_0~22_combout\ & ( (!\ticker_inst|Add0~1_sumout\) # (((!\ticker_inst|process_0~16_combout\ & !\ticker_inst|disp_hex0~9_combout\)) # 
-- (\ticker_inst|Add0~113_sumout\)) ) ) ) # ( !\ticker_inst|disp_hex0~1_combout\ & ( \ticker_inst|process_0~22_combout\ & ( (!\ticker_inst|Add0~1_sumout\) # (((!\ticker_inst|process_0~16_combout\ & !\ticker_inst|disp_hex0~9_combout\)) # 
-- (\ticker_inst|Add0~113_sumout\)) ) ) ) # ( \ticker_inst|disp_hex0~1_combout\ & ( !\ticker_inst|process_0~22_combout\ & ( ((!\ticker_inst|process_0~16_combout\ & !\ticker_inst|disp_hex0~9_combout\)) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( 
-- !\ticker_inst|disp_hex0~1_combout\ & ( !\ticker_inst|process_0~22_combout\ & ( (!\ticker_inst|Add0~1_sumout\) # (((!\ticker_inst|process_0~16_combout\ & !\ticker_inst|disp_hex0~9_combout\)) # (\ticker_inst|Add0~113_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111111100010001111111111111000111111111111100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~16_combout\,
	datab => \ticker_inst|ALT_INV_disp_hex0~9_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datae => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~22_combout\,
	combout => \ticker_inst|disp_hex0~10_combout\);

-- Location: FF_X87_Y12_N49
\ticker_inst|disp_hex0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex0~10_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex0\(6));

-- Location: MLABCELL_X84_Y13_N3
\ticker_inst|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~8_combout\ = ( !\ticker_inst|Add0~113_sumout\ & ( !\ticker_inst|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~1_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~113_sumout\,
	combout => \ticker_inst|LessThan0~8_combout\);

-- Location: LABCELL_X83_Y10_N42
\ticker_inst|LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~9_combout\ = ( \ticker_inst|Add0~21_sumout\ & ( \ticker_inst|Add0~5_sumout\ ) ) # ( !\ticker_inst|Add0~21_sumout\ & ( \ticker_inst|Add0~5_sumout\ & ( (\ticker_inst|Add0~13_sumout\) # (\ticker_inst|Add0~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~13_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~21_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~5_sumout\,
	combout => \ticker_inst|LessThan1~9_combout\);

-- Location: MLABCELL_X84_Y10_N51
\ticker_inst|LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~10_combout\ = ( !\ticker_inst|LessThan1~5_combout\ & ( \ticker_inst|LessThan1~6_combout\ & ( (!\ticker_inst|Add0~97_sumout\ & (!\ticker_inst|LessThan1~9_combout\ & !\ticker_inst|Add0~9_sumout\)) ) ) ) # ( 
-- \ticker_inst|LessThan1~5_combout\ & ( !\ticker_inst|LessThan1~6_combout\ & ( (!\ticker_inst|LessThan1~9_combout\ & !\ticker_inst|Add0~9_sumout\) ) ) ) # ( !\ticker_inst|LessThan1~5_combout\ & ( !\ticker_inst|LessThan1~6_combout\ & ( 
-- (!\ticker_inst|LessThan1~9_combout\ & !\ticker_inst|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan1~9_combout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan1~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~6_combout\,
	combout => \ticker_inst|LessThan1~10_combout\);

-- Location: LABCELL_X85_Y12_N42
\ticker_inst|disp_hex1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~0_combout\ = ( \ticker_inst|LessThan0~8_combout\ & ( \ticker_inst|LessThan1~10_combout\ & ( (!\ticker_inst|Add0~101_sumout\) # ((!\ticker_inst|LessThan2~3_combout\ & ((\ticker_inst|Add0~9_sumout\) # 
-- (\ticker_inst|Add0~109_sumout\)))) ) ) ) # ( !\ticker_inst|LessThan0~8_combout\ & ( \ticker_inst|LessThan1~10_combout\ ) ) # ( \ticker_inst|LessThan0~8_combout\ & ( !\ticker_inst|LessThan1~10_combout\ & ( (!\ticker_inst|Add0~101_sumout\ & 
-- (((!\ticker_inst|Add0~109_sumout\)))) # (\ticker_inst|Add0~101_sumout\ & (!\ticker_inst|LessThan2~3_combout\ & ((\ticker_inst|Add0~9_sumout\) # (\ticker_inst|Add0~109_sumout\)))) ) ) ) # ( !\ticker_inst|LessThan0~8_combout\ & ( 
-- !\ticker_inst|LessThan1~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101001001110010011111111111111111010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	datac => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan1~10_combout\,
	combout => \ticker_inst|disp_hex1~0_combout\);

-- Location: LABCELL_X83_Y10_N36
\ticker_inst|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~7_combout\ = ( \ticker_inst|LessThan0~5_combout\ & ( \ticker_inst|LessThan0~3_combout\ & ( (!\ticker_inst|Add0~1_sumout\ & !\ticker_inst|Add0~113_sumout\) ) ) ) # ( \ticker_inst|LessThan0~5_combout\ & ( 
-- !\ticker_inst|LessThan0~3_combout\ & ( (!\ticker_inst|Add0~1_sumout\ & !\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|LessThan0~5_combout\ & ( !\ticker_inst|LessThan0~3_combout\ & ( (!\ticker_inst|Add0~1_sumout\ & 
-- (\ticker_inst|LessThan0~4_combout\ & !\ticker_inst|Add0~113_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000101010100000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_LessThan0~4_combout\,
	datad => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~3_combout\,
	combout => \ticker_inst|LessThan0~7_combout\);

-- Location: LABCELL_X85_Y12_N36
\ticker_inst|disp_hex1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~1_combout\ = ( \ticker_inst|process_0~22_combout\ & ( \ticker_inst|LessThan0~7_combout\ ) ) # ( !\ticker_inst|process_0~22_combout\ & ( \ticker_inst|LessThan0~7_combout\ ) ) # ( \ticker_inst|process_0~22_combout\ & ( 
-- !\ticker_inst|LessThan0~7_combout\ & ( ((!\ticker_inst|disp_hex1~0_combout\) # ((\ticker_inst|Add0~1_sumout\ & !\ticker_inst|process_0~16_combout\))) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( 
-- !\ticker_inst|LessThan0~7_combout\ & ( ((!\ticker_inst|disp_hex1~0_combout\) # (!\ticker_inst|process_0~16_combout\)) # (\ticker_inst|Add0~113_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011101110111111101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datab => \ticker_inst|ALT_INV_disp_hex1~0_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~16_combout\,
	datae => \ticker_inst|ALT_INV_process_0~22_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~7_combout\,
	combout => \ticker_inst|disp_hex1~1_combout\);

-- Location: FF_X85_Y12_N37
\ticker_inst|disp_hex1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex1~1_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex1\(2));

-- Location: MLABCELL_X84_Y12_N6
\ticker_inst|disp_hex1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~2_combout\ = ( !\ticker_inst|process_0~33_combout\ & ( \ticker_inst|process_0~0_combout\ & ( (\ticker_inst|process_0~15_combout\ & (!\ticker_inst|Add0~113_sumout\ & ((!\ticker_inst|process_0~11_combout\) # 
-- (!\ticker_inst|process_0~12_combout\)))) ) ) ) # ( !\ticker_inst|process_0~33_combout\ & ( !\ticker_inst|process_0~0_combout\ & ( (\ticker_inst|process_0~15_combout\ & (!\ticker_inst|process_0~12_combout\ & !\ticker_inst|Add0~113_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000110010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~11_combout\,
	datab => \ticker_inst|ALT_INV_process_0~15_combout\,
	datac => \ticker_inst|ALT_INV_process_0~12_combout\,
	datad => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~33_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~0_combout\,
	combout => \ticker_inst|disp_hex1~2_combout\);

-- Location: MLABCELL_X82_Y12_N18
\ticker_inst|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan2~4_combout\ = ( \ticker_inst|process_0~18_combout\ & ( \ticker_inst|process_0~19_combout\ & ( (\ticker_inst|LessThan3~0_combout\ & (((!\ticker_inst|LessThan2~1_combout\ & \ticker_inst|LessThan2~2_combout\)) # 
-- (\ticker_inst|Add0~29_sumout\))) ) ) ) # ( \ticker_inst|process_0~18_combout\ & ( !\ticker_inst|process_0~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan2~1_combout\,
	datab => \ticker_inst|ALT_INV_LessThan2~2_combout\,
	datac => \ticker_inst|ALT_INV_LessThan3~0_combout\,
	datad => \ticker_inst|ALT_INV_Add0~29_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~18_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~19_combout\,
	combout => \ticker_inst|LessThan2~4_combout\);

-- Location: MLABCELL_X82_Y12_N6
\ticker_inst|disp_hex1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~3_combout\ = ( \ticker_inst|process_0~22_combout\ & ( \ticker_inst|LessThan2~4_combout\ & ( ((!\ticker_inst|disp_hex1~2_combout\) # (\ticker_inst|LessThan0~8_combout\)) # (\ticker_inst|LessThan0~7_combout\) ) ) ) # ( 
-- !\ticker_inst|process_0~22_combout\ & ( \ticker_inst|LessThan2~4_combout\ & ( (!\ticker_inst|disp_hex1~2_combout\) # (\ticker_inst|LessThan0~7_combout\) ) ) ) # ( \ticker_inst|process_0~22_combout\ & ( !\ticker_inst|LessThan2~4_combout\ & ( 
-- ((!\ticker_inst|disp_hex1~2_combout\) # (\ticker_inst|LessThan0~8_combout\)) # (\ticker_inst|LessThan0~7_combout\) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( !\ticker_inst|LessThan2~4_combout\ & ( ((!\ticker_inst|disp_hex1~2_combout\) # 
-- ((\ticker_inst|LessThan0~8_combout\ & !\ticker_inst|disp_hex0~0_combout\))) # (\ticker_inst|LessThan0~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110101111111110111011111111111010101011111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan0~7_combout\,
	datab => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datac => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datad => \ticker_inst|ALT_INV_disp_hex1~2_combout\,
	datae => \ticker_inst|ALT_INV_process_0~22_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	combout => \ticker_inst|disp_hex1~3_combout\);

-- Location: FF_X82_Y12_N7
\ticker_inst|disp_hex1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex1~3_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex1\(3));

-- Location: LABCELL_X83_Y12_N36
\ticker_inst|disp_hex1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~4_combout\ = ( \ticker_inst|disp_hex0~1_combout\ & ( ((!\ticker_inst|disp_hex0[3]~4_combout\ & ((!\ticker_inst|Add0~1_sumout\) # (!\ticker_inst|process_0~8_combout\)))) # (\ticker_inst|Add0~113_sumout\) ) ) # ( 
-- !\ticker_inst|disp_hex0~1_combout\ & ( (!\ticker_inst|Add0~1_sumout\) # (((!\ticker_inst|process_0~8_combout\ & !\ticker_inst|disp_hex0[3]~4_combout\)) # (\ticker_inst|Add0~113_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111110101111111011111010111111101111000011111110111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datab => \ticker_inst|ALT_INV_process_0~8_combout\,
	datac => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datad => \ticker_inst|ALT_INV_disp_hex0[3]~4_combout\,
	dataf => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	combout => \ticker_inst|disp_hex1~4_combout\);

-- Location: FF_X83_Y12_N38
\ticker_inst|disp_hex1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex1~4_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex1\(4));

-- Location: LABCELL_X83_Y12_N18
\ticker_inst|disp_hex1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~5_combout\ = ( \ticker_inst|process_0~22_combout\ & ( \ticker_inst|process_0~8_combout\ & ( ((!\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|disp_hex0~1_combout\))) # (\ticker_inst|Add0~1_sumout\ & 
-- (\ticker_inst|process_0~16_combout\))) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( \ticker_inst|process_0~8_combout\ & ( ((!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|Add0~113_sumout\)) # 
-- (\ticker_inst|process_0~16_combout\) ) ) ) # ( \ticker_inst|process_0~22_combout\ & ( !\ticker_inst|process_0~8_combout\ & ( ((!\ticker_inst|disp_hex0~1_combout\) # (\ticker_inst|Add0~1_sumout\)) # (\ticker_inst|Add0~113_sumout\) ) ) ) # ( 
-- !\ticker_inst|process_0~22_combout\ & ( !\ticker_inst|process_0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110011111111110111111101111111011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~16_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_disp_hex0~1_combout\,
	datae => \ticker_inst|ALT_INV_process_0~22_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~8_combout\,
	combout => \ticker_inst|disp_hex1~5_combout\);

-- Location: FF_X83_Y12_N20
\ticker_inst|disp_hex1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex1~5_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex1\(6));

-- Location: LABCELL_X83_Y13_N6
\ticker_inst|disp_hex2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~0_combout\ = ( \ticker_inst|LessThan0~3_combout\ & ( (!\ticker_inst|Add0~113_sumout\ & ((!\ticker_inst|LessThan0~5_combout\) # (\ticker_inst|Add0~1_sumout\))) ) ) # ( !\ticker_inst|LessThan0~3_combout\ & ( 
-- (!\ticker_inst|Add0~113_sumout\ & (((!\ticker_inst|LessThan0~5_combout\ & !\ticker_inst|LessThan0~4_combout\)) # (\ticker_inst|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000001010100010100000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan0~4_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~3_combout\,
	combout => \ticker_inst|disp_hex2~0_combout\);

-- Location: MLABCELL_X82_Y12_N48
\ticker_inst|disp_hex2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~1_combout\ = ( \ticker_inst|disp_hex2~0_combout\ & ( \ticker_inst|LessThan2~4_combout\ & ( (!\ticker_inst|process_0~35_combout\) # ((\ticker_inst|process_0~34_combout\) # (\ticker_inst|Add0~1_sumout\)) ) ) ) # ( 
-- !\ticker_inst|disp_hex2~0_combout\ & ( \ticker_inst|LessThan2~4_combout\ ) ) # ( \ticker_inst|disp_hex2~0_combout\ & ( !\ticker_inst|LessThan2~4_combout\ & ( ((\ticker_inst|disp_hex0~0_combout\ & ((!\ticker_inst|process_0~35_combout\) # 
-- (\ticker_inst|process_0~34_combout\)))) # (\ticker_inst|Add0~1_sumout\) ) ) ) # ( !\ticker_inst|disp_hex2~0_combout\ & ( !\ticker_inst|LessThan2~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001110110011111111111111111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~35_combout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datad => \ticker_inst|ALT_INV_process_0~34_combout\,
	datae => \ticker_inst|ALT_INV_disp_hex2~0_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	combout => \ticker_inst|disp_hex2~1_combout\);

-- Location: FF_X82_Y12_N49
\ticker_inst|disp_hex2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex2~1_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex2\(2));

-- Location: LABCELL_X83_Y13_N15
\ticker_inst|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~9_combout\ = ( \ticker_inst|LessThan0~3_combout\ & ( !\ticker_inst|LessThan0~5_combout\ ) ) # ( !\ticker_inst|LessThan0~3_combout\ & ( (!\ticker_inst|LessThan0~4_combout\ & !\ticker_inst|LessThan0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ticker_inst|ALT_INV_LessThan0~4_combout\,
	datad => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~3_combout\,
	combout => \ticker_inst|LessThan0~9_combout\);

-- Location: LABCELL_X83_Y13_N18
\ticker_inst|disp_hex2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~2_combout\ = ( \ticker_inst|process_0~22_combout\ & ( \ticker_inst|LessThan0~9_combout\ & ( (!\ticker_inst|LessThan0~8_combout\) # ((!\ticker_inst|disp_hex0~0_combout\ & (!\ticker_inst|Add0~1_sumout\ & 
-- !\ticker_inst|LessThan2~4_combout\))) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( \ticker_inst|LessThan0~9_combout\ ) ) # ( \ticker_inst|process_0~22_combout\ & ( !\ticker_inst|LessThan0~9_combout\ & ( (!\ticker_inst|LessThan0~8_combout\) # 
-- (!\ticker_inst|Add0~1_sumout\) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( !\ticker_inst|LessThan0~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110101111101011111111111111111110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datab => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	datae => \ticker_inst|ALT_INV_process_0~22_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~9_combout\,
	combout => \ticker_inst|disp_hex2~2_combout\);

-- Location: FF_X83_Y13_N19
\ticker_inst|disp_hex2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex2~2_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex2\(3));

-- Location: MLABCELL_X84_Y13_N12
\ticker_inst|disp_hex2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~3_combout\ = ( \ticker_inst|process_0~16_combout\ & ( \ticker_inst|process_0~22_combout\ & ( !\ticker_inst|disp_hex2~0_combout\ ) ) ) # ( !\ticker_inst|process_0~16_combout\ & ( \ticker_inst|process_0~22_combout\ & ( 
-- (!\ticker_inst|disp_hex2~0_combout\) # (\ticker_inst|Add0~1_sumout\) ) ) ) # ( \ticker_inst|process_0~16_combout\ & ( !\ticker_inst|process_0~22_combout\ & ( !\ticker_inst|disp_hex2~0_combout\ ) ) ) # ( !\ticker_inst|process_0~16_combout\ & ( 
-- !\ticker_inst|process_0~22_combout\ & ( (((!\ticker_inst|disp_hex2~0_combout\) # (\ticker_inst|LessThan2~4_combout\)) # (\ticker_inst|disp_hex0~0_combout\)) # (\ticker_inst|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111100001111000011110101111101011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datab => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datac => \ticker_inst|ALT_INV_disp_hex2~0_combout\,
	datad => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	datae => \ticker_inst|ALT_INV_process_0~16_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~22_combout\,
	combout => \ticker_inst|disp_hex2~3_combout\);

-- Location: FF_X84_Y13_N13
\ticker_inst|disp_hex2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex2~3_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex2\(4));

-- Location: MLABCELL_X82_Y12_N30
\ticker_inst|disp_hex2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~4_combout\ = ( \ticker_inst|process_0~22_combout\ & ( \ticker_inst|LessThan2~4_combout\ & ( ((!\ticker_inst|disp_hex1~2_combout\) # (\ticker_inst|LessThan0~7_combout\)) # (\ticker_inst|LessThan0~8_combout\) ) ) ) # ( 
-- !\ticker_inst|process_0~22_combout\ & ( \ticker_inst|LessThan2~4_combout\ & ( (!\ticker_inst|disp_hex1~2_combout\) # (\ticker_inst|LessThan0~7_combout\) ) ) ) # ( \ticker_inst|process_0~22_combout\ & ( !\ticker_inst|LessThan2~4_combout\ & ( 
-- ((!\ticker_inst|LessThan0~8_combout\ & ((!\ticker_inst|disp_hex1~2_combout\))) # (\ticker_inst|LessThan0~8_combout\ & (\ticker_inst|disp_hex0~0_combout\))) # (\ticker_inst|LessThan0~7_combout\) ) ) ) # ( !\ticker_inst|process_0~22_combout\ & ( 
-- !\ticker_inst|LessThan2~4_combout\ & ( ((!\ticker_inst|disp_hex1~2_combout\ & ((!\ticker_inst|LessThan0~8_combout\) # (\ticker_inst|disp_hex0~0_combout\)))) # (\ticker_inst|LessThan0~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100001111110111110001111111111111000011111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datab => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datac => \ticker_inst|ALT_INV_LessThan0~7_combout\,
	datad => \ticker_inst|ALT_INV_disp_hex1~2_combout\,
	datae => \ticker_inst|ALT_INV_process_0~22_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	combout => \ticker_inst|disp_hex2~4_combout\);

-- Location: FF_X82_Y12_N31
\ticker_inst|disp_hex2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex2~4_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex2\(6));

-- Location: FF_X85_Y12_N43
\ticker_inst|disp_hex3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex1~0_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex3\(2));

-- Location: LABCELL_X83_Y13_N36
\ticker_inst|LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan1~11_combout\ = ( \ticker_inst|Add0~29_sumout\ & ( \ticker_inst|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~17_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~29_sumout\,
	combout => \ticker_inst|LessThan1~11_combout\);

-- Location: MLABCELL_X82_Y13_N3
\ticker_inst|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~11_combout\ = ( !\ticker_inst|Add0~13_sumout\ & ( !\ticker_inst|Add0~21_sumout\ & ( !\ticker_inst|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ticker_inst|ALT_INV_Add0~25_sumout\,
	datae => \ticker_inst|ALT_INV_Add0~13_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~21_sumout\,
	combout => \ticker_inst|LessThan0~11_combout\);

-- Location: LABCELL_X83_Y13_N42
\ticker_inst|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~10_combout\ = ( \ticker_inst|Add0~37_sumout\ & ( \ticker_inst|Add0~33_sumout\ & ( (\ticker_inst|LessThan1~1_combout\ & (\ticker_inst|Add0~41_sumout\ & ((!\ticker_inst|LessThan0~0_combout\) # (\ticker_inst|LessThan0~2_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan1~1_combout\,
	datab => \ticker_inst|ALT_INV_LessThan0~0_combout\,
	datac => \ticker_inst|ALT_INV_Add0~41_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan0~2_combout\,
	datae => \ticker_inst|ALT_INV_Add0~37_sumout\,
	dataf => \ticker_inst|ALT_INV_Add0~33_sumout\,
	combout => \ticker_inst|LessThan0~10_combout\);

-- Location: LABCELL_X83_Y13_N54
\ticker_inst|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|LessThan0~12_combout\ = ( !\ticker_inst|Add0~101_sumout\ & ( \ticker_inst|LessThan0~10_combout\ & ( (!\ticker_inst|LessThan1~11_combout\ & (!\ticker_inst|Add0~9_sumout\ & \ticker_inst|LessThan0~11_combout\)) ) ) ) # ( 
-- !\ticker_inst|Add0~101_sumout\ & ( !\ticker_inst|LessThan0~10_combout\ & ( (!\ticker_inst|Add0~9_sumout\ & (\ticker_inst|LessThan0~11_combout\ & ((!\ticker_inst|LessThan1~11_combout\) # (!\ticker_inst|Add0~97_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000000000000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan1~11_combout\,
	datab => \ticker_inst|ALT_INV_Add0~97_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan0~11_combout\,
	datae => \ticker_inst|ALT_INV_Add0~101_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~10_combout\,
	combout => \ticker_inst|LessThan0~12_combout\);

-- Location: MLABCELL_X84_Y13_N42
\ticker_inst|disp_hex3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex3~0_combout\ = ( \ticker_inst|LessThan0~5_combout\ & ( \ticker_inst|LessThan0~12_combout\ ) ) # ( !\ticker_inst|LessThan0~5_combout\ & ( \ticker_inst|LessThan0~12_combout\ ) ) # ( \ticker_inst|LessThan0~5_combout\ & ( 
-- !\ticker_inst|LessThan0~12_combout\ ) ) # ( !\ticker_inst|LessThan0~5_combout\ & ( !\ticker_inst|LessThan0~12_combout\ & ( (!\ticker_inst|LessThan0~8_combout\) # (((!\ticker_inst|LessThan2~3_combout\ & \ticker_inst|process_0~18_combout\)) # 
-- (\ticker_inst|disp_hex0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111011111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datab => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	datac => \ticker_inst|ALT_INV_process_0~18_combout\,
	datad => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datae => \ticker_inst|ALT_INV_LessThan0~5_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan0~12_combout\,
	combout => \ticker_inst|disp_hex3~0_combout\);

-- Location: FF_X84_Y13_N43
\ticker_inst|disp_hex3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex3~0_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex3\(3));

-- Location: MLABCELL_X82_Y12_N12
\ticker_inst|disp_hex2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex2~5_combout\ = ( \ticker_inst|Add0~113_sumout\ & ( \ticker_inst|LessThan2~4_combout\ ) ) # ( !\ticker_inst|Add0~113_sumout\ & ( \ticker_inst|LessThan2~4_combout\ & ( (!\ticker_inst|process_0~35_combout\) # 
-- ((\ticker_inst|process_0~34_combout\) # (\ticker_inst|Add0~1_sumout\)) ) ) ) # ( \ticker_inst|Add0~113_sumout\ & ( !\ticker_inst|LessThan2~4_combout\ ) ) # ( !\ticker_inst|Add0~113_sumout\ & ( !\ticker_inst|LessThan2~4_combout\ & ( 
-- ((\ticker_inst|disp_hex0~0_combout\ & ((!\ticker_inst|process_0~35_combout\) # (\ticker_inst|process_0~34_combout\)))) # (\ticker_inst|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111111111111111111111110111011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~35_combout\,
	datab => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datac => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datad => \ticker_inst|ALT_INV_process_0~34_combout\,
	datae => \ticker_inst|ALT_INV_Add0~113_sumout\,
	dataf => \ticker_inst|ALT_INV_LessThan2~4_combout\,
	combout => \ticker_inst|disp_hex2~5_combout\);

-- Location: FF_X82_Y12_N13
\ticker_inst|disp_hex3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex2~5_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex3\(4));

-- Location: LABCELL_X85_Y11_N18
\ticker_inst|disp_hex3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex3~1_combout\ = ( \ticker_inst|process_0~34_combout\ & ( \ticker_inst|LessThan2~3_combout\ ) ) # ( !\ticker_inst|process_0~34_combout\ & ( \ticker_inst|LessThan2~3_combout\ & ( (!\ticker_inst|process_0~35_combout\) # 
-- ((!\ticker_inst|disp_hex0~0_combout\) # (!\ticker_inst|LessThan0~8_combout\)) ) ) ) # ( \ticker_inst|process_0~34_combout\ & ( !\ticker_inst|LessThan2~3_combout\ ) ) # ( !\ticker_inst|process_0~34_combout\ & ( !\ticker_inst|LessThan2~3_combout\ & ( 
-- (!\ticker_inst|process_0~35_combout\) # ((!\ticker_inst|LessThan0~8_combout\) # ((!\ticker_inst|disp_hex0~0_combout\ & !\ticker_inst|process_0~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010111111111111111111111110111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~35_combout\,
	datab => \ticker_inst|ALT_INV_disp_hex0~0_combout\,
	datac => \ticker_inst|ALT_INV_LessThan0~8_combout\,
	datad => \ticker_inst|ALT_INV_process_0~18_combout\,
	datae => \ticker_inst|ALT_INV_process_0~34_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	combout => \ticker_inst|disp_hex3~1_combout\);

-- Location: FF_X85_Y11_N19
\ticker_inst|disp_hex3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex3~1_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex3\(6));

-- Location: LABCELL_X85_Y12_N54
\ticker_inst|disp_hex4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex4~0_combout\ = ( \ticker_inst|Add0~113_sumout\ & ( \ticker_inst|process_0~8_combout\ ) ) # ( !\ticker_inst|Add0~113_sumout\ & ( \ticker_inst|process_0~8_combout\ ) ) # ( \ticker_inst|Add0~113_sumout\ & ( 
-- !\ticker_inst|process_0~8_combout\ ) ) # ( !\ticker_inst|Add0~113_sumout\ & ( !\ticker_inst|process_0~8_combout\ & ( (!\ticker_inst|process_0~30_combout\) # (((!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|process_0~16_combout\)) # 
-- (\ticker_inst|process_0~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~30_combout\,
	datab => \ticker_inst|ALT_INV_process_0~28_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~16_combout\,
	datae => \ticker_inst|ALT_INV_Add0~113_sumout\,
	dataf => \ticker_inst|ALT_INV_process_0~8_combout\,
	combout => \ticker_inst|disp_hex4~0_combout\);

-- Location: FF_X85_Y12_N58
\ticker_inst|disp_hex4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|disp_hex4~0_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	sload => VCC,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex4\(2));

-- Location: MLABCELL_X84_Y10_N39
\ticker_inst|disp_hex4[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex4[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \ticker_inst|disp_hex4[3]~feeder_combout\);

-- Location: FF_X84_Y10_N40
\ticker_inst|disp_hex4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex4[3]~feeder_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex4\(3));

-- Location: LABCELL_X85_Y12_N0
\ticker_inst|disp_hex4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex4~1_combout\ = ( \ticker_inst|process_0~16_combout\ & ( \ticker_inst|process_0~8_combout\ & ( \ticker_inst|disp_hex1~0_combout\ ) ) ) # ( !\ticker_inst|process_0~16_combout\ & ( \ticker_inst|process_0~8_combout\ & ( 
-- \ticker_inst|disp_hex1~0_combout\ ) ) ) # ( \ticker_inst|process_0~16_combout\ & ( !\ticker_inst|process_0~8_combout\ & ( \ticker_inst|disp_hex1~0_combout\ ) ) ) # ( !\ticker_inst|process_0~16_combout\ & ( !\ticker_inst|process_0~8_combout\ & ( 
-- (\ticker_inst|disp_hex1~0_combout\ & (((!\ticker_inst|process_0~41_combout\) # (!\ticker_inst|Add0~1_sumout\)) # (\ticker_inst|Add0~113_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datab => \ticker_inst|ALT_INV_process_0~41_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_disp_hex1~0_combout\,
	datae => \ticker_inst|ALT_INV_process_0~16_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~8_combout\,
	combout => \ticker_inst|disp_hex4~1_combout\);

-- Location: FF_X85_Y12_N1
\ticker_inst|disp_hex4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex4~1_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex4\(4));

-- Location: LABCELL_X83_Y12_N6
\ticker_inst|disp_hex1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex1~6_combout\ = ( \ticker_inst|LessThan2~3_combout\ & ( \ticker_inst|Add0~109_sumout\ & ( (!\ticker_inst|LessThan1~10_combout\) # (\ticker_inst|Add0~101_sumout\) ) ) ) # ( !\ticker_inst|LessThan2~3_combout\ & ( 
-- \ticker_inst|Add0~109_sumout\ & ( (!\ticker_inst|Add0~101_sumout\ & !\ticker_inst|LessThan1~10_combout\) ) ) ) # ( \ticker_inst|LessThan2~3_combout\ & ( !\ticker_inst|Add0~109_sumout\ & ( \ticker_inst|Add0~101_sumout\ ) ) ) # ( 
-- !\ticker_inst|LessThan2~3_combout\ & ( !\ticker_inst|Add0~109_sumout\ & ( (!\ticker_inst|Add0~9_sumout\ & \ticker_inst|Add0~101_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000011110000111111110000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datac => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datad => \ticker_inst|ALT_INV_LessThan1~10_combout\,
	datae => \ticker_inst|ALT_INV_LessThan2~3_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~109_sumout\,
	combout => \ticker_inst|disp_hex1~6_combout\);

-- Location: LABCELL_X83_Y12_N48
\ticker_inst|disp_hex4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex4~2_combout\ = ( \ticker_inst|disp_hex1~6_combout\ & ( \ticker_inst|process_0~8_combout\ & ( (!\ticker_inst|disp_hex2~0_combout\) # (\ticker_inst|Add0~1_sumout\) ) ) ) # ( !\ticker_inst|disp_hex1~6_combout\ & ( 
-- \ticker_inst|process_0~8_combout\ ) ) # ( \ticker_inst|disp_hex1~6_combout\ & ( !\ticker_inst|process_0~8_combout\ & ( (!\ticker_inst|disp_hex2~0_combout\) # ((\ticker_inst|Add0~1_sumout\ & ((!\ticker_inst|process_0~41_combout\) # 
-- (\ticker_inst|process_0~16_combout\)))) ) ) ) # ( !\ticker_inst|disp_hex1~6_combout\ & ( !\ticker_inst|process_0~8_combout\ & ( ((!\ticker_inst|process_0~41_combout\) # ((!\ticker_inst|Add0~1_sumout\) # (!\ticker_inst|disp_hex2~0_combout\))) # 
-- (\ticker_inst|process_0~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101111111110000110111111111111111111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~16_combout\,
	datab => \ticker_inst|ALT_INV_process_0~41_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_disp_hex2~0_combout\,
	datae => \ticker_inst|ALT_INV_disp_hex1~6_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~8_combout\,
	combout => \ticker_inst|disp_hex4~2_combout\);

-- Location: FF_X83_Y12_N50
\ticker_inst|disp_hex4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex4~2_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex4\(6));

-- Location: LABCELL_X83_Y12_N30
\ticker_inst|disp_hex5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex5~0_combout\ = ( \ticker_inst|process_0~8_combout\ & ( ((!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|process_0~16_combout\)) # (\ticker_inst|Add0~113_sumout\) ) ) # ( !\ticker_inst|process_0~8_combout\ & ( 
-- ((!\ticker_inst|process_0~41_combout\) # ((!\ticker_inst|Add0~1_sumout\) # (\ticker_inst|process_0~16_combout\))) # (\ticker_inst|Add0~113_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datab => \ticker_inst|ALT_INV_process_0~41_combout\,
	datac => \ticker_inst|ALT_INV_Add0~1_sumout\,
	datad => \ticker_inst|ALT_INV_process_0~16_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~8_combout\,
	combout => \ticker_inst|disp_hex5~0_combout\);

-- Location: FF_X83_Y12_N32
\ticker_inst|disp_hex5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex5~0_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex5\(2));

-- Location: FF_X85_Y12_N55
\ticker_inst|disp_hex5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex4~0_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex5\(3));

-- Location: MLABCELL_X87_Y12_N36
\ticker_inst|process_0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|process_0~42_combout\ = ( \ticker_inst|LessThan10~4_combout\ & ( \ticker_inst|LessThan10~7_combout\ & ( (\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|LessThan10~6_combout\ & (!\ticker_inst|process_0~29_combout\ & 
-- \ticker_inst|Add0~9_sumout\))) ) ) ) # ( !\ticker_inst|LessThan10~4_combout\ & ( \ticker_inst|LessThan10~7_combout\ & ( (\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|process_0~29_combout\ & \ticker_inst|Add0~9_sumout\)) ) ) ) # ( 
-- !\ticker_inst|LessThan10~4_combout\ & ( !\ticker_inst|LessThan10~7_combout\ & ( (\ticker_inst|Add0~109_sumout\ & (!\ticker_inst|process_0~29_combout\ & \ticker_inst|Add0~9_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000000000010100000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_Add0~109_sumout\,
	datab => \ticker_inst|ALT_INV_LessThan10~6_combout\,
	datac => \ticker_inst|ALT_INV_process_0~29_combout\,
	datad => \ticker_inst|ALT_INV_Add0~9_sumout\,
	datae => \ticker_inst|ALT_INV_LessThan10~4_combout\,
	dataf => \ticker_inst|ALT_INV_LessThan10~7_combout\,
	combout => \ticker_inst|process_0~42_combout\);

-- Location: MLABCELL_X87_Y12_N18
\ticker_inst|disp_hex0[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex0[3]~11_combout\ = ( \ticker_inst|process_0~27_combout\ & ( \ticker_inst|process_0~24_combout\ & ( (!\ticker_inst|process_0~42_combout\ & (!\ticker_inst|process_0~28_combout\ & \ticker_inst|Add0~101_sumout\)) ) ) ) # ( 
-- !\ticker_inst|process_0~27_combout\ & ( \ticker_inst|process_0~24_combout\ & ( (!\ticker_inst|process_0~42_combout\ & (!\ticker_inst|process_0~28_combout\ & \ticker_inst|Add0~101_sumout\)) ) ) ) # ( \ticker_inst|process_0~27_combout\ & ( 
-- !\ticker_inst|process_0~24_combout\ & ( (!\ticker_inst|process_0~42_combout\ & (!\ticker_inst|process_0~28_combout\ & \ticker_inst|Add0~101_sumout\)) ) ) ) # ( !\ticker_inst|process_0~27_combout\ & ( !\ticker_inst|process_0~24_combout\ & ( 
-- ((!\ticker_inst|process_0~42_combout\ & (!\ticker_inst|process_0~28_combout\ & \ticker_inst|Add0~101_sumout\))) # (\ticker_inst|process_0~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110110011000000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~42_combout\,
	datab => \ticker_inst|ALT_INV_process_0~7_combout\,
	datac => \ticker_inst|ALT_INV_process_0~28_combout\,
	datad => \ticker_inst|ALT_INV_Add0~101_sumout\,
	datae => \ticker_inst|ALT_INV_process_0~27_combout\,
	dataf => \ticker_inst|ALT_INV_process_0~24_combout\,
	combout => \ticker_inst|disp_hex0[3]~11_combout\);

-- Location: MLABCELL_X87_Y12_N6
\ticker_inst|disp_hex5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ticker_inst|disp_hex5~1_combout\ = ( \ticker_inst|Add0~1_sumout\ & ( ((!\ticker_inst|disp_hex0[3]~11_combout\) # (\ticker_inst|Add0~113_sumout\)) # (\ticker_inst|process_0~16_combout\) ) ) # ( !\ticker_inst|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ticker_inst|ALT_INV_process_0~16_combout\,
	datab => \ticker_inst|ALT_INV_Add0~113_sumout\,
	datac => \ticker_inst|ALT_INV_disp_hex0[3]~11_combout\,
	dataf => \ticker_inst|ALT_INV_Add0~1_sumout\,
	combout => \ticker_inst|disp_hex5~1_combout\);

-- Location: FF_X87_Y12_N7
\ticker_inst|disp_hex5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	d => \ticker_inst|disp_hex5~1_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex5\(4));

-- Location: FF_X85_Y10_N44
\ticker_inst|disp_hex5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \system_clock~input_o\,
	asdata => \ticker_inst|disp_hex0~6_combout\,
	sclr => \ticker_inst|LessThan0~7_combout\,
	sload => VCC,
	ena => \ticker_inst|disp_hex0[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ticker_inst|disp_hex5\(6));

-- Location: IOIBUF_X36_Y0_N1
\PR_reset_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PR_reset_button,
	o => \PR_reset_button~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\PR1_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PR1_button,
	o => \PR1_button~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\dir_switch_1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir_switch_1,
	o => \dir_switch_1~input_o\);

-- Location: LABCELL_X70_Y22_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


