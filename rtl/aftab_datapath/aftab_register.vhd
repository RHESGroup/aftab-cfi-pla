-- **************************************************************************************
--	Filename:	aftab_register.vhd
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
--	Generic register for the AFTAB core
--
-- **************************************************************************************

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY aftab_register IS
	GENERIC
		(len : INTEGER := 32);
	PORT
	(
		clk    : IN  STD_LOGIC;
		rst    : IN  STD_LOGIC;
		zero   : IN  STD_LOGIC;
		load   : IN  STD_LOGIC;
		inReg  : IN  STD_LOGIC_VECTOR(len - 1 DOWNTO 0);
		outReg : OUT STD_LOGIC_VECTOR(len - 1 DOWNTO 0)
	);
END ENTITY aftab_register;
--
ARCHITECTURE behavioral OF aftab_register IS
BEGIN
	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			outReg <= (OTHERS => '0');
		ELSIF (clk = '1' AND clk 'EVENT) THEN
			IF (zero = '1') THEN
				outReg <= (OTHERS => '0');
			ELSIF (load = '1') THEN
				outReg <= inReg;
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE behavioral;
