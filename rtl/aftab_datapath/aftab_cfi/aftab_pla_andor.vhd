-------------------------------------
--In the name of God
--Design: PLA 20 inputs, 8 and gates
--Author: Fatemeh Sheikhshoaei
--Date: 19 Ordibehesht 1401
-------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY  aftab_pla_andor IS
	GENERIC
		(N : INTEGER := 20;
		 M : INTEGER := 8);
	PORT
	(
		input  		: IN  STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
		configreg_0 : IN  STD_LOGIC_VECTOR (2 * N - 1 DOWNTO 0);
		configreg_1 : IN  STD_LOGIC_VECTOR (2 * N - 1 DOWNTO 0);
		configreg_2 : IN  STD_LOGIC_VECTOR (2 * N - 1 DOWNTO 0);
		configreg_3 : IN  STD_LOGIC_VECTOR (2 * N - 1 DOWNTO 0);
		configreg_4 : IN  STD_LOGIC_VECTOR (2 * N - 1 DOWNTO 0);
		configreg_5 : IN  STD_LOGIC_VECTOR (2 * N - 1 DOWNTO 0);
		configreg_6 : IN  STD_LOGIC_VECTOR (2 * N - 1 DOWNTO 0);
		configreg_7 : IN  STD_LOGIC_VECTOR (2 * N - 1 DOWNTO 0);
		f			: OUT STD_LOGIC
	);
END ENTITY  aftab_pla_andor;
ARCHITECTURE behavioral OF  aftab_pla_andor IS
	TYPE config_matrix IS ARRAY (0 TO M - 1) OF STD_LOGIC_VECTOR(2 * N - 1 DOWNTO 0);
	SIGNAL and_signal  : config_matrix;
	SIGNAL configreg   : config_matrix;
	TYPE or_matrix IS ARRAY (0 TO M - 1) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL or_signal_1 : or_matrix;
	SIGNAL notin       : STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
	SIGNAL or_signal   : STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL or_signal_21: STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL or_signal_22: STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL f_1: STD_LOGIC;
	SIGNAL f_2: STD_LOGIC;
BEGIN

	configreg(0) <= configreg_0;
	configreg(1) <= configreg_1;
	configreg(2) <= configreg_2;
	configreg(3) <= configreg_3;
	configreg(4) <= configreg_4;
	configreg(5) <= configreg_5;
	configreg(6) <= configreg_6;
	configreg(7) <= configreg_7;
	
	behavioral_not: 
    FOR I IN 0 TO N - 1 GENERATE
       notx : 
		 notin(I) <= NOT input(I);
    END GENERATE behavioral_not;
	
	behavioral_config_rows: 
    FOR I IN 0 TO M - 1 GENERATE
		behavioral_config_columns: 
		FOR J IN 0 TO N - 1 GENERATE
			config_and_input:
		      and_signal(I)(2 * J) <= (NOT configreg(I)(2 * J)) OR (configreg(I)(2 * J) AND input(J));
			config_and_notin:
		      and_signal(I)(2 * J + 1) <= (NOT configreg(I)(2 * J + 1)) OR (configreg(I)(2 * J + 1) AND notin(J));
		END GENERATE behavioral_config_columns;
    END GENERATE behavioral_config_rows;
	
	behavioral_and: 
    FOR I IN 0 TO M - 1 GENERATE
		behavioral_first_level: 
	    FOR J IN 0 TO 9 GENERATE
			first_level_andx:
			 or_signal_1(I)(J) <= and_signal(I)(4 * J) AND and_signal(I)(4 * J + 1) AND and_signal(I)(4 * J + 2) AND and_signal(I)(4 * J + 3);
		END GENERATE behavioral_first_level;
		or_signal_21(I) <= or_signal_1(I)(0) AND or_signal_1(I)(1) AND or_signal_1(I)(2) AND or_signal_1(I)(3);
		or_signal_22(I) <= or_signal_1(I)(4) AND or_signal_1(I)(5) AND or_signal_1(I)(6) AND or_signal_1(I)(7);
		or_signal(I) 	<= or_signal_21(I) AND or_signal_22(I) AND or_signal_1(I)(8) AND or_signal_1(I)(9);
		 --or_signal(I) <= AND (and_signal(I));--reduction and
    END GENERATE behavioral_and;
	
	f_1 <= or_signal(0) OR or_signal(1) OR or_signal(2) OR or_signal(3);
	f_2 <= or_signal(4) OR or_signal(5) OR or_signal(6) OR or_signal(7);
	f 			 <= f_1  OR f_2;
	--f <= OR (or_signal);			--reduction or

END ARCHITECTURE behavioral;