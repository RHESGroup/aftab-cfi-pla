LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY nestedRecShadowStack IS
	GENERIC (
		addr_len      : INTEGER := 12;
		stack_len_add : INTEGER := 3
	);
	PORT (
		clk, rst          : IN STD_LOGIC;
		funcCall, funcRet : IN STD_LOGIC;
		retAddPC          : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
		retAddSysStack    : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0); 
		stackException    : OUT STD_LOGIC
	);
END nestedRecShadowStack;


ARCHITECTURE behavioral OF nestedRecShadowStack IS
	
	COMPONENT sh_stack IS
		GENERIC (
			addr_len      : INTEGER := 32;
			stack_len_add : INTEGER := 3
		);
		PORT (
			clk, rst          : IN STD_LOGIC;
			funcCall, funcRet : IN STD_LOGIC;
			dataIn            : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
			ptr   			  : IN STD_LOGIC_VECTOR (stack_len_add - 1 DOWNTO 0);
			dataOut           : OUT STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0)
		);
	END COMPONENT;

	--COMPONENT compIn IS
	--	PORT (
	--		funcCall, funcRet : IN STD_LOGIC;
	--		din1              : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	--		din2              : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	--		up, down, check	  : OUT STD_LOGIC
	--	);	
	--END COMPONENT;
	COMPONENT pointer IS
		GENERIC (stack_len_add : INTEGER := 3);
		PORT (
			clk, rst          : IN STD_LOGIC;
			push, pop : IN STD_LOGIC;
			pointerFlag              : OUT STD_LOGIC;
			ptrOut            : OUT STD_LOGIC_VECTOR(stack_len_add - 1 DOWNTO 0)
	);
	END COMPONENT;
	COMPONENT recCounterStack IS
	GENERIC (depth : INTEGER := 2;
			main_stack_len_add : INTEGER := 4;
			counterBit : INTEGER := 6);
	PORT (
		clk, rst          : IN STD_LOGIC;
		recCall, recRet   : IN STD_LOGIC;
		shadowPTR         : IN STD_LOGIC_VECTOR(main_stack_len_add-1 DOWNTO 0);
		PTRO 	          : OUT STD_LOGIC_VECTOR(main_stack_len_add-1 DOWNTO 0);
		exeptionFlag	  : OUT STD_LOGIC
		);
	END COMPONENT;
	
	SIGNAL outStackShadow    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL stackPTRO  : STD_LOGIC_VECTOR(stack_len_add-1 DOWNTO 0);
	SIGNAL ptr   : STD_LOGIC_VECTOR (stack_len_add - 1 DOWNTO 0);
	SIGNAL push, pop, up, down, zero, valid, check, compIn, compRecPTR, ptrUp, ptrDown, pointerFlag : STD_LOGIC;
	SIGNAL zeroNORcheck, exeptionFlag	: STD_LOGIC;

	
BEGIN

	stackShadow : sh_stack
		GENERIC MAP(
		addr_len,
		stack_len_add)
		PORT MAP(
			clk, rst, push, pop, retAddPC, ptr, outStackShadow
	);
	valid <= '1' WHEN retAddSysStack = outStackShadow ELSE '0';
	ptr_mkr : pointer
		GENERIC MAP(stack_len_add)
		PORT MAP(
			clk, rst,
			ptrUp, ptrDown, pointerFlag,
			ptr
	);
	recModule : recCounterStack 
		GENERIC MAP(2,stack_len_add, 6)
		PORT MAP(
			clk, rst, compIn, compRecPTR, ptr,stackPTRO ,exeptionFlag	
		);
	
	ptrUp <= '1' WHEN (funcCall = '1' AND compRecPTR = '0') ELSE '0';
	ptrDown <= '1' WHEN (funcRet = '1' AND compRecPTR = '0') ELSE '0';
	compRecPTR <= '1' WHEN (ptr = stackPTRO) ELSE '0'; --AND funcRet='1'
	compIn <= '1' WHEN (outStackShadow = retAddPC AND funcCall ='1') ELSE '0';
	zero <= compIn NOR compRecPTR;
	push <= funcCall AND zero;
	pop  <= funcRet AND zero;
	
	zeroNORcheck <= zero NOR down;
	
	stackException <= valid OR exeptionFlag OR pointerFlag WHEN funcRet = '1' ELSE '0';
	
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY sh_stack IS
	GENERIC (
		addr_len      : INTEGER := 32;
		stack_len_add : INTEGER := 3
	);
	PORT (
		clk, rst          : IN STD_LOGIC;
		funcCall, funcRet : IN STD_LOGIC;
		dataIn            : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
		ptr   			  : IN STD_LOGIC_VECTOR (stack_len_add - 1 DOWNTO 0);
		dataOut           : OUT STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0)
		);
