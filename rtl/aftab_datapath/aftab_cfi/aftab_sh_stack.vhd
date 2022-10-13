LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_sh_stack IS
	GENERIC (
		addr_len      : INTEGER := 32;
		stack_len_add : INTEGER := 3
	);
	PORT (
		clk, rst          : IN STD_LOGIC;
		funcCall, funcRet, loadCFI : IN STD_LOGIC;
		retAddPC          : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
		retAddSysStack    : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0); 
		stackException    : OUT STD_LOGIC
	);
END aftab_sh_stack;

ARCHITECTURE behavioral OF aftab_sh_stack IS
	
	COMPONENT aftab_pointer IS
		GENERIC (stack_len_add : INTEGER := 3);
		PORT (
			clk, rst          : IN STD_LOGIC;
			push, pop : IN STD_LOGIC;
			ptrOut            : OUT STD_LOGIC_VECTOR(stack_len_add - 1 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT aftab_stack_ctrl IS
		GENERIC (n : INTEGER := 3);
		PORT
		(
			clk, rst          : IN STD_LOGIC;
			call, ret		   : IN STD_LOGIC;
			comp, LSB       : IN STD_LOGIC;
			ptr            : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
			stackWrEn, ptrInc, ptrDec, exception, inRegEn : OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT aftab_stack IS
		GENERIC (bitwidth : INTEGER := 8;
				depthbit : INTEGER := 8);
		PORT (
			clk, rst, en : IN STD_LOGIC;
			ptr                          	   : IN STD_LOGIC_VECTOR(depthbit-1 DOWNTO 0);
			dataIn                     		   : IN STD_LOGIC_VECTOR(bitwidth-1 DOWNTO 0);
			dataOut                    		   : OUT STD_LOGIC_VECTOR(bitwidth-1 DOWNTO 0)
		);
	END COMPONENT;
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
	COMPONENT aftab_mux2 IS
	GENERIC (stack_len_add : INTEGER := 32);
	PORT (
		sel  : IN STD_LOGIC;
		a, b : IN STD_LOGIC_VECTOR (stack_len_add-1 DOWNTO 0);
		c    : OUT STD_LOGIC_VECTOR(stack_len_add-1 DOWNTO 0)
	);
	END COMPONENT;
	
	SIGNAL addr, reg_addr    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL outShadowStack    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL inShadowStack    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL ptr  : STD_LOGIC_VECTOR(stack_len_add-1 DOWNTO 0);
	SIGNAL stackWrEn, push, pop, comp, LSB : STD_LOGIC;
	SIGNAL ctrl_exeptionFlag, ptr_rst,inRegEn	: STD_LOGIC;
BEGIN
	addr_reg : aftab_register
	GENERIC MAP(32)
	PORT MAP
	(
		clk, rst,'0', inRegEn, addr, reg_addr
	);
	inputMux : aftab_mux2
		GENERIC MAP(addr_len)
		PORT MAP(
			funcCall,
			retAddSysStack,
			retAddPC,
			addr
		);
	shadowStack : aftab_stack
		GENERIC MAP(
		addr_len,
		stack_len_add)
		PORT MAP(
			clk, rst, stackWrEn, ptr, inShadowStack, outShadowStack
		);
	ptr_m : aftab_pointer
		GENERIC MAP(stack_len_add)
		PORT MAP(
			clk, ptr_rst,
			push, pop,
			ptr
		);
	ctrl : aftab_stack_ctrl
		GENERIC MAP(stack_len_add)
		PORT MAP(
			clk, rst,
			funcCall, funcRet,
			comp, LSB,
			ptr,
			stackWrEn, push, pop, ctrl_exeptionFlag,inRegEn
		);	
		
	comp <= '1' WHEN (outShadowStack(addr_len-1 DOWNTO 1) = reg_addr(addr_len-1 DOWNTO 1))	ELSE '0';
	LSB <= outShadowStack (0);
	inShadowStack <= reg_addr (addr_len-1 DOWNTO 1) & comp;
	stackException <= ctrl_exeptionFlag; 
	ptr_rst<= rst OR ctrl_exeptionFlag; 
	
END behavioral;
