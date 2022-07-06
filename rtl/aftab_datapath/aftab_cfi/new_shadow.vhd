LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY recShadowStack IS
	GENERIC (
		addr_len      : INTEGER := 32;
		stack_len_add : INTEGER := 3
	);
	PORT (
		clk, rst          : IN STD_LOGIC;
		funcCall, funcRet : IN STD_LOGIC;
		retAddPC          : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
		retAddSysStack    : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0); 
		stackException    : OUT STD_LOGIC
	);
END recShadowStack;

ARCHITECTURE behavioral OF recShadowStack IS
	
	COMPONENT pointer IS
		GENERIC (stack_len_add : INTEGER := 3);
		PORT (
			clk, rst          : IN STD_LOGIC;
			push, pop : IN STD_LOGIC;
			pointerFlagF, pointerFlagE        : OUT STD_LOGIC;
			ptrOut            : OUT STD_LOGIC_VECTOR(stack_len_add - 1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT stackCtrl IS
		PORT
		(
			clk, rst          : IN STD_LOGIC;
			call, ret   : IN STD_LOGIC;
			comp, LSB       : IN STD_LOGIC;
			stackWrEn, ptrInc, ptrdec, exception : OUT STD_LOGIC
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
	COMPONENT mux2 IS
	GENERIC (stack_len_add : INTEGER := 3);
	PORT (
		sel  : IN STD_LOGIC;
		a, b : IN STD_LOGIC_VECTOR (stack_len_add-1 DOWNTO 0);
		c    : OUT STD_LOGIC_VECTOR(stack_len_add-1 DOWNTO 0)
	);
	END COMPONENT;
	
	
	--SIGNAL in_reg    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL addr    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	--SIGNAL check1, check2    : STD_LOGIC_VECTOR(addr_len-2 DOWNTO 0);
	SIGNAL outShadowStack    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL inShadowStack    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL ptr  : STD_LOGIC_VECTOR(stack_len_add-1 DOWNTO 0);
	SIGNAL stackWrEn, push, pop, en, comp, LSB : STD_LOGIC;
	SIGNAL ctrl_exeptionFlag, ptr_exeptionFlag, pointerFlagF, pointerFlagE, ptr_rst	: STD_LOGIC;
BEGIN

	shadowStack : stack
		GENERIC MAP(
		addr_len,
		stack_len_add)
		PORT MAP(
			clk, rst, stackWrEn, ptr, inShadowStack, outShadowStack
		);
	ptr_m : pointer
		GENERIC MAP(stack_len_add)
		PORT MAP(
			clk, ptr_rst,
			push, pop, pointerFlagF, pointerFlagE,
			ptr
		);
	ctrl : stackCtrl
		PORT MAP(
			clk, rst,
			funcCall, funcRet,
			comp, LSB,
			stackWrEn, push, pop, ctrl_exeptionFlag
		);	
	mux : mux2
		GENERIC MAP(addr_len)
		PORT MAP(
			funcCall,
			retAddSysStack,
			retAddPC,
			addr
		);
	--in_reg <= retAddPC WHEN (clk = 1 and rising_edge'clk and en = '1') ELSE in_reg;
	en <= push OR pop;	
	comp <= '1' WHEN outShadowStack (30 DOWNTO 0) = addr(31 DOWNTO 1)	ELSE '0';
	--check1 <= outShadowStack(30 DOWNTO 0);
	--check2 <= addr(31 DOWNTO 1);
	LSB <= outShadowStack (31);
	inShadowStack <= retAddPC (31 DOWNTO 1) & comp;
	ptr_exeptionFlag <= pointerFlagF WHEN funcCall='1' ELSE
						pointerFlagE WHEN (funcRet ='1' and LSB ='0') ELSE
						'0';
	stackException <= ctrl_exeptionFlag OR ptr_exeptionFlag;
	ptr_rst<= rst OR ctrl_exeptionFlag;
	
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY stackCtrl IS
	PORT
	(
		clk, rst          : IN STD_LOGIC;
		call, ret   : IN STD_LOGIC;
		comp, LSB       : IN STD_LOGIC;
		stackWrEn, ptrInc, ptrdec, exception : OUT STD_LOGIC
		);
END stackCtrl;
--
ARCHITECTURE ctrl OF stackCtrl IS
	TYPE state IS (init, normal, wr_stack, recursive, check_recursive);
	SIGNAL p_state, n_state      : state;
BEGIN	

	PROCESS (clk, rst) BEGIN
		IF rst = '1' THEN
			p_state <= init;
		ELSIF (clk = '1' AND clk'EVENT) THEN
			p_state <= n_state;
		END IF;
	END PROCESS;
	
	PROCESS (p_state, call, ret, comp, LSB ) 
	BEGIN		
		n_state <= normal;
		CASE p_state IS
			WHEN init =>
				 IF ( call = '1') THEN
						n_state <= wr_stack;
				 ELSE
						n_state <= init;
				 END IF;
			WHEN normal =>
				 IF (LSB = '0') THEN
					IF ( call = '1' and comp = '1') THEN
						n_state <= recursive;
					ELSIF ( call = '1' and comp = '0') THEN
						n_state <= wr_stack;
					ELSE
						n_state <= normal;
					END IF;
				 ELSE
					n_state <= recursive;
				END IF;
			WHEN wr_stack =>
				n_state <= normal;
			WHEN recursive =>
				IF (call = '1' and comp = '0' ) THEN
					n_state <= wr_stack;
				ELSIF (ret = '1' and comp = '0' ) THEN
					n_state <= check_recursive;
				ELSE
					n_state <= recursive;
				END IF;
			WHEN check_recursive =>
				IF (LSB = '0') THEN
					n_state <= normal;
				ELSIF (LSB = '1' ) THEN
					n_state <= recursive;
				END IF;
			WHEN OTHERS => 
				n_state <= normal;
		END CASE;
	END PROCESS;
	
	PROCESS (p_state, call, ret, comp, LSB ) 
	BEGIN		
		ptrInc <='0'; 
		ptrdec <='0'; 
		exception <='0';
		stackWrEn <= '0'; 
		
		CASE p_state IS
			WHEN init =>
				IF (call = '1') THEN
					ptrInc <='0'; 
					ptrdec <='0'; 
					exception <='0';
					stackWrEn <= '0'; 
				ELSIF (ret = '1') THEN 
					exception <='1'; 
				END IF;
			WHEN normal =>
				IF (call = '1') THEN
					IF (comp = '1') THEN
						ptrInc <='0'; 
						ptrdec <='0'; 
						exception <='0';
						stackWrEn <= '1';						
					ELSE 
						ptrInc <='1'; 
						ptrdec <='0'; 
						exception <='0'; 
					END IF;
				ELSIF (ret = '1') THEN 
					IF (comp = '1') THEN
						ptrInc <='0'; 
						ptrdec <='1'; 
						exception <='0'; 
					ELSE 
						ptrInc <='0'; 
						--ptrdec <='1'; 
						exception <='1'; 
					END IF;
				END IF;
			WHEN wr_stack =>
				stackWrEn <= '1';
			WHEN recursive =>
				IF (call = '1') THEN
					IF (comp = '1') THEN
						ptrInc <='0'; 
						ptrdec <='0'; 
						exception <='0'; 
					ELSE 
						ptrInc <='1'; 
						ptrdec <='0'; 
						exception <='0'; 
					END IF;
				ELSIF (ret = '1') THEN 
					IF (comp = '1') THEN
						ptrInc <='0'; 
						ptrdec <='0'; 
						exception <='0'; 
					ELSE 
						ptrInc <='0'; 
						ptrdec <='1'; 
						exception <='0'; 
					END IF;
				END IF;		
			WHEN check_recursive =>
					IF (comp = '1') THEN
						ptrdec <='1';  
					ELSE 
						--ptrdec <='1'; 
						exception <='1'; 
					END IF;
			WHEN OTHERS => 
				ptrInc <='0'; 
				ptrdec <='0'; 
				exception <='0';
				stackWrEn <= '0'; 		
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

ENTITY pointer IS
	GENERIC (stack_len_add : INTEGER := 3);
	PORT (
		clk, rst          : IN STD_LOGIC;
		push, pop : IN STD_LOGIC;
		pointerFlagF, pointerFlagE          : OUT STD_LOGIC;
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
		pointerFlagF <= '0';
		pointerFlagE <= '0';
		IF (clk = '1' AND clk'EVENT) THEN
			IF (rst = '1') THEN
				ptr  <= emptyCheck;
			ELSIF (push = '1') THEN
				IF (ptr = fullCheck) THEN ---- can be compared with anything the values to somewhere else.
					pointerFlagF <= '1';
				ELSE 
					ptr <= std_logic_vector(to_unsigned(to_integer(unsigned(ptr)) + 1, stack_len_add));
				END IF;
			ELSIF (pop = '1') THEN
				IF (ptr = emptyCheck) THEN
					pointerFlagE <= '1';
				ELSE
					ptr <= std_logic_vector(to_unsigned(to_integer(unsigned(ptr)) - 1, stack_len_add));
				END IF;
			ELSE
				ptr <= ptr;
			END IF;
		END IF;
	END PROCESS;
	

	-- PROCESS (ptr, push, pop)
	-- BEGIN
	
		-- IF (push = '1') THEN
				-- IF (ptr = fullCheck) THEN ---- can be compared with anything the values to somewhere else.
					-- pointerFlag <= '1';
				-- END IF;
		-- ELSIF (pop = '1') THEN
				-- IF (ptr = emptyCheck) THEN
					-- pointerFlag <= '1';
				-- END IF;
		-- ELSE
				-- pointerFlag <= '0';
		-- END IF;
	-- END PROCESS;

	ptrOut <= ptr;
END behavioral;
----**----**----**----**----**----**----**----**----**----**----**----**----**----**----**
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY mux2 IS
	GENERIC (stack_len_add : INTEGER := 32);
	PORT (
		sel  : IN STD_LOGIC;
		a, b : IN STD_LOGIC_VECTOR (stack_len_add-1 DOWNTO 0);
		c    : OUT STD_LOGIC_VECTOR(stack_len_add-1 DOWNTO 0)
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
-- LIBRARY IEEE;
-- USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.NUMERIC_STD.ALL;

-- ENTITY tb_recShadowStack IS

-- END tb_recShadowStack;

-- ARCHITECTURE tb OF tb_recShadowStack IS
	
	-- COMPONENT recShadowStack IS
	-- GENERIC (
		-- addr_len      : INTEGER := 32;
		-- stack_len_add : INTEGER := 3
	-- );
	-- PORT (
		-- clk, rst          : IN STD_LOGIC;
		-- funcCall, funcRet : IN STD_LOGIC;
		-- retAddPC          : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
		-- retAddSysStack    : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0); 
		-- stackException    : OUT STD_LOGIC
	-- );
	-- END COMPONENT;
	
	-- SIGNAL  clk, rst 		  : STD_LOGIC :='1';
	-- SIGNAL	funcCall, funcRet : STD_LOGIC :='0';
	-- SIGNAL	retAddPC          : STD_LOGIC_VECTOR(31 DOWNTO 0);
	-- SIGNAL	retAddSysStack    : STD_LOGIC_VECTOR(31 DOWNTO 0); 
	-- SIGNAL	stackException    : STD_LOGIC;

-- BEGIN 
	-- UUT: recShadowStack 
	-- GENERIC MAP(
		-- 32, 4
	-- )
	-- PORT MAP(
		-- clk, rst,
		-- funcCall, funcRet,
		-- retAddPC ,
		-- retAddSysStack,
		-- stackException 
	-- );
	
	
	-- clk <= NOT clk AFTER 1 ns;
	-- rst <= '0' after 10 ns;
	-- retAddPC <= "01010101010010011010101101010101" , "01101101010010110101011001010101" AFTER 40 ns, "01010101101001000110101101010101" AFTER 50 ns, "01010101010010110101011100010101" AFTER 60 ns, "01010101010010110101011011010101" AFTER 80 ns, "01010100100001011010101101010101" AFTER 120 ns, "01010100101001111010001101110101" AFTER 220 ns;
	-- retAddSysStack <=  "01010100100001011010101101010101", "01010101010010110101011011010101" AFTER 140 ns, "01010101010010110101011100010101" AFTER 142 ns,  "01010101101001000110101101010101" AFTER 160 ns,
	-- "01010100101001111010001101110101" AFTER 180 ns,
	-- "01101101010010110101011001010101" AFTER 230 ns, "01010101010010011010101101010101" AFTER 240 ns;
	-- funcCall <= '1' After 11 ns, '0' After 20 ns, '1' After 28 ns, '0' After 38 ns, '1' After 45 ns, '0' After 47 ns, '1' After 55 ns, '0' After 57 ns, '1' After 61 ns, '0' After 68 ns, '1' After 81 ns, '0' After 83 ns, '1' After 118 ns, '0' After 130 ns, '1' After 250 ns, '0' After 260 ns;
	-- funcRet <= '1' After 130 ns, '0' After 200 ns, '1' After 228 ns, '0' After 245 ns;
	
	
-- END tb;