END sh_stack;
ARCHITECTURE behavioral OF sh_stack IS
	TYPE shadowStack IS ARRAY(2 ** stack_len_add - 1 DOWNTO 0) OF STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL stackArr : shadowStack;
	
	
BEGIN

	PROCESS (clk, rst)
	BEGIN
		IF (clk = '1' AND clk'event) THEN
			IF (rst = '1') THEN
				stackArr <= (OTHERS => (OTHERS => '0'));
			ELSIF (funcCall = '1') THEN
				stackArr(to_integer(unsigned(ptr))) <= dataIn;
			END IF;
		END IF;
	END PROCESS;
	dataOut <= stackArr(to_integer(unsigned(ptr) - 1));
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY recCounterStack IS
	GENERIC (depth : INTEGER := 2;
			main_stack_len_add : INTEGER := 4;
			counterBit : INTEGER := 6);
	PORT (
		clk, rst          : IN STD_LOGIC;
		recCall, recRet   : IN STD_LOGIC;
		shadowPTR         : IN STD_LOGIC_VECTOR(main_stack_len_add-1 DOWNTO 0);
		PTRO 	          : OUT STD_LOGIC_VECTOR(main_stack_len_add-1 DOWNTO 0);
		exeptionFlag	  : OUT STD_LOGIC
		);
END recCounterStack;

ARCHITECTURE behavioral OF recCounterStack IS

	SIGNAL ptr   :STD_LOGIC_VECTOR (depth-1 DOWNTO 0);
	SIGNAL stackptr   :STD_LOGIC_VECTOR (main_stack_len_add-1 DOWNTO 0);
	SIGNAL stackCounter, count   :STD_LOGIC_VECTOR (counterBit-1 DOWNTO 0);
	SIGNAl counterZero, ptrCheck, prtMemEn, ptrInc, ptrdec, countUp, countMemEn, countDown, countRst, counterLoad, rstCount, counterException, emptyRecStackException, ctrlException, pointerFlag: STD_LOGIC;
	
	
	COMPONENT pointer IS
		GENERIC (stack_len_add : INTEGER := 3);
		PORT (
			clk, rst          : IN STD_LOGIC;
			push, pop : IN STD_LOGIC;
			pointerFlag              : OUT STD_LOGIC;
			ptrOut            : OUT STD_LOGIC_VECTOR(stack_len_add - 1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT counter IS
		GENERIC (n : INTEGER := 8);
		PORT (
		clk, rst, enUp, enDown, load : IN STD_LOGIC;
		c_in                          	   : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		exeption 							: OUT STD_LOGIC;
		c                          		   : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT stack IS
	GENERIC (bitwidth : INTEGER := 8;
			depthbit : INTEGER := 8);
	PORT (
		clk, rst, en : IN STD_LOGIC;
		ptr                          	   : IN STD_LOGIC_VECTOR(depthbit-1 DOWNTO 0);
		dataIn                     		   : IN STD_LOGIC_VECTOR(bitwidth-1 DOWNTO 0);
		dataOut                    		   : OUT STD_LOGIC_VECTOR(bitwidth-1 DOWNTO 0)
	);
	END COMPONENT;
	COMPONENT stackCtrl IS
	PORT
	(
		clk, rst          : IN STD_LOGIC;
		recCall, recRet   : IN STD_LOGIC;
		counterZero       : IN STD_LOGIC;
		ptrCheck          : IN STD_LOGIC;
		prtMemEn, ptrInc, ptrdec, exception, countUp, countMemEn, countDown, countRst, counterLoad  : OUT STD_LOGIC
		);
	END COMPONENT;
	
BEGIN
	
	
	ptr_mkr : pointer
	GENERIC MAP(depth)
	PORT MAP(
		clk, rst,
		ptrInc, ptrdec,pointerFlag,
		ptr
	);
	
	rstCount <= rst OR countRst;
	rec_count : counter
		GENERIC MAP(counterBit)
		PORT MAP(
			clk, rstCount, countUp, countDown, counterLoad, stackCounter, counterException, count
	);
	
	ctrl : stackCtrl 
	PORT MAP
	(
		clk, rst, recCall, recRet, counterZero, ptrCheck, prtMemEn, ptrInc, ptrdec, ctrlException, countUp, countMemEn, countDown, countRst, counterLoad
		);	
	stackptrT : stack 
		GENERIC MAP(main_stack_len_add, depth)
		PORT MAP(
		clk, rst, prtMemEn, ptr, shadowPTR, stackptr
		);		
	stackcount : stack 
		GENERIC MAP(counterBit, depth)
		PORT MAP(
		clk, rst, countMemEn, ptr, count, stackCounter
		);
	PTRO <= stackptr;
	counterZero <= '1' WHEN stackCounter = "000000" ELSE '0';
	ptrCheck <= '1' WHEN shadowPTR = stackptr ELSE '0';
	--emptyRecStackException <= '1' WHEN ((ptr = "00") AND (counterZero ='1') AND (recRet = '1')) ELSE '0';
	exeptionFlag <= ctrlException OR counterException OR pointerFlag; --OR emptyRecStackException 
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY stackCtrl IS
	PORT
	(
		clk, rst          : IN STD_LOGIC;
		recCall, recRet   : IN STD_LOGIC;
		counterZero       : IN STD_LOGIC;
		ptrCheck          : IN STD_LOGIC;
		prtMemEn, ptrInc, ptrdec, exception, countUp, countMemEn, countDown, countRst, counterLoad  : OUT STD_LOGIC
		);
END stackCtrl;
--
ARCHITECTURE ctrl OF stackCtrl IS
	TYPE state IS (init, checkRet, s1, s2, s3, s5, s6);
	SIGNAL p_state, n_state      : state;
BEGIN	

	PROCESS (clk, rst) BEGIN
		IF rst = '1' THEN
			p_state <= init;
		ELSIF (clk = '1' AND clk'EVENT) THEN
			p_state <= n_state;
		END IF;
	END PROCESS;
	
	PROCESS (p_state, recRet, counterZero, recCall,ptrCheck ) 
	BEGIN		
		n_state <= init;
		CASE p_state IS
			WHEN init =>
				IF (counterZero = '1') THEN
					IF (recCall = '1') THEN
						n_state <= s1;
					ELSIF (recRet = '1') THEN
						n_state <= s2;
					END IF;
				ELSIF (ptrCheck = '1') THEN --same
						n_state <= s3;
				ELSE
					IF (recCall = '1') THEN
						n_state <= s5;
					ELSIF (recRet = '1') THEN
						n_state <= s6;
					END IF;
				END IF;
			WHEN s2 =>
				n_state <= checkRet;
			WHEN OTHERS => 
				n_state <= init;
		END CASE;
	END PROCESS;
	
	PROCESS (p_state, recCall, recRet, counterZero, ptrCheck ) 
	BEGIN		
		ptrInc <='0'; 
		ptrdec <='0'; 
		exception <='0';
		countUp <='0';
		countDown <='0';
		counterLoad <= '0';
		prtMemEn <= '0';
		countMemEn <= '0';
		countRST <='0';
		CASE p_state IS
			WHEN init =>
				IF (counterZero = '1') THEN
					IF (recCall = '1') THEN
						countUp <='1';
					ELSIF (recRet = '1') THEN
						ptrdec <='1'; 
					END IF;
				ELSIF (ptrCheck = '1') THEN --same
					IF (recCall = '1') THEN
						countUp <='1';
					ELSIF (recRet = '1') THEN
						countDown <='1';
					END IF;
				ELSE
					IF (recCall = '1') THEN
						ptrInc <='1'; 
						countRST <='1';
					ELSIF (recRet = '1') THEN
						exception <='1';
					END IF;
				END IF;
			WHEN s1 =>
						countMemEn <='1';
						prtMemEn <= '1'; 
			WHEN s2 =>
						counterLoad <= '1';
			WHEN s3 =>
						countMemEn <='1';
			WHEN s5 =>
						prtMemEn <= '1'; 
			WHEN s6 =>
						exception <='1';
			WHEN checkRet =>
				IF (ptrCheck = '1') THEN
					countDown <='1';
					countMemEn <='1';
				ELSE
					exception <='1';
				END IF;
			WHEN OTHERS => 
				ptrInc <='0'; 
				ptrdec <='0'; 
				exception <='0';
				countUp <='0';
				countDown <='0';
				counterLoad <= '0';
				prtMemEn <= '0';
				countMemEn <= '0';
		END CASE;
	END PROCESS;
	
END ctrl;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY stack IS
	GENERIC (bitwidth : INTEGER := 8;
			depthbit : INTEGER := 8);
	PORT (
		clk, rst, en : IN STD_LOGIC;
		ptr                          	   : IN STD_LOGIC_VECTOR(depthbit-1 DOWNTO 0);
		dataIn                     		   : IN STD_LOGIC_VECTOR(bitwidth-1 DOWNTO 0);
		dataOut                    		   : OUT STD_LOGIC_VECTOR(bitwidth-1 DOWNTO 0)
	);
END stack;
ARCHITECTURE behavioral OF stack IS
	TYPE memory IS ARRAY(2**depthbit -1 DOWNTO 0) OF STD_LOGIC_VECTOR(bitwidth-1 DOWNTO 0);
	
	SIGNAL mem : memory;
	
BEGIN
	PROCESS (clk, rst)
	BEGIN
		IF (clk = '1' AND clk'event) THEN
			IF (rst = '1') THEN
				mem <= (OTHERS => (OTHERS => '0'));
			ELSIF (en = '1') THEN
				mem(to_integer(unsigned(ptr))) <= dataIn;
			END IF;
		END IF;
	END PROCESS;
	dataOut <= mem(to_integer(unsigned(ptr)));
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY counter IS
	GENERIC (n : INTEGER := 8);
	PORT (
		clk, rst, enUp, enDown, load : IN STD_LOGIC;
		c_in                          	   : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		exeption 							: OUT STD_LOGIC;
		c                          		   : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
	);
END counter;
ARCHITECTURE behavioral OF counter IS
	SIGNAL counter : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL zero : STD_LOGIC_VECTOR(n-1 DOWNTO 0):=(others =>'0');
BEGIN
	PROCESS (clk)
	BEGIN
		IF (rising_edge (clk)) THEN
			IF (rst = '1') THEN
				counter <= (OTHERS => '0');
			ELSIF (load = '1') THEN
				counter <= c_in;
			ELSIF (enUp = '1') THEN
				counter <= STD_LOGIC_VECTOR(unsigned(counter) + 1);
			ELSIF ((zero /= counter) AND (enDown = '1')) THEN 
				counter <= STD_LOGIC_VECTOR(unsigned(counter) - 1);    
			END IF;
		END IF;
	END PROCESS;
	exeption <= '1' WHEN ((zero = counter) AND (enDown = '1')) ELSE '0'; 
	c <= counter;
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY pointer IS
	GENERIC (stack_len_add : INTEGER := 3);
	PORT (
		clk, rst          : IN STD_LOGIC;
		push, pop : IN STD_LOGIC;
		pointerFlag              : OUT STD_LOGIC;
		ptrOut            : OUT STD_LOGIC_VECTOR(stack_len_add - 1 DOWNTO 0)
	);
END pointer;

ARCHITECTURE behavioral OF pointer IS
	SIGNAL ptr        : STD_LOGIC_VECTOR (stack_len_add - 1 DOWNTO 0);
	CONSTANT fullCheck  : STD_LOGIC_VECTOR (stack_len_add - 1 DOWNTO 0) := (OTHERS => '1');
	CONSTANT emptyCheck : STD_LOGIC_VECTOR (stack_len_add - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'EVENT) THEN
			IF (rst = '1') THEN
				ptr  <= emptyCheck;
			ELSIF (push = '1') THEN
					ptr <= std_logic_vector(to_unsigned(to_integer(unsigned(ptr)) + 1, stack_len_add));
				
			ELSIF (pop = '1') THEN
					ptr <= std_logic_vector(to_unsigned(to_integer(unsigned(ptr)) - 1, stack_len_add));
				
			ELSE
				ptr <= ptr;
			END IF;
		END IF;
	END PROCESS;
	
	PROCESS (ptr, push, pop)
	BEGIN
	
		IF (push = '1') THEN
				IF (ptr = fullCheck) THEN ---- can be compared with anything the values to somewhere else.
					pointerFlag <= '1';
				END IF;
		ELSIF (pop = '1') THEN
				IF (ptr = emptyCheck) THEN
					pointerFlag <= '1';
				END IF;
		ELSE
				pointerFlag <= '0';
		END IF;
	END PROCESS;

	ptrOut <= ptr;
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY tb_recCounterStack IS
END tb_recCounterStack;
ARCHITECTURE tb OF tb_recCounterStack IS
	COMPONENT recCounterStack IS
		GENERIC (depth : INTEGER := 2;
			main_stack_len_add : INTEGER := 4;
			counterBit : INTEGER := 6);
		PORT (
			clk, rst          : IN STD_LOGIC;
			recCall, recRet   : IN STD_LOGIC;
			shadowPTR         : IN STD_LOGIC_VECTOR(main_stack_len_add-1 DOWNTO 0);
			PTRO 	          : OUT STD_LOGIC_VECTOR(main_stack_len_add-1 DOWNTO 0);
			exeptionFlag	  : OUT STD_LOGIC
			);
	END COMPONENT;
	SIGNAL clk, rst          : STD_LOGIC := '1';
	SIGNAL recCall, recRet         : STD_LOGIC := '0';
	SIGNAL shadowPTR           : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL PTRO           : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL exeptionFlag          : STD_LOGIC;
BEGIN
	U1 : recCounterStack 
		GENERIC MAP (2, 4, 5)
		PORT MAP(
		clk, rst ,recCall, recRet, shadowPTR, PTRO, exeptionFlag
		);
		clk    <= NOT clk AFTER 1 ns;
		rst    <= '0' AFTER 5 ns;--, '1' after 40 ns, '0' after 43 ns;
		shadowPTR <= "0001",-- "00010" AFTER 8 ns,
			--"00011" AFTER 10 ns, "00110" AFTER 12 ns,
			"0100" AFTER 14 ns, --  "01001" AFTER 16 ns,
			"0001" AFTER 40 ns, "1010" AFTER 56 ns;
			recCall <= '1' AFTER 6 ns, '0' AFTER 24 ns, '1' AFTER 60 ns,'0' AFTER 80 ns; 
			recRet <= '1' AFTER 30 ns, '0' AFTER 44 ns, '1' AFTER 80 ns;
END tb;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY mux2 IS
	PORT (
		sel  : IN STD_LOGIC;
		a, b : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		c    : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END mux2;
ARCHITECTURE behavioral OF mux2 IS
BEGIN
	PROCESS (sel, a, b)
	BEGIN
		CASE sel IS
			WHEN '0' => c <= a;
			WHEN '1' => c <= b;
			WHEN OTHERS => NULL;
		END CASE;
	END PROCESS;
END behavioral;							
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY eqM IS
	PORT (
		din1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		din2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		Eq   : OUT STD_LOGIC
	);
END eqM;
ARCHITECTURE behavioral OF eqM IS
	SIGNAL validM  : STD_LOGIC_VECTOR(30 DOWNTO 0);
	SIGNAL xourOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
	xourOut     <= din1 XNOR din2;
	validM (15 DOWNTO 0) <= xourOut(15 DOWNTO 0) AND xourOut(31 DOWNTO 16);
	validM (23 DOWNTO 16) <= validM(15 DOWNTO 8) AND validM(7 DOWNTO 0);
	validM (27 DOWNTO 24) <= validM(23 DOWNTO 20) AND validM(19 DOWNTO 16);
	validM (29 DOWNTO 28) <= validM(27 DOWNTO 26) AND validM(25 DOWNTO 24);
	validM (30) <= validM(28) AND validM(29);
	Eq          <= NOT validM(30); -- '1' means addresses are not match.
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY eqZero IS
	PORT (
		din  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		zero : OUT STD_LOGIC
	);
END eqZero;
ARCHITECTURE behavioral OF eqZero IS
	--SIGNAL validM : STD_LOGIC_VECTOR(6 DOWNTO 0);
BEGIN
	--zero <= ((din(0) NOR din(1)) NOR (din(2) NOR din(3))) NOR ((din(4) NOR din(5)) NOR (din(6) NOR din(7)));
	zero <= ((din(0) OR din(1)) OR (din(2) OR din(3))) NOR ((din(4) OR din(5)) OR (din(6) OR din(7)));
END behavioral;
