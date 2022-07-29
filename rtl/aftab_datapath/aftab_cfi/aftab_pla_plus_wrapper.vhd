LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY  aftab_pla_plus_wrapper IS
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
		configIn   : IN  STD_LOGIC_VECTOR (conf_input_len - 1 DOWNTO 0);
		f		   : OUT STD_LOGIC
	);
	
END ENTITY  aftab_pla_plus_wrapper;
ARCHITECTURE behavioral OF  aftab_pla_plus_wrapper IS
	SIGNAL configreg   : STD_LOGIC_VECTOR (319 DOWNTO 0);
	SIGNAL cnt		   : STD_LOGIC_VECTOR (15 DOWNTO 0);
BEGIN


	dec: ENTITY WORK.aftab_cfi_decoder
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
		inReg     => configIn,
		outReg    => configreg((I*conf_input_len)-1 DOWNTO (I-1)*conf_input_len)
		); 
	END GENERATE behavioral_register;

	pla_design: ENTITY WORK. aftab_pla_andor
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
