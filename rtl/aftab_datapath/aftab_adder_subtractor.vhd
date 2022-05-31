-- **************************************************************************************
--	Filename:	aftab_adder_subtractor.vhd
--	Project:	CNL_RISC-V
--  Version:	1.0
--	Date:		25 March 2022
--
-- Copyright (C) 2022 CINI Cybersecurity National Laboratory and University of Tehran
--
-- This source file may be used and distributed without
-- restriction provided that this copyright statement is not
-- removed from the file and that any derivative work contains
-- the original copyright notice and the associated disclaimer.
--
-- This source file is free software; you can redistribute it
-- and/or modify it under the terms of the GNU Lesser General
-- Public License as published by the Free Software Foundation;
-- either version 3.0 of the License, or (at your option) any
-- later version.
--
-- This source is distributed in the hope that it will be
-- useful, but WITHOUT ANY WARRANTY; without even the implied
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
-- PURPOSE. See the GNU Lesser General Public License for more
-- details.
--
-- You should have received a copy of the GNU Lesser General
-- Public License along with this source; if not, download it
-- from https://www.gnu.org/licenses/lgpl-3.0.txt
--
-- **************************************************************************************
--
--	File content description:
--	Adder/Subtractor Unit (ASU) of the AFTAB core
--
-- **************************************************************************************

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_adder_subtractor IS
	GENERIC (len : INTEGER := 32);
	PORT (
		a      : IN  STD_LOGIC_VECTOR (len - 1 DOWNTO 0);
		b      : IN  STD_LOGIC_VECTOR (len - 1 DOWNTO 0);
		subSel : IN  STD_LOGIC;
		pass   : IN  STD_LOGIC;
		cout   : OUT STD_LOGIC;
		outRes : OUT STD_LOGIC_VECTOR (len - 1 DOWNTO 0)
	);
END ENTITY aftab_adder_subtractor;
--
ARCHITECTURE behavioral OF aftab_adder_subtractor IS
	SIGNAL bSel         : STD_LOGIC_VECTOR (len - 1 DOWNTO 0);
	SIGNAL addSubResult : STD_LOGIC_VECTOR (len - 1 DOWNTO 0);
BEGIN
	bSel <= NOT(b) WHEN (subsel = '1') ELSE	b;
	add : ENTITY WORK.aftab_adder
		GENERIC MAP(len => len)
		PORT MAP(
			Cin => subSel, 
			A => a,
			B => bSel,
			addResult => addSubResult,
			carryOut => cout);
	outRes <= addSubResult WHEN pass = '0' ELSE	b;
END ARCHITECTURE behavioral;
