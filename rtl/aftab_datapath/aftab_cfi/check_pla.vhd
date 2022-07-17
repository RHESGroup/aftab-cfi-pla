LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_CFI_lable IS
	GENERIC (len : INTEGER := 20;
			groups	: INTEGER := 8);
	PORT 
	(
		clk             : IN STD_LOGIC;
		rst             : IN STD_LOGIC;
		enSource, enDes : IN STD_LOGIC;
		enconfig 		: IN STD_LOGIC;
		labelIn         : IN STD_LOGIC_VECTOR  (len - 1 DOWNTO 0);
		congigIn        : IN STD_LOGIC_VECTOR  (31 DOWNTO 0);
		indexing  		: IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		maskInterrupt   : OUT STD_LOGIC;
		exceptoin		: OUT STD_LOGIC
	);
END ENTITY aftab_CFI_lable;
--
ARCHITECTURE behavioral OF aftab_CFI_lable IS
	COMPONENT aftab_CFI_lable_ctrl IS
		PORT 
		(
			clk            : IN STD_LOGIC;
			rst            : IN STD_LOGIC;
			enDes   	   : IN STD_LOGIC; 
			enOut          : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT aftab_CFI_lable_calc IS
		GENERIC (len : INTEGER := 20;
				 groups	: INTEGER := 8);
		PORT 
		(
			clk             : IN STD_LOGIC;
			rst             : IN STD_LOGIC;
			enSource, enDes : IN STD_LOGIC;
			enconfig 		: IN STD_LOGIC;
			labelIn         : IN STD_LOGIC_VECTOR  (len - 1 DOWNTO 0);
			congigIn        : IN STD_LOGIC_VECTOR  (31 DOWNTO 0);
			indexing  		: IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
			outpla     		 : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT timerAlart IS
	GENERIC (
		len      : INTEGER := 4
	);
	PORT (
		clk, rst          : IN STD_LOGIC;
		en, dis           : IN STD_LOGIC;
		maskInterrupt     : OUT STD_LOGIC;
		timerException    : OUT STD_LOGIC
	);
	END COMPONENT;
   --SIGNAL arr_Index : STD_LOGIC_VECTOR (4 downto 0);
	SIGNAL enOut , plaOut, timerException, exceptoin_s			: STD_LOGIC;

BEGIN
	
	ctrl : aftab_CFI_lable_ctrl 
		PORT MAP
		(
			clk, rst, enDes, enOut
		);
	lab_gen : aftab_CFI_lable_calc 
		GENERIC MAP(len, groups)
		PORT MAP
		(
			clk, rst, enSource, enDes, enconfig, labelIn, congigIn, indexing, plaOut
		);
		
	timer : timerAlart 
	GENERIC MAP( 4 )
	PORT MAP(
		clk, rst, enSource, enDes, maskInterrupt, timerException
	);
	exceptoin_s <= NOT(plaOut) When enOut ='1' ELSE '0';	
	exceptoin <= timerException OR exceptoin_s;	
END ARCHITECTURE behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_CFI_lable_ctrl IS
	PORT 
	(
		clk            : IN STD_LOGIC;
		rst            : IN STD_LOGIC;
		enDes   	   : IN STD_LOGIC; 
		enOut          : OUT STD_LOGIC
	);
END ENTITY aftab_CFI_lable_ctrl;
--
ARCHITECTURE ctrl OF aftab_CFI_lable_ctrl IS
	TYPE state IS (init, checkLab);
	SIGNAL p_state, n_state      : state;
BEGIN
	PROCESS (clk, rst) BEGIN
		IF rst = '1' THEN
			p_state <= init;
		ELSIF (clk = '1' AND clk'EVENT) THEN
			p_state <= n_state;
		END IF;
	END PROCESS;
	
	PROCESS (p_state, enDes ) 
	BEGIN		
		n_state <= init;
		CASE p_state IS
			WHEN init =>
				IF (enDes = '1') THEN
					n_state <= checkLab;
				END IF;
			WHEN OTHERS => 
				n_state <= init;
		END CASE;
	END PROCESS;
	PROCESS (p_state) 
	BEGIN	
		enOut <= '0';
		CASE p_state IS
			WHEN checkLab =>
				enOut <= '1';
			WHEN OTHERS => 
				enOut <= '0';
		END CASE;
	END PROCESS;
END ARCHITECTURE ctrl;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_CFI_lable_calc IS
	GENERIC (len : INTEGER := 20;
			 groups	: INTEGER := 8);
	PORT 
	(
		clk             : IN STD_LOGIC;
		rst             : IN STD_LOGIC;
		enSource, enDes : IN STD_LOGIC;
		enconfig 		: IN STD_LOGIC;
		labelIn         : IN STD_LOGIC_VECTOR  (len - 1 DOWNTO 0);
		congigIn        : IN STD_LOGIC_VECTOR  (31 DOWNTO 0);
		indexing  		: IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		outpla     		 : OUT STD_LOGIC
	);
	
	
END ENTITY aftab_CFI_lable_calc;
--
ARCHITECTURE behavioral OF aftab_CFI_lable_calc IS
	COMPONENT aftab_register IS
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
	END COMPONENT;
	
	COMPONENT pla_plus_wrapper IS
		GENERIC
			(Memory_read		: INTEGER := 10; --10 for 32'b and 16 for 20'b (number of memory units with configur_reg)
			 M					: INTEGER := 8;
			 N 					: INTEGER := 20;
			 conf_input_len  	: INTEGER := 32);
		PORT
		(
			clk   	   : IN  STD_LOGIC;
			rst   	   : IN  STD_LOGIC;
			enconfig   : IN  STD_LOGIC;
			indexing   : IN  STD_LOGIC_VECTOR (3 DOWNTO 0); -- cw
			labelIn    : IN  STD_LOGIC_VECTOR (N - 1 DOWNTO 0); --address labels input
			congigIn   : IN  STD_LOGIC_VECTOR (conf_input_len - 1 DOWNTO 0);
			f		   : OUT STD_LOGIC
		);
	END COMPONENT;
	SIGNAL label1,label2,signLable           : STD_LOGIC_VECTOR  (len - 1 DOWNTO 0);
BEGIN
	source_reg: aftab_register 
		GENERIC MAP
			(len)
		PORT MAP
		(
			clk  ,rst, '0', enSource, labelIn ,label1
		);
	target_reg: aftab_register 
		GENERIC MAP
			(len)
		PORT MAP
		(
			clk  ,rst, '0', enDes, labelIn ,label2
		);
	
	signLable <= STD_LOGIC_VECTOR(UNSIGNED(label1) + UNSIGNED(label2));
	
	pla: pla_plus_wrapper
		GENERIC MAP
			(10, groups, len, 32)
		PORT MAP
		(
			clk, rst, enconfig,
			indexing, signLable, congigIn, outpla
		);
		
END ARCHITECTURE behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY decoder IS  ---- support up to 10 for 32'b
	PORT
	(
		input  		: IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		en          : IN  STD_LOGIC;
		output      : OUT  STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END ENTITY decoder;
ARCHITECTURE behavioral OF decoder IS
SIGNAL output_b      : STD_LOGIC_VECTOR (15 DOWNTO 0);
BEGIN

PROCESS(input, en)
BEGIN
	CASE input IS
		WHEN "0000" =>
			output_b <= "0000000000000001";
		WHEN "0001" =>
			output_b <= "0000000000000010";
		WHEN "0010" =>
			output_b <= "0000000000000100";
		WHEN "0011" =>
			output_b <= "0000000000001000";
		WHEN "0100" =>
			output_b <= "0000000000010000";
		WHEN "0101" =>
			output_b <= "0000000000100000";
		WHEN "0110" =>
			output_b <= "0000000001000000";
		WHEN "0111" =>
			output_b <= "0000000010000000";
		WHEN "1000" =>
			output_b <= "0000000100000000";
		WHEN "1001" =>
			output_b <= "0000001000000000";
		WHEN "1010" =>
			output_b <= "0000010000000000";
		WHEN OTHERS =>
			output_b <= "0000000000000000";
	END CASE;			
END PROCESS;		
	
output <= output_b WHEN en ='1' ELSE "0000000000000000";

END ARCHITECTURE behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
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
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY pla_plus_wrapper IS
	GENERIC
		(Memory_read		: INTEGER := 10; --10 for 32'b and 16 for 20'b (number of memory units with configur_reg)
		 M					: INTEGER := 8;
		 N 					: INTEGER := 20;
		 conf_input_len  	: INTEGER := 32);
	PORT
	(
		clk   	   : IN  STD_LOGIC;
		rst   	   : IN  STD_LOGIC;
		enconfig   : IN  STD_LOGIC;
		indexing   : IN  STD_LOGIC_VECTOR (3 DOWNTO 0); -- cw
		labelIn    : IN  STD_LOGIC_VECTOR (N - 1 DOWNTO 0); --address labels input
		congigIn   : IN  STD_LOGIC_VECTOR (conf_input_len - 1 DOWNTO 0);
		f		   : OUT STD_LOGIC
	);
	
END ENTITY pla_plus_wrapper;
ARCHITECTURE behavioral OF pla_plus_wrapper IS
	SIGNAL configreg   : STD_LOGIC_VECTOR (319 DOWNTO 0);
	SIGNAL cnt		   : STD_LOGIC_VECTOR (15 DOWNTO 0);
BEGIN


	dec: ENTITY WORK.decoder
		PORT MAP
		(
		input  	=> indexing,
		en      => enconfig,
		output	=> cnt
		); 

	behavioral_register:
	FOR I IN 1 TO Memory_read GENERATE
	reg_2I: ENTITY WORK.aftab_register
		GENERIC
		MAP(len  => conf_input_len)
		PORT MAP
		(
		clk       => clk,
		rst       => rst,
		zero 	  => '0',
		load      => cnt(I-1),
		inReg     => congigIn,
		outReg    => configreg((I*conf_input_len)-1 DOWNTO (I-1)*conf_input_len)
		); 
	END GENERATE behavioral_register;

	pla_design: ENTITY WORK.pla_andor
		GENERIC
		MAP(M => M,
			N => N)
		PORT MAP
		(
		input         => labelIn,
		configreg_0 => configreg(39 DOWNTO 0),
		configreg_1 => configreg(40*2-1 DOWNTO 40),
		configreg_2 => configreg(40*3-1 DOWNTO 40*2),
		configreg_3 => configreg(40*4-1 DOWNTO 40*3),
		configreg_4 => configreg(40*5-1 DOWNTO 40*4),
		configreg_5 => configreg(40*6-1 DOWNTO 40*5),
		configreg_6 => configreg(40*7-1 DOWNTO 40*6),
		configreg_7 => configreg(319 DOWNTO 280),
		f  			=> f
		);

END ARCHITECTURE behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY timerAlart IS
	GENERIC (
		len      : INTEGER := 4
	);
	PORT (
		clk, rst          : IN STD_LOGIC;
		en, dis           : IN STD_LOGIC;
		maskInterrupt     : OUT STD_LOGIC;
		timerException    : OUT STD_LOGIC
	);
END timerAlart;

ARCHITECTURE behavioral OF timerAlart IS

	SIGNAL timer    : STD_LOGIC_VECTOR(len-1 DOWNTO 0);
	CONSTANT check    : STD_LOGIC_VECTOR(len-1 DOWNTO 0):= "1100"; --- 12, 13 cycles are needed, 8 for fetch 4 or 5 between instruction needed to be recheck after simulation(value must be equl to anything -1)
	SIGNAL flag		: STD_LOGIC;
	
BEGIN

	PROCESS (clk, rst) 
	BEGIN
		IF (rst = '1') THEN
			timer <= (others =>'0');
			flag <= '0';
			timerException <= '0';
		ELSIF (clk = '1' AND clk'EVENT) THEN
			timerException <= '0';
			IF (dis = '1') THEN
				timer <= (others =>'0');
				flag <= '0';
			ELSIF (timer = check) THEN 
				timerException <= '1';
				timer <= (others =>'0');
			ELSIF (en = '1') THEN 
				timer <= (others =>'0');   ---- to make sure it starts from 0
				flag <= '1';
			ELSIF (flag = '1') THEN
				timer <= std_logic_vector(to_unsigned(to_integer(unsigned(timer)) + 1, len));
			END IF;
		END IF;
	END PROCESS;

	maskInterrupt <= flag;
	
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
-- LIBRARY IEEE;
-- USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.NUMERIC_STD.ALL;

-- ENTITY tb_timerAlart IS
	
-- END tb_timerAlart;

-- ARCHITECTURE tb OF tb_timerAlart IS

-- component timerAlart IS
	-- GENERIC (
		-- len      : INTEGER := 5
	-- );
	-- PORT (
		-- clk, rst          : IN STD_LOGIC;
		-- en, dis           : IN STD_LOGIC;
		-- timerException    : OUT STD_LOGIC
	-- );
	-- end component;
	-- signal clk, rst ,en, des :STD_LOGIC := '0';
	-- signal timerException :STD_LOGIC;

-- begin
	
	-- dt: timerAlart
	-- GENERIC map(
		-- 5
	-- )
	-- PORT MAP(
		-- clk, rst,en, dis ,timerException  
	-- );
	
	-- clk <= not(clk) after 1 ns;
	-- rst <= '1' after 5 ns, '0' after 10 ns;
	
	-- en <= '1' after 15 ns, '0' after 17 ns;
	-- des <= '1' after 90 ns;
	
	-- end tb;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_aftab_CFI_lable IS

END ENTITY tb_aftab_CFI_lable;
--
ARCHITECTURE tb OF tb_aftab_CFI_lable IS
	COMPONENT aftab_CFI_lable IS
		GENERIC (len : INTEGER := 20;
				groups	: INTEGER := 8);
		PORT 
		(
			clk             : IN STD_LOGIC;
			rst             : IN STD_LOGIC;
			enSource, enDes : IN STD_LOGIC;
			enconfig 		: IN STD_LOGIC;
			labelIn         : IN STD_LOGIC_VECTOR  (len - 1 DOWNTO 0);
			congigIn        : IN STD_LOGIC_VECTOR  (31 DOWNTO 0);
			indexing  		: IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
			exceptoin		: OUT STD_LOGIC
		);
	END COMPONENT;
	SIGNAL  clk             :  STD_LOGIC := '0';
	SIGNAL  rst             :  STD_LOGIC := '1';
	SIGNAL  enSource, enDes :  STD_LOGIC := '0';
	SIGNAL  enconfig 		:  STD_LOGIC := '0';
	SIGNAL  labelIn         :  STD_LOGIC_VECTOR  (19 DOWNTO 0);
	SIGNAL  congigIn        :  STD_LOGIC_VECTOR  (31 DOWNTO 0);
	SIGNAL  indexing  		:  STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL  exceptoin		:  STD_LOGIC;

BEGIN

	PLA: aftab_CFI_lable 
		GENERIC MAP(20, 8)
		PORT MAP
		(
			clk ,
			rst  ,
			enSource, enDes,
			enconfig,
			labelIn ,
			congigIn ,
			indexing ,
			exceptoin
		);
		
	congigIn <= x"00000051", x"00180000" AFTER 20 NS, x"40000000" AFTER 40 NS,  x"00900000"  AFTER 60 NS, x"40000000"  AFTER 80 NS,x"00000000" AFTER 100 NS, x"00000000"  AFTER 120 NS, x"00000000"  AFTER 140 NS,x"00000000" AFTER 160 NS, x"00000000"  AFTER 180 NS;
	indexing <= x"0", x"1" AFTER 20 NS, x"2" AFTER 40 NS,  x"3"  AFTER 60 NS, x"4" AFTER 80 NS,x"5" AFTER 100 NS, x"6"  AFTER 120 NS, x"7"  AFTER 140 NS,x"8" AFTER 160 NS, x"9"  AFTER 180 NS; 
	enconfig <= '0', '1' AFTER 10 NS, '0' AFTER 12 NS, '1' AFTER 20 NS, '0' AFTER 22 NS, '1' AFTER 40 NS, '0' AFTER 42 NS,  '1'  AFTER 60 NS, '0' AFTER 62 NS, '1' AFTER 80 NS, '0' AFTER 82 NS, '1' AFTER 100 NS, '0' AFTER 102 NS, '1'  AFTER 120 NS, '0' AFTER 122 NS, '1'  AFTER 140 NS, '0' AFTER 142 NS,'1' AFTER 160 NS, '0' AFTER 162 NS, '1'  AFTER 180 NS, '0' AFTER 182 NS; 
	clk <= NOT clk AFTER 1 NS;
	rst <= '0' AFTER 5 ns;
	labelIn <= x"0000d", x"00000" AFTER 220 ns, x"00003" AFTER 260 ns, x"00040" AFTER 280 ns, x"0000d" AFTER 300 ns, x"00000" AFTER 320 ns; 
	enSource <=  '1'  AFTER 200 ns, '0'  AFTER 202 ns,'1'  AFTER 240 ns, '0'  AFTER 242 ns,'1'  AFTER 280 ns, '0'  AFTER 282 ns,'1'  AFTER 320 ns, '0'  AFTER 322 ns; 
	enDes <=  '1'  AFTER 220 ns, '0'  AFTER 222 ns,'1'  AFTER 260 ns, '0'  AFTER 262 ns,'1'  AFTER 300 ns, '0'  AFTER 302 ns,'1'  AFTER 340 ns, '0'  AFTER 342 ns; 
END ARCHITECTURE tb;