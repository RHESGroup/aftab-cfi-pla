-------------------------------------
--In the name of God
--Design: PLA 20 inputs, 8 and gates
--Author: Fatemeh Sheikhshoaei
--Date: 19 Ordibehesht 1401
-------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY pla_andor IS
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
END ENTITY pla_andor;
ARCHITECTURE behavioral OF pla_andor IS
	TYPE config_matrix IS ARRAY (0 TO M - 1) OF STD_LOGIC_VECTOR(2 * N - 1 DOWNTO 0);
	SIGNAL and_signal  : config_matrix;
	SIGNAL configreg   : config_matrix;
	TYPE or_matrix IS ARRAY (0 TO M - 1) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL or_signal_1 : or_matrix;
	SIGNAL unused_1	   : or_matrix;
	SIGNAL notin       : STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
	SIGNAL or_signal   : STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL or_signal_21: STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL or_signal_22: STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL unused      : STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL unused_21   : STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL unused_22   : STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL ors_unused  : STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL ors_unused_1: STD_LOGIC;
	SIGNAL ors_unused_2: STD_LOGIC;
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
	
	behavioral_unused_and_gates: 
    FOR I IN 0 TO M - 1 GENERATE
       behavioral_first_level: 
	    FOR J IN 0 TO 9 GENERATE
			first_level_orx:
			 unused_1(I)(J) <= configreg(I)(4 * J) OR configreg(I)(4 * J + 1) OR configreg(I)(4 * J + 2) OR configreg(I)(4 * J + 3);
		END GENERATE behavioral_first_level;
		unused_21(I) <= unused_1(I)(0) OR unused_1(I)(1) OR unused_1(I)(2) OR unused_1(I)(3);
		unused_22(I) <= unused_1(I)(4) OR unused_1(I)(5) OR unused_1(I)(6) OR unused_1(I)(7);
		unused(I) 	 <= unused_21(I) OR unused_22(I) OR unused_1(I)(8) OR unused_1(I)(9); 
		 --unused(I) <= OR (configreg(I));	--reduction or
    END GENERATE behavioral_unused_and_gates;
	
	ors_unused   <= or_signal AND unused;
	ors_unused_1 <= ors_unused(0) OR ors_unused(1) OR ors_unused(2) OR ors_unused(3);
	ors_unused_2 <= ors_unused(4) OR ors_unused(5) OR ors_unused(6) OR ors_unused(7);
	f 			 <= ors_unused_1  OR ors_unused_2;
	--f <= OR (or_signal AND unused);			--reduction or

END ARCHITECTURE behavioral;