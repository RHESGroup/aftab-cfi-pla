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
			clk            : IN STD_LOGIC;
			rst            : IN STD_LOGIC;
			enSource, enDes, conf_en   : IN STD_LOGIC; 
			labelIn          : IN STD_LOGIC_VECTOR  (len - 1 DOWNTO 0);
			outpla     		 : OUT STD_LOGIC
	);
	END COMPONENT;

   --SIGNAL arr_Index : STD_LOGIC_VECTOR (4 downto 0);
	SIGNAL enOut , plaOut			: STD_LOGIC;

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
			clk, rst, enSource, enDes, enconfig, labelIn, plaOut
		);
	exceptoin <= plaOut When enOut ='1' ELSE '0';	
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY aftab_pla_shift_register IS
	GENERIC
		(M					: INTEGER := 8;
		 N 					: INTEGER := 20;
		 conf_input_len  	: INTEGER := 32);--12, 20 or 32
	PORT
	(
		clk    : IN  STD_LOGIC;
		rst    : IN  STD_LOGIC;
		shift  : IN  STD_LOGIC;
		inReg  : IN  STD_LOGIC_VECTOR(conf_input_len - 1 DOWNTO 0);
		outReg : OUT STD_LOGIC_VECTOR(2 * M * N - 1 DOWNTO 0)
	);
END ENTITY aftab_pla_shift_register;
ARCHITECTURE behavioral OF aftab_pla_shift_register IS
	SIGNAL outReg_w : STD_LOGIC_VECTOR(2 * M * N - 1 DOWNTO 0);
BEGIN
	outReg <= outReg_w;
	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			outReg_w <= (OTHERS => '0');
		ELSIF (clk = '1' AND clk 'EVENT) THEN
			IF (shift = '1') THEN
				outReg_w <= inReg & outReg_w(2 * M * N - 1 DOWNTO conf_input_len);
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY pla_andor IS
	GENERIC
		(N : INTEGER := 20;
		 M : INTEGER := 8);
	PORT
	(
		input  		: IN  STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
		configreg   : IN  STD_LOGIC_VECTOR (2 * N * M - 1 DOWNTO 0);
		f			: OUT STD_LOGIC
	);
END ENTITY pla_andor;
ARCHITECTURE behavioral OF pla_andor IS
	TYPE config_matrix IS ARRAY (0 TO M - 1) OF STD_LOGIC_VECTOR(2 * N - 1 DOWNTO 0);
	SIGNAL and_signal: config_matrix;
	SIGNAL notin     : STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
	SIGNAL or_signal : STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
	SIGNAL unused    : STD_LOGIC_VECTOR (M - 1 DOWNTO 0);
BEGIN

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
		      and_signal(I)(2 * J) <= (NOT configreg(N*I + 2*J)) OR (configreg(N*I + 2*J) AND input(J));
			config_and_notin:
		      and_signal(I)(2*J+1) <= (NOT configreg(N*I + 2*J + 1)) OR (configreg(N*I + 2*J + 1) AND notin(J));
		END GENERATE behavioral_config_columns;
    END GENERATE behavioral_config_rows;
	
	behavioral_and: 
    FOR I IN 0 TO M - 1 GENERATE
       andx : 
		 or_signal(I) <= AND (and_signal(I));--reduction and
    END GENERATE behavioral_and;
	
	behavioral_unused_and_gates: 
    FOR I IN 0 TO M - 1 GENERATE
       unusedx : 
		 unused(I) <= OR configreg((I + 1) * N - 1 DOWNTO I * N);--reduction or
    END GENERATE behavioral_unused_and_gates;
	
	f <= OR (or_signal AND unused);--reduction or
	
END ARCHITECTURE behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_CFI_lable_calc IS
	GENERIC (len : INTEGER := 20;
			 groups	: INTEGER := 8);
	PORT 
	(
		clk            : IN STD_LOGIC;
		rst            : IN STD_LOGIC;
		enSource, enDes, conf_en   : IN STD_LOGIC; 
		labelIn          : IN STD_LOGIC_VECTOR  (len - 1 DOWNTO 0);
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
		(M					: INTEGER := 8;
		 N 					: INTEGER := 20;
		 conf_input_len  	: INTEGER := 32);--12, 20 or 32
	PORT
	(
		clk   	   : IN  STD_LOGIC;
		rst   	   : IN  STD_LOGIC;
		wr  	   : IN  STD_LOGIC;
		data_input : IN  STD_LOGIC_VECTOR (N - 1 DOWNTO 0);--address labels input
		conf_input : IN  STD_LOGIC_VECTOR (conf_input_len - 1 DOWNTO 0);
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
	signLable <= label1 XNOR label2;
	pla: pla_plus_wrapper
		GENERIC MAP
			(groups, len, len)
		PORT MAP
		(
			clk, rst, conf_en,
			signLable, labelIn, outpla
		);
		
END ARCHITECTURE behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY pla_plus_wrapper IS
	GENERIC
		(M					: INTEGER := 8;
		 N 					: INTEGER := 20;
		 conf_input_len  	: INTEGER := 32);--12, 20 or 32
	PORT
	(
		clk   	   : IN  STD_LOGIC;
		rst   	   : IN  STD_LOGIC;
		wr  	   : IN  STD_LOGIC;
		data_input : IN  STD_LOGIC_VECTOR (N - 1 DOWNTO 0);--address labels input
		conf_input : IN  STD_LOGIC_VECTOR (conf_input_len - 1 DOWNTO 0);
		f		   : OUT STD_LOGIC
	);
END ENTITY pla_plus_wrapper;
ARCHITECTURE behavioral OF pla_plus_wrapper IS
	SIGNAL configreg   : STD_LOGIC_VECTOR (2 * N * M - 1 DOWNTO 0);
BEGIN

	
	pla_design: ENTITY WORK.pla_andor
		GENERIC
		MAP(M => M,
			N => N)
		PORT MAP
		(
		input         => data_input,
		configreg   => configreg,
		f  			=> f
		);
	
	shift_register: ENTITY WORK.aftab_pla_shift_register
		GENERIC
		MAP(M 				=> M,
			N 				=> N,
			conf_input_len  => conf_input_len)
		PORT MAP
		(
		clk    => clk,
		rst    => rst,
		shift  => wr,
		inReg  => conf_input,
		outReg => configreg
	);

END ARCHITECTURE behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**