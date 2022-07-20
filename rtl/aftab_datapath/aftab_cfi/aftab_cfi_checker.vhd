LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_cfi_checker IS
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
END ENTITY aftab_cfi_checker;
--
ARCHITECTURE behavioral OF aftab_cfi_checker IS
	COMPONENT cfi_label_ctrl IS
		PORT 
		(
			clk            : IN STD_LOGIC;
			rst            : IN STD_LOGIC;
			enDes   	   : IN STD_LOGIC; 
			enOut          : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT cfi_label_calc IS
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

	COMPONENT timer_alart IS
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
	
	ctrl : cfi_label_ctrl 
		PORT MAP
		(
			clk, rst, enDes, enOut
		);
	lab_gen : cfi_label_calc 
		GENERIC MAP(len, groups)
		PORT MAP
		(
			clk, rst, enSource, enDes, enconfig, labelIn, congigIn, indexing, plaOut
		);
		
	timer : timer_alart 
	GENERIC MAP( 4 )
	PORT MAP(
		clk, rst, enSource, enDes, maskInterrupt, timerException
	);
	exceptoin_s <= NOT(plaOut) When enOut ='1' ELSE '0';	
	exceptoin <= timerException OR exceptoin_s;	
END ARCHITECTURE behavioral;