LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY CFI_label_calc IS
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
	
	
END ENTITY CFI_label_calc;
--
ARCHITECTURE behavioral OF CFI_label_calc IS
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