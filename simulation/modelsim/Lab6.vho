-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/25/2021 17:33:40"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUBlock IS
    PORT (
	Neg : OUT std_logic;
	Clock : IN std_logic;
	Reset : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	decEn : IN std_logic;
	R1 : OUT std_logic_vector(3 DOWNTO 0);
	R2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALUBlock;

-- Design Ports Information
-- Neg	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[1]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[3]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[1]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- decEn	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALUBlock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Neg : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_decEn : std_logic;
SIGNAL ww_R1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~14_combout\ : std_logic;
SIGNAL \decEn~combout\ : std_logic;
SIGNAL \inst|Neg~0_combout\ : std_logic;
SIGNAL \inst|Neg~regout\ : std_logic;
SIGNAL \inst|Result~11_combout\ : std_logic;
SIGNAL \inst6|yfsm.s4~regout\ : std_logic;
SIGNAL \inst6|yfsm.s5~regout\ : std_logic;
SIGNAL \inst6|yfsm.s6~regout\ : std_logic;
SIGNAL \inst6|yfsm.s7~regout\ : std_logic;
SIGNAL \inst6|yfsm.s8~regout\ : std_logic;
SIGNAL \inst6|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst6|yfsm.s0~regout\ : std_logic;
SIGNAL \inst6|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst6|yfsm.s1~regout\ : std_logic;
SIGNAL \inst6|yfsm.s2~regout\ : std_logic;
SIGNAL \inst6|yfsm.s3~regout\ : std_logic;
SIGNAL \inst|Result[3]~8_combout\ : std_logic;
SIGNAL \inst|Result[3]~9_combout\ : std_logic;
SIGNAL \inst|Result[3]~10_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|Selector4~3_combout\ : std_logic;
SIGNAL \inst|Result[3]~0_combout\ : std_logic;
SIGNAL \inst|Result~11_wirecell_combout\ : std_logic;
SIGNAL \inst|Result~12_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Selector5~2_combout\ : std_logic;
SIGNAL \inst|Selector5~3_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst|Result[2]~1_combout\ : std_logic;
SIGNAL \inst|Result~12_wirecell_combout\ : std_logic;
SIGNAL \inst|Result~13_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst|Selector6~3_combout\ : std_logic;
SIGNAL \inst|Result[1]~2_combout\ : std_logic;
SIGNAL \inst|Result~13_wirecell_combout\ : std_logic;
SIGNAL \inst6|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Result~14_combout\ : std_logic;
SIGNAL \inst|Selector7~7_combout\ : std_logic;
SIGNAL \inst|Selector7~4_combout\ : std_logic;
SIGNAL \inst|Selector7~3_combout\ : std_logic;
SIGNAL \inst|Selector7~5_combout\ : std_logic;
SIGNAL \inst|Selector7~6_combout\ : std_logic;
SIGNAL \inst|Result[0]~3_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~0_wirecell_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst|Result[7]~4_combout\ : std_logic;
SIGNAL \inst|Result~15_combout\ : std_logic;
SIGNAL \inst|Result~15_wirecell_combout\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|Selector1~2_combout\ : std_logic;
SIGNAL \inst|Selector1~3_combout\ : std_logic;
SIGNAL \inst|Result[6]~5_combout\ : std_logic;
SIGNAL \inst|Result~16_combout\ : std_logic;
SIGNAL \inst|Result~16_wirecell_combout\ : std_logic;
SIGNAL \inst|Result~19_combout\ : std_logic;
SIGNAL \inst|Result~17_combout\ : std_logic;
SIGNAL \inst|Result~18_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst|Selector2~3_combout\ : std_logic;
SIGNAL \inst|Result[5]~6_combout\ : std_logic;
SIGNAL \inst|Result~19_wirecell_combout\ : std_logic;
SIGNAL \inst|Result~20_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|Selector3~2_combout\ : std_logic;
SIGNAL \inst|Selector3~3_combout\ : std_logic;
SIGNAL \inst|Result[4]~7_combout\ : std_logic;
SIGNAL \inst|Result~20_wirecell_combout\ : std_logic;
SIGNAL \inst3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset~clkctrl_outclk\ : std_logic;

BEGIN

Neg <= ww_Neg;
ww_Clock <= Clock;
ww_Reset <= Reset;
ww_A <= A;
ww_B <= B;
ww_decEn <= decEn;
R1 <= ww_R1;
R2 <= ww_R2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);
\ALT_INV_Reset~clkctrl_outclk\ <= NOT \Reset~clkctrl_outclk\;

-- Location: LCCOMB_X24_Y29_N16
\inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst2|Q\(0) & ((GND) # (!\inst3|Q\(0)))) # (!\inst2|Q\(0) & (\inst3|Q\(0) $ (GND)))
-- \inst|Add1~1\ = CARRY((\inst2|Q\(0)) # (!\inst3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst3|Q\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X24_Y29_N2
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst2|Q\(1) & ((\inst3|Q\(1) & (\inst|Add0~1\ & VCC)) # (!\inst3|Q\(1) & (!\inst|Add0~1\)))) # (!\inst2|Q\(1) & ((\inst3|Q\(1) & (!\inst|Add0~1\)) # (!\inst3|Q\(1) & ((\inst|Add0~1\) # (GND)))))
-- \inst|Add0~3\ = CARRY((\inst2|Q\(1) & (!\inst3|Q\(1) & !\inst|Add0~1\)) # (!\inst2|Q\(1) & ((!\inst|Add0~1\) # (!\inst3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X24_Y29_N4
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = ((\inst2|Q\(2) $ (\inst3|Q\(2) $ (!\inst|Add0~3\)))) # (GND)
-- \inst|Add0~5\ = CARRY((\inst2|Q\(2) & ((\inst3|Q\(2)) # (!\inst|Add0~3\))) # (!\inst2|Q\(2) & (\inst3|Q\(2) & !\inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X24_Y29_N6
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst3|Q\(3) & ((\inst2|Q\(3) & (\inst|Add0~5\ & VCC)) # (!\inst2|Q\(3) & (!\inst|Add0~5\)))) # (!\inst3|Q\(3) & ((\inst2|Q\(3) & (!\inst|Add0~5\)) # (!\inst2|Q\(3) & ((\inst|Add0~5\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\inst3|Q\(3) & (!\inst2|Q\(3) & !\inst|Add0~5\)) # (!\inst3|Q\(3) & ((!\inst|Add0~5\) # (!\inst2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(3),
	datab => \inst2|Q\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X24_Y29_N12
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = ((\inst3|Q\(6) $ (\inst2|Q\(6) $ (!\inst|Add0~11\)))) # (GND)
-- \inst|Add0~13\ = CARRY((\inst3|Q\(6) & ((\inst2|Q\(6)) # (!\inst|Add0~11\))) # (!\inst3|Q\(6) & (\inst2|Q\(6) & !\inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst2|Q\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X24_Y30_N2
\inst|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~1_combout\ = (\inst6|WideOr3~0_combout\ & (((\inst|Selector7~0_combout\ & \inst|Add0~0_combout\)))) # (!\inst6|WideOr3~0_combout\ & (((!\inst|Selector7~0_combout\)) # (!\inst3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|WideOr3~0_combout\,
	datab => \inst3|Q\(0),
	datac => \inst|Selector7~0_combout\,
	datad => \inst|Add0~0_combout\,
	combout => \inst|Selector7~1_combout\);

-- Location: LCCOMB_X24_Y30_N20
\inst|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~2_combout\ = (\inst|Selector7~0_combout\ & (((\inst|Selector7~1_combout\)))) # (!\inst|Selector7~0_combout\ & ((\inst|Selector7~1_combout\ & (!\inst|Result~14_combout\)) # (!\inst|Selector7~1_combout\ & ((\inst|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result~14_combout\,
	datab => \inst|Add1~0_combout\,
	datac => \inst|Selector7~0_combout\,
	datad => \inst|Selector7~1_combout\,
	combout => \inst|Selector7~2_combout\);

-- Location: LCCOMB_X25_Y30_N20
\inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|Result[3]~9_combout\ & ((\inst3|Q\(7) & (\inst2|Q\(7) & \inst|Result[3]~10_combout\)) # (!\inst3|Q\(7) & (!\inst2|Q\(7) & !\inst|Result[3]~10_combout\)))) # (!\inst|Result[3]~9_combout\ & 
-- (((\inst|Result[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~9_combout\,
	datab => \inst3|Q\(7),
	datac => \inst2|Q\(7),
	datad => \inst|Result[3]~10_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X25_Y30_N10
\inst|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~2_combout\ = (\inst6|WideOr3~0_combout\ & ((\inst3|Q\(7)) # ((\inst2|Q\(7) & \inst|Result[3]~8_combout\)))) # (!\inst6|WideOr3~0_combout\ & (((!\inst2|Q\(7) & \inst|Result[3]~8_combout\)) # (!\inst3|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(7),
	datab => \inst6|WideOr3~0_combout\,
	datac => \inst3|Q\(7),
	datad => \inst|Result[3]~8_combout\,
	combout => \inst|Selector0~2_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: CLKCTRL_G1
\Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~clkctrl_outclk\);

-- Location: LCFF_X24_Y29_N15
\inst3|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(7));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCFF_X24_Y29_N13
\inst3|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(6));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X24_Y29_N27
\inst2|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(5));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X24_Y29_N25
\inst2|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(4));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X24_Y29_N23
\inst2|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(3));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCFF_X24_Y29_N5
\inst3|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X24_Y29_N19
\inst2|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(1));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X24_Y29_N17
\inst2|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(0));

-- Location: LCCOMB_X25_Y29_N14
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\inst3|Q\(0) & !\inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(0),
	datab => \inst2|Q\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X25_Y29_N16
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst3|Q\(1) & (\inst2|Q\(1) & !\inst|LessThan0~1_cout\)) # (!\inst3|Q\(1) & ((\inst2|Q\(1)) # (!\inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(1),
	datab => \inst2|Q\(1),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X25_Y29_N18
\inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst2|Q\(2) & (\inst3|Q\(2) & !\inst|LessThan0~3_cout\)) # (!\inst2|Q\(2) & ((\inst3|Q\(2)) # (!\inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X25_Y29_N20
\inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst3|Q\(3) & (\inst2|Q\(3) & !\inst|LessThan0~5_cout\)) # (!\inst3|Q\(3) & ((\inst2|Q\(3)) # (!\inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(3),
	datab => \inst2|Q\(3),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X25_Y29_N22
\inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst3|Q\(4) & ((!\inst|LessThan0~7_cout\) # (!\inst2|Q\(4)))) # (!\inst3|Q\(4) & (!\inst2|Q\(4) & !\inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst2|Q\(4),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X25_Y29_N24
\inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst3|Q\(5) & (\inst2|Q\(5) & !\inst|LessThan0~9_cout\)) # (!\inst3|Q\(5) & ((\inst2|Q\(5)) # (!\inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datab => \inst2|Q\(5),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X25_Y29_N26
\inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst2|Q\(6) & (\inst3|Q\(6) & !\inst|LessThan0~11_cout\)) # (!\inst2|Q\(6) & ((\inst3|Q\(6)) # (!\inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst3|Q\(6),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X25_Y29_N28
\inst|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~14_combout\ = (\inst2|Q\(7) & (\inst|LessThan0~13_cout\ & \inst3|Q\(7))) # (!\inst2|Q\(7) & ((\inst|LessThan0~13_cout\) # (\inst3|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(7),
	datad => \inst3|Q\(7),
	cin => \inst|LessThan0~13_cout\,
	combout => \inst|LessThan0~14_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\decEn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_decEn,
	combout => \decEn~combout\);

-- Location: LCCOMB_X25_Y30_N24
\inst|Neg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Neg~0_combout\ = (\inst6|yfsm.s1~regout\ & ((\decEn~combout\ & (\inst|LessThan0~14_combout\)) # (!\decEn~combout\ & ((\inst|Neg~regout\))))) # (!\inst6|yfsm.s1~regout\ & (((\inst|Neg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s1~regout\,
	datab => \inst|LessThan0~14_combout\,
	datac => \inst|Neg~regout\,
	datad => \decEn~combout\,
	combout => \inst|Neg~0_combout\);

-- Location: LCFF_X25_Y30_N25
\inst|Neg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Neg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Neg~regout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCFF_X24_Y29_N7
\inst3|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(3));

-- Location: LCCOMB_X22_Y29_N14
\inst|Result~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~11_combout\ = \inst3|Q\(3) $ (\inst2|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Q\(3),
	datac => \inst2|Q\(3),
	combout => \inst|Result~11_combout\);

-- Location: LCFF_X24_Y30_N11
\inst6|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst6|yfsm.s3~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|yfsm.s4~regout\);

-- Location: LCFF_X24_Y30_N9
\inst6|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst6|yfsm.s4~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|yfsm.s5~regout\);

-- Location: LCFF_X24_Y30_N7
\inst6|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst6|yfsm.s5~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|yfsm.s6~regout\);

-- Location: LCFF_X24_Y30_N5
\inst6|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst6|yfsm.s6~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|yfsm.s7~regout\);

-- Location: LCFF_X24_Y30_N15
\inst6|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst6|yfsm.s7~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|yfsm.s8~regout\);

-- Location: LCCOMB_X24_Y30_N28
\inst6|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|yfsm.s0~0_combout\ = !\inst6|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|yfsm.s8~regout\,
	combout => \inst6|yfsm.s0~0_combout\);

-- Location: LCFF_X24_Y30_N29
\inst6|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst6|yfsm.s0~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|yfsm.s0~regout\);

-- Location: LCCOMB_X24_Y30_N12
\inst6|yfsm.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|yfsm.s1~0_combout\ = !\inst6|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|yfsm.s0~regout\,
	combout => \inst6|yfsm.s1~0_combout\);

-- Location: LCFF_X24_Y30_N13
\inst6|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst6|yfsm.s1~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|yfsm.s1~regout\);

-- Location: LCFF_X24_Y30_N19
\inst6|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst6|yfsm.s1~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|yfsm.s2~regout\);

-- Location: LCFF_X24_Y30_N31
\inst6|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst6|yfsm.s2~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|yfsm.s3~regout\);

-- Location: LCCOMB_X24_Y30_N16
\inst|Result[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~8_combout\ = (\inst6|yfsm.s3~regout\) # ((\inst6|yfsm.s2~regout\ & ((\inst6|yfsm.s1~regout\))) # (!\inst6|yfsm.s2~regout\ & (\inst6|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s6~regout\,
	datab => \inst6|yfsm.s3~regout\,
	datac => \inst6|yfsm.s2~regout\,
	datad => \inst6|yfsm.s1~regout\,
	combout => \inst|Result[3]~8_combout\);

-- Location: LCCOMB_X24_Y30_N0
\inst|Result[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~9_combout\ = (\inst6|yfsm.s5~regout\) # (\inst6|yfsm.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|yfsm.s5~regout\,
	datad => \inst6|yfsm.s4~regout\,
	combout => \inst|Result[3]~9_combout\);

-- Location: LCCOMB_X24_Y30_N14
\inst|Result[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~10_combout\ = (\inst6|yfsm.s1~regout\) # ((\inst6|yfsm.s5~regout\) # (\inst6|yfsm.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s1~regout\,
	datab => \inst6|yfsm.s5~regout\,
	datad => \inst6|yfsm.s3~regout\,
	combout => \inst|Result[3]~10_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCFF_X24_Y29_N3
\inst3|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(1));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X24_Y29_N1
\inst3|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(0));

-- Location: LCCOMB_X24_Y29_N18
\inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst2|Q\(1) & ((\inst3|Q\(1) & (!\inst|Add1~1\)) # (!\inst3|Q\(1) & (\inst|Add1~1\ & VCC)))) # (!\inst2|Q\(1) & ((\inst3|Q\(1) & ((\inst|Add1~1\) # (GND))) # (!\inst3|Q\(1) & (!\inst|Add1~1\))))
-- \inst|Add1~3\ = CARRY((\inst2|Q\(1) & (\inst3|Q\(1) & !\inst|Add1~1\)) # (!\inst2|Q\(1) & ((\inst3|Q\(1)) # (!\inst|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X24_Y29_N20
\inst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = ((\inst2|Q\(2) $ (\inst3|Q\(2) $ (\inst|Add1~3\)))) # (GND)
-- \inst|Add1~5\ = CARRY((\inst2|Q\(2) & ((!\inst|Add1~3\) # (!\inst3|Q\(2)))) # (!\inst2|Q\(2) & (!\inst3|Q\(2) & !\inst|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X24_Y29_N22
\inst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst3|Q\(3) & ((\inst2|Q\(3) & (!\inst|Add1~5\)) # (!\inst2|Q\(3) & ((\inst|Add1~5\) # (GND))))) # (!\inst3|Q\(3) & ((\inst2|Q\(3) & (\inst|Add1~5\ & VCC)) # (!\inst2|Q\(3) & (!\inst|Add1~5\))))
-- \inst|Add1~7\ = CARRY((\inst3|Q\(3) & ((!\inst|Add1~5\) # (!\inst2|Q\(3)))) # (!\inst3|Q\(3) & (!\inst2|Q\(3) & !\inst|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(3),
	datab => \inst2|Q\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X23_Y29_N12
\inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|Result[3]~9_combout\ & (((\inst|Result[3]~10_combout\)))) # (!\inst|Result[3]~9_combout\ & ((\inst|Result[3]~10_combout\ & ((\inst|Add1~6_combout\))) # (!\inst|Result[3]~10_combout\ & (\inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datab => \inst|Result[3]~9_combout\,
	datac => \inst|Result[3]~10_combout\,
	datad => \inst|Add1~6_combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X23_Y29_N2
\inst|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|Result[3]~9_combout\ & ((\inst3|Q\(3) & (\inst2|Q\(3) & \inst|Selector4~0_combout\)) # (!\inst3|Q\(3) & (!\inst2|Q\(3) & !\inst|Selector4~0_combout\)))) # (!\inst|Result[3]~9_combout\ & (((\inst|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(3),
	datab => \inst|Result[3]~9_combout\,
	datac => \inst2|Q\(3),
	datad => \inst|Selector4~0_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X22_Y29_N10
\inst|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst6|WideOr3~0_combout\ & (((!\inst|Result[3]~8_combout\ & \inst|Selector4~1_combout\)))) # (!\inst6|WideOr3~0_combout\ & (((\inst|Result[3]~8_combout\)) # (!\inst3|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|WideOr3~0_combout\,
	datab => \inst3|Q\(3),
	datac => \inst|Result[3]~8_combout\,
	datad => \inst|Selector4~1_combout\,
	combout => \inst|Selector4~2_combout\);

-- Location: LCCOMB_X22_Y29_N12
\inst|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~3_combout\ = (\inst|Result[3]~8_combout\ & ((\inst2|Q\(3) & ((!\inst|Selector4~2_combout\) # (!\inst3|Q\(3)))) # (!\inst2|Q\(3) & ((\inst3|Q\(3)) # (\inst|Selector4~2_combout\))))) # (!\inst|Result[3]~8_combout\ & 
-- (((\inst|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst3|Q\(3),
	datac => \inst|Result[3]~8_combout\,
	datad => \inst|Selector4~2_combout\,
	combout => \inst|Selector4~3_combout\);

-- Location: LCCOMB_X22_Y29_N4
\inst|Result[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~0_combout\ = (\inst6|yfsm.s7~regout\ & (\inst|Result~11_combout\)) # (!\inst6|yfsm.s7~regout\ & ((\inst|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s7~regout\,
	datab => \inst|Result~11_combout\,
	datad => \inst|Selector4~3_combout\,
	combout => \inst|Result[3]~0_combout\);

-- Location: LCCOMB_X21_Y29_N20
\inst|Result~11_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~11_wirecell_combout\ = !\inst|Result~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Result~11_combout\,
	combout => \inst|Result~11_wirecell_combout\);

-- Location: LCFF_X22_Y29_N5
\inst|Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Result[3]~0_combout\,
	sdata => \inst|Result~11_wirecell_combout\,
	sload => \inst6|yfsm.s8~regout\,
	ena => \decEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(3));

-- Location: LCCOMB_X25_Y29_N30
\inst|Result~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~12_combout\ = \inst2|Q\(2) $ (\inst3|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datac => \inst3|Q\(2),
	combout => \inst|Result~12_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCFF_X24_Y29_N21
\inst2|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(2));

-- Location: LCCOMB_X23_Y29_N16
\inst|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~2_combout\ = (\inst|Result[3]~9_combout\ & (((!\inst|Result[3]~10_combout\)))) # (!\inst|Result[3]~9_combout\ & ((\inst|Result[3]~10_combout\ & ((\inst|Add1~4_combout\))) # (!\inst|Result[3]~10_combout\ & (\inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Result[3]~9_combout\,
	datac => \inst|Result[3]~10_combout\,
	datad => \inst|Add1~4_combout\,
	combout => \inst|Selector5~2_combout\);

-- Location: LCCOMB_X23_Y29_N18
\inst|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~3_combout\ = (\inst|Selector5~2_combout\ & (((!\inst3|Q\(2) & !\inst2|Q\(2))) # (!\inst|Result[3]~9_combout\))) # (!\inst|Selector5~2_combout\ & (\inst3|Q\(2) & (\inst2|Q\(2) & \inst|Result[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(2),
	datab => \inst2|Q\(2),
	datac => \inst|Selector5~2_combout\,
	datad => \inst|Result[3]~9_combout\,
	combout => \inst|Selector5~3_combout\);

-- Location: LCCOMB_X23_Y29_N20
\inst|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst6|WideOr3~0_combout\ & (!\inst|Result[3]~8_combout\ & ((\inst|Selector5~3_combout\)))) # (!\inst6|WideOr3~0_combout\ & ((\inst|Result[3]~8_combout\) # ((!\inst3|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|WideOr3~0_combout\,
	datab => \inst|Result[3]~8_combout\,
	datac => \inst3|Q\(2),
	datad => \inst|Selector5~3_combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X23_Y29_N10
\inst|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~1_combout\ = (\inst|Result[3]~8_combout\ & ((\inst3|Q\(2) & ((!\inst2|Q\(2)) # (!\inst|Selector5~0_combout\))) # (!\inst3|Q\(2) & ((\inst|Selector5~0_combout\) # (\inst2|Q\(2)))))) # (!\inst|Result[3]~8_combout\ & 
-- (((\inst|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(2),
	datab => \inst|Result[3]~8_combout\,
	datac => \inst|Selector5~0_combout\,
	datad => \inst2|Q\(2),
	combout => \inst|Selector5~1_combout\);

-- Location: LCCOMB_X23_Y29_N8
\inst|Result[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[2]~1_combout\ = (\inst6|yfsm.s7~regout\ & (\inst|Result~12_combout\)) # (!\inst6|yfsm.s7~regout\ & ((\inst|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s7~regout\,
	datab => \inst|Result~12_combout\,
	datad => \inst|Selector5~1_combout\,
	combout => \inst|Result[2]~1_combout\);

-- Location: LCCOMB_X22_Y29_N20
\inst|Result~12_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~12_wirecell_combout\ = !\inst|Result~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Result~12_combout\,
	combout => \inst|Result~12_wirecell_combout\);

-- Location: LCFF_X23_Y29_N9
\inst|Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Result[2]~1_combout\,
	sdata => \inst|Result~12_wirecell_combout\,
	sload => \inst6|yfsm.s8~regout\,
	ena => \decEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(2));

-- Location: LCCOMB_X22_Y29_N22
\inst|Result~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~13_combout\ = \inst3|Q\(1) $ (\inst2|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Q\(1),
	datad => \inst2|Q\(1),
	combout => \inst|Result~13_combout\);

-- Location: LCCOMB_X23_Y29_N4
\inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|Result[3]~9_combout\ & (((\inst|Result[3]~10_combout\)))) # (!\inst|Result[3]~9_combout\ & ((\inst|Result[3]~10_combout\ & ((\inst|Add1~2_combout\))) # (!\inst|Result[3]~10_combout\ & (\inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|Result[3]~9_combout\,
	datac => \inst|Result[3]~10_combout\,
	datad => \inst|Add1~2_combout\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X22_Y29_N16
\inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|Result[3]~9_combout\ & ((\inst2|Q\(1) & (\inst3|Q\(1) & \inst|Selector6~0_combout\)) # (!\inst2|Q\(1) & (!\inst3|Q\(1) & !\inst|Selector6~0_combout\)))) # (!\inst|Result[3]~9_combout\ & (((\inst|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~9_combout\,
	datab => \inst2|Q\(1),
	datac => \inst3|Q\(1),
	datad => \inst|Selector6~0_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: LCCOMB_X22_Y29_N2
\inst|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~2_combout\ = (\inst6|WideOr3~0_combout\ & (!\inst|Result[3]~8_combout\ & (\inst|Selector6~1_combout\))) # (!\inst6|WideOr3~0_combout\ & ((\inst|Result[3]~8_combout\) # ((!\inst3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|WideOr3~0_combout\,
	datab => \inst|Result[3]~8_combout\,
	datac => \inst|Selector6~1_combout\,
	datad => \inst3|Q\(1),
	combout => \inst|Selector6~2_combout\);

-- Location: LCCOMB_X22_Y29_N24
\inst|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~3_combout\ = (\inst|Result[3]~8_combout\ & ((\inst2|Q\(1) & ((!\inst|Selector6~2_combout\) # (!\inst3|Q\(1)))) # (!\inst2|Q\(1) & ((\inst3|Q\(1)) # (\inst|Selector6~2_combout\))))) # (!\inst|Result[3]~8_combout\ & 
-- (((\inst|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datac => \inst|Result[3]~8_combout\,
	datad => \inst|Selector6~2_combout\,
	combout => \inst|Selector6~3_combout\);

-- Location: LCCOMB_X22_Y29_N6
\inst|Result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[1]~2_combout\ = (\inst6|yfsm.s7~regout\ & (\inst|Result~13_combout\)) # (!\inst6|yfsm.s7~regout\ & ((\inst|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s7~regout\,
	datab => \inst|Result~13_combout\,
	datad => \inst|Selector6~3_combout\,
	combout => \inst|Result[1]~2_combout\);

-- Location: LCCOMB_X21_Y29_N30
\inst|Result~13_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~13_wirecell_combout\ = !\inst|Result~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Result~13_combout\,
	combout => \inst|Result~13_wirecell_combout\);

-- Location: LCFF_X22_Y29_N7
\inst|Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Result[1]~2_combout\,
	sdata => \inst|Result~13_wirecell_combout\,
	sload => \inst6|yfsm.s8~regout\,
	ena => \decEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(1));

-- Location: LCCOMB_X24_Y30_N26
\inst6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|WideOr3~0_combout\ = (!\inst6|yfsm.s2~regout\ & !\inst6|yfsm.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|yfsm.s2~regout\,
	datad => \inst6|yfsm.s3~regout\,
	combout => \inst6|WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y30_N4
\inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (!\inst6|yfsm.s3~regout\ & !\inst6|yfsm.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|yfsm.s3~regout\,
	datad => \inst6|yfsm.s1~regout\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X24_Y30_N24
\inst|Result~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~14_combout\ = (\inst2|Q\(0) & \inst3|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Q\(0),
	datad => \inst3|Q\(0),
	combout => \inst|Result~14_combout\);

-- Location: LCCOMB_X25_Y30_N26
\inst|Selector7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~7_combout\ = (\inst|Selector7~5_combout\ & (\inst6|WideOr3~0_combout\ & (\inst|Selector7~0_combout\ & \inst|Result~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~5_combout\,
	datab => \inst6|WideOr3~0_combout\,
	datac => \inst|Selector7~0_combout\,
	datad => \inst|Result~14_combout\,
	combout => \inst|Selector7~7_combout\);

-- Location: LCCOMB_X24_Y30_N18
\inst|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~4_combout\ = (!\inst6|yfsm.s1~regout\ & (!\inst6|yfsm.s2~regout\ & !\inst6|yfsm.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s1~regout\,
	datac => \inst6|yfsm.s2~regout\,
	datad => \inst6|yfsm.s3~regout\,
	combout => \inst|Selector7~4_combout\);

-- Location: LCCOMB_X24_Y30_N10
\inst|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~3_combout\ = (\inst6|yfsm.s6~regout\ & (!\inst6|yfsm.s4~regout\ & ((\inst2|Q\(0)) # (\inst3|Q\(0))))) # (!\inst6|yfsm.s6~regout\ & (!\inst2|Q\(0) & (\inst6|yfsm.s4~regout\ & !\inst3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst6|yfsm.s6~regout\,
	datac => \inst6|yfsm.s4~regout\,
	datad => \inst3|Q\(0),
	combout => \inst|Selector7~3_combout\);

-- Location: LCCOMB_X24_Y30_N8
\inst|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~5_combout\ = (!\inst6|yfsm.s4~regout\ & !\inst6|yfsm.s6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|yfsm.s4~regout\,
	datad => \inst6|yfsm.s6~regout\,
	combout => \inst|Selector7~5_combout\);

-- Location: LCCOMB_X24_Y30_N22
\inst|Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~6_combout\ = (\inst|Selector7~2_combout\ & ((\inst|Selector7~5_combout\) # ((\inst|Selector7~4_combout\ & \inst|Selector7~3_combout\)))) # (!\inst|Selector7~2_combout\ & (\inst|Selector7~4_combout\ & (\inst|Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~2_combout\,
	datab => \inst|Selector7~4_combout\,
	datac => \inst|Selector7~3_combout\,
	datad => \inst|Selector7~5_combout\,
	combout => \inst|Selector7~6_combout\);

-- Location: LCCOMB_X25_Y30_N8
\inst|Result[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[0]~3_combout\ = (\inst6|yfsm.s5~regout\ & (\inst|Selector7~7_combout\)) # (!\inst6|yfsm.s5~regout\ & ((\inst|Selector7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s5~regout\,
	datab => \inst|Selector7~7_combout\,
	datad => \inst|Selector7~6_combout\,
	combout => \inst|Result[0]~3_combout\);

-- Location: LCCOMB_X24_Y29_N0
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst2|Q\(0) & (\inst3|Q\(0) $ (VCC))) # (!\inst2|Q\(0) & (\inst3|Q\(0) & VCC))
-- \inst|Add0~1\ = CARRY((\inst2|Q\(0) & \inst3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst3|Q\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X24_Y30_N6
\inst|Add0~0_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_wirecell_combout\ = !\inst|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add0~0_combout\,
	combout => \inst|Add0~0_wirecell_combout\);

-- Location: LCFF_X25_Y30_N9
\inst|Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Result[0]~3_combout\,
	sdata => \inst|Add0~0_wirecell_combout\,
	sload => \inst6|yfsm.s8~regout\,
	ena => \decEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X24_Y29_N31
\inst2|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(7));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X24_Y29_N29
\inst2|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(6));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCFF_X24_Y29_N9
\inst3|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(4));

-- Location: LCCOMB_X24_Y29_N24
\inst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = ((\inst2|Q\(4) $ (\inst3|Q\(4) $ (\inst|Add1~7\)))) # (GND)
-- \inst|Add1~9\ = CARRY((\inst2|Q\(4) & ((!\inst|Add1~7\) # (!\inst3|Q\(4)))) # (!\inst2|Q\(4) & (!\inst3|Q\(4) & !\inst|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst3|Q\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X24_Y29_N26
\inst|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst3|Q\(5) & ((\inst2|Q\(5) & (!\inst|Add1~9\)) # (!\inst2|Q\(5) & ((\inst|Add1~9\) # (GND))))) # (!\inst3|Q\(5) & ((\inst2|Q\(5) & (\inst|Add1~9\ & VCC)) # (!\inst2|Q\(5) & (!\inst|Add1~9\))))
-- \inst|Add1~11\ = CARRY((\inst3|Q\(5) & ((!\inst|Add1~9\) # (!\inst2|Q\(5)))) # (!\inst3|Q\(5) & (!\inst2|Q\(5) & !\inst|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datab => \inst2|Q\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X24_Y29_N28
\inst|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = ((\inst3|Q\(6) $ (\inst2|Q\(6) $ (\inst|Add1~11\)))) # (GND)
-- \inst|Add1~13\ = CARRY((\inst3|Q\(6) & (\inst2|Q\(6) & !\inst|Add1~11\)) # (!\inst3|Q\(6) & ((\inst2|Q\(6)) # (!\inst|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst2|Q\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X24_Y29_N30
\inst|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = \inst3|Q\(7) $ (\inst|Add1~13\ $ (!\inst2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Q\(7),
	datad => \inst2|Q\(7),
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\);

-- Location: LCCOMB_X24_Y29_N8
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst2|Q\(4) $ (\inst3|Q\(4) $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst2|Q\(4) & ((\inst3|Q\(4)) # (!\inst|Add0~7\))) # (!\inst2|Q\(4) & (\inst3|Q\(4) & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst3|Q\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X24_Y29_N10
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst3|Q\(5) & ((\inst2|Q\(5) & (\inst|Add0~9\ & VCC)) # (!\inst2|Q\(5) & (!\inst|Add0~9\)))) # (!\inst3|Q\(5) & ((\inst2|Q\(5) & (!\inst|Add0~9\)) # (!\inst2|Q\(5) & ((\inst|Add0~9\) # (GND)))))
-- \inst|Add0~11\ = CARRY((\inst3|Q\(5) & (!\inst2|Q\(5) & !\inst|Add0~9\)) # (!\inst3|Q\(5) & ((!\inst|Add0~9\) # (!\inst2|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datab => \inst2|Q\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X24_Y29_N14
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = \inst3|Q\(7) $ (\inst|Add0~13\ $ (\inst2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Q\(7),
	datad => \inst2|Q\(7),
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X25_Y30_N6
\inst|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|Selector0~0_combout\ & ((\inst|Add1~14_combout\) # ((\inst|Result[3]~9_combout\)))) # (!\inst|Selector0~0_combout\ & (((!\inst|Result[3]~9_combout\ & \inst|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0_combout\,
	datab => \inst|Add1~14_combout\,
	datac => \inst|Result[3]~9_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: LCCOMB_X25_Y30_N28
\inst|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~3_combout\ = (\inst|Selector0~2_combout\ & ((\inst|Result[3]~8_combout\) # ((\inst|Selector0~1_combout\) # (!\inst3|Q\(7))))) # (!\inst|Selector0~2_combout\ & (!\inst|Result[3]~8_combout\ & (!\inst3|Q\(7) & \inst|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~2_combout\,
	datab => \inst|Result[3]~8_combout\,
	datac => \inst3|Q\(7),
	datad => \inst|Selector0~1_combout\,
	combout => \inst|Selector0~3_combout\);

-- Location: LCCOMB_X25_Y30_N2
\inst|Result[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[7]~4_combout\ = (\inst6|yfsm.s7~regout\ & (\inst|Result~15_combout\)) # (!\inst6|yfsm.s7~regout\ & ((\inst|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result~15_combout\,
	datab => \inst6|yfsm.s7~regout\,
	datad => \inst|Selector0~3_combout\,
	combout => \inst|Result[7]~4_combout\);

-- Location: LCCOMB_X25_Y30_N12
\inst|Result~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~15_combout\ = \inst3|Q\(7) $ (\inst2|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Q\(7),
	datac => \inst2|Q\(7),
	combout => \inst|Result~15_combout\);

-- Location: LCCOMB_X25_Y30_N14
\inst|Result~15_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~15_wirecell_combout\ = !\inst|Result~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Result~15_combout\,
	combout => \inst|Result~15_wirecell_combout\);

-- Location: LCFF_X25_Y30_N3
\inst|Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Result[7]~4_combout\,
	sdata => \inst|Result~15_wirecell_combout\,
	sload => \inst6|yfsm.s8~regout\,
	ena => \decEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(7));

-- Location: LCCOMB_X25_Y29_N12
\inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|Result[3]~9_combout\ & (((\inst|Result[3]~10_combout\)))) # (!\inst|Result[3]~9_combout\ & ((\inst|Result[3]~10_combout\ & ((\inst|Add1~12_combout\))) # (!\inst|Result[3]~10_combout\ & (\inst|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datab => \inst|Result[3]~9_combout\,
	datac => \inst|Result[3]~10_combout\,
	datad => \inst|Add1~12_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X25_Y29_N2
\inst|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Result[3]~9_combout\ & ((\inst2|Q\(6) & (\inst3|Q\(6) & \inst|Selector1~0_combout\)) # (!\inst2|Q\(6) & (!\inst3|Q\(6) & !\inst|Selector1~0_combout\)))) # (!\inst|Result[3]~9_combout\ & (((\inst|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst|Result[3]~9_combout\,
	datac => \inst3|Q\(6),
	datad => \inst|Selector1~0_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X25_Y29_N0
\inst|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~2_combout\ = (\inst6|WideOr3~0_combout\ & (((!\inst|Result[3]~8_combout\ & \inst|Selector1~1_combout\)))) # (!\inst6|WideOr3~0_combout\ & (((\inst|Result[3]~8_combout\)) # (!\inst3|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|WideOr3~0_combout\,
	datab => \inst3|Q\(6),
	datac => \inst|Result[3]~8_combout\,
	datad => \inst|Selector1~1_combout\,
	combout => \inst|Selector1~2_combout\);

-- Location: LCCOMB_X25_Y29_N6
\inst|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~3_combout\ = (\inst|Result[3]~8_combout\ & ((\inst2|Q\(6) & ((!\inst|Selector1~2_combout\) # (!\inst3|Q\(6)))) # (!\inst2|Q\(6) & ((\inst3|Q\(6)) # (\inst|Selector1~2_combout\))))) # (!\inst|Result[3]~8_combout\ & 
-- (((\inst|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst3|Q\(6),
	datac => \inst|Result[3]~8_combout\,
	datad => \inst|Selector1~2_combout\,
	combout => \inst|Selector1~3_combout\);

-- Location: LCCOMB_X25_Y29_N8
\inst|Result[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[6]~5_combout\ = (\inst6|yfsm.s7~regout\ & (\inst|Result~16_combout\)) # (!\inst6|yfsm.s7~regout\ & ((\inst|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result~16_combout\,
	datab => \inst6|yfsm.s7~regout\,
	datad => \inst|Selector1~3_combout\,
	combout => \inst|Result[6]~5_combout\);

-- Location: LCCOMB_X25_Y29_N4
\inst|Result~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~16_combout\ = \inst3|Q\(6) $ (\inst2|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Q\(6),
	datac => \inst2|Q\(6),
	combout => \inst|Result~16_combout\);

-- Location: LCCOMB_X27_Y29_N8
\inst|Result~16_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~16_wirecell_combout\ = !\inst|Result~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Result~16_combout\,
	combout => \inst|Result~16_wirecell_combout\);

-- Location: LCFF_X25_Y29_N9
\inst|Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Result[6]~5_combout\,
	sdata => \inst|Result~16_wirecell_combout\,
	sload => \inst6|yfsm.s8~regout\,
	ena => \decEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(6));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCFF_X24_Y29_N11
\inst3|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(5));

-- Location: LCCOMB_X22_Y29_N18
\inst|Result~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~19_combout\ = \inst3|Q\(5) $ (\inst2|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Q\(5),
	datad => \inst2|Q\(5),
	combout => \inst|Result~19_combout\);

-- Location: LCCOMB_X23_Y29_N6
\inst|Result~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~17_combout\ = (\inst3|Q\(5)) # (\inst2|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datad => \inst2|Q\(5),
	combout => \inst|Result~17_combout\);

-- Location: LCCOMB_X23_Y29_N14
\inst|Result~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~18_combout\ = (\inst3|Q\(5) & \inst2|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datad => \inst2|Q\(5),
	combout => \inst|Result~18_combout\);

-- Location: LCCOMB_X23_Y29_N24
\inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|Result[3]~10_combout\ & (\inst|Result[3]~9_combout\)) # (!\inst|Result[3]~10_combout\ & ((\inst|Result[3]~9_combout\ & ((!\inst|Result~17_combout\))) # (!\inst|Result[3]~9_combout\ & (\inst|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~10_combout\,
	datab => \inst|Result[3]~9_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Result~17_combout\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y29_N0
\inst|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Result[3]~10_combout\ & ((\inst|Selector2~0_combout\ & (\inst|Result~18_combout\)) # (!\inst|Selector2~0_combout\ & ((\inst|Add1~10_combout\))))) # (!\inst|Result[3]~10_combout\ & (((\inst|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~10_combout\,
	datab => \inst|Result~18_combout\,
	datac => \inst|Add1~10_combout\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCCOMB_X22_Y29_N26
\inst|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~2_combout\ = (\inst6|WideOr3~0_combout\ & ((\inst|Result[3]~8_combout\ & (\inst|Result~17_combout\)) # (!\inst|Result[3]~8_combout\ & ((\inst|Selector2~1_combout\))))) # (!\inst6|WideOr3~0_combout\ & (((\inst|Result[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|WideOr3~0_combout\,
	datab => \inst|Result~17_combout\,
	datac => \inst|Result[3]~8_combout\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst|Selector2~2_combout\);

-- Location: LCCOMB_X22_Y29_N28
\inst|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~3_combout\ = (\inst6|WideOr3~0_combout\ & (((\inst|Selector2~2_combout\)))) # (!\inst6|WideOr3~0_combout\ & (((!\inst2|Q\(5) & \inst|Selector2~2_combout\)) # (!\inst3|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|WideOr3~0_combout\,
	datab => \inst2|Q\(5),
	datac => \inst3|Q\(5),
	datad => \inst|Selector2~2_combout\,
	combout => \inst|Selector2~3_combout\);

-- Location: LCCOMB_X22_Y29_N8
\inst|Result[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[5]~6_combout\ = (\inst6|yfsm.s7~regout\ & (\inst|Result~19_combout\)) # (!\inst6|yfsm.s7~regout\ & ((\inst|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s7~regout\,
	datab => \inst|Result~19_combout\,
	datad => \inst|Selector2~3_combout\,
	combout => \inst|Result[5]~6_combout\);

-- Location: LCCOMB_X21_Y29_N4
\inst|Result~19_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~19_wirecell_combout\ = !\inst|Result~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Result~19_combout\,
	combout => \inst|Result~19_wirecell_combout\);

-- Location: LCFF_X22_Y29_N9
\inst|Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Result[5]~6_combout\,
	sdata => \inst|Result~19_wirecell_combout\,
	sload => \inst6|yfsm.s8~regout\,
	ena => \decEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(5));

-- Location: LCCOMB_X25_Y29_N10
\inst|Result~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~20_combout\ = \inst2|Q\(4) $ (\inst3|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Q\(4),
	datad => \inst3|Q\(4),
	combout => \inst|Result~20_combout\);

-- Location: LCCOMB_X23_Y29_N28
\inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|Result[3]~10_combout\ & ((\inst|Result[3]~9_combout\) # ((\inst|Add1~8_combout\)))) # (!\inst|Result[3]~10_combout\ & (!\inst|Result[3]~9_combout\ & (\inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~10_combout\,
	datab => \inst|Result[3]~9_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Add1~8_combout\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X23_Y29_N26
\inst|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst|Result[3]~9_combout\ & ((\inst2|Q\(4) & (\inst3|Q\(4) & \inst|Selector3~0_combout\)) # (!\inst2|Q\(4) & (!\inst3|Q\(4) & !\inst|Selector3~0_combout\)))) # (!\inst|Result[3]~9_combout\ & (((\inst|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst|Result[3]~9_combout\,
	datac => \inst3|Q\(4),
	datad => \inst|Selector3~0_combout\,
	combout => \inst|Selector3~1_combout\);

-- Location: LCCOMB_X23_Y29_N0
\inst|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~2_combout\ = (\inst6|WideOr3~0_combout\ & (((!\inst|Result[3]~8_combout\ & \inst|Selector3~1_combout\)))) # (!\inst6|WideOr3~0_combout\ & (((\inst|Result[3]~8_combout\)) # (!\inst3|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|WideOr3~0_combout\,
	datab => \inst3|Q\(4),
	datac => \inst|Result[3]~8_combout\,
	datad => \inst|Selector3~1_combout\,
	combout => \inst|Selector3~2_combout\);

-- Location: LCCOMB_X23_Y29_N22
\inst|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~3_combout\ = (\inst|Result[3]~8_combout\ & ((\inst2|Q\(4) & ((!\inst|Selector3~2_combout\) # (!\inst3|Q\(4)))) # (!\inst2|Q\(4) & ((\inst3|Q\(4)) # (\inst|Selector3~2_combout\))))) # (!\inst|Result[3]~8_combout\ & 
-- (((\inst|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst3|Q\(4),
	datac => \inst|Result[3]~8_combout\,
	datad => \inst|Selector3~2_combout\,
	combout => \inst|Selector3~3_combout\);

-- Location: LCCOMB_X23_Y29_N30
\inst|Result[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[4]~7_combout\ = (\inst6|yfsm.s7~regout\ & (\inst|Result~20_combout\)) # (!\inst6|yfsm.s7~regout\ & ((\inst|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|yfsm.s7~regout\,
	datab => \inst|Result~20_combout\,
	datad => \inst|Selector3~3_combout\,
	combout => \inst|Result[4]~7_combout\);

-- Location: LCCOMB_X22_Y29_N30
\inst|Result~20_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~20_wirecell_combout\ = !\inst|Result~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Result~20_combout\,
	combout => \inst|Result~20_wirecell_combout\);

-- Location: LCFF_X23_Y29_N31
\inst|Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Result[4]~7_combout\,
	sdata => \inst|Result~20_wirecell_combout\,
	sload => \inst6|yfsm.s8~regout\,
	ena => \decEn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(4));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Neg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Neg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Neg);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Result\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(3));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Result\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(2));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Result\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(0));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Result\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(3));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Result\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(2));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Result\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|Result\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(0));
END structure;


