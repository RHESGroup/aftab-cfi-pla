-- **************************************************************************************
--	Filename:	aftab_adder.vhd
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
--	Generic adder the AFTAB core
--
-- **************************************************************************************

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY aftab_adder IS
	GENERIC (len : INTEGER := 33);
	PORT (
		Cin       : IN  STD_LOGIC;
		A         : IN  STD_LOGIC_VECTOR (len - 1 DOWNTO 0);
		B         : IN  STD_LOGIC_VECTOR (len - 1 DOWNTO 0);
		addResult : OUT STD_LOGIC_VECTOR (len - 1 DOWNTO 0);
		carryOut  : OUT STD_LOGIC
	);
END ENTITY aftab_adder;
--
ARCHITECTURE behavioral OF aftab_adder IS
	SIGNAL add : STD_LOGIC_VECTOR (len DOWNTO 0);
BEGIN
	add <= ('0' & A) + ('0' & B) + Cin;
	addResult <= add(len - 1 DOWNTO 0);
	carryOut <= add(len);
END ARCHITECTURE behavioral;
