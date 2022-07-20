LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY rec_shadow_stack IS
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
END rec_shadow_stack;

ARCHITECTURE behavioral OF rec_shadow_stack IS
	
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
	GENERIC (stack_len_add : INTEGER := 32);
	PORT (
		sel  : IN STD_LOGIC;
		a, b : IN STD_LOGIC_VECTOR (stack_len_add-1 DOWNTO 0);
		c    : OUT STD_LOGIC_VECTOR(stack_len_add-1 DOWNTO 0)
	);
	END COMPONENT;
	
	SIGNAL addr    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL outShadowStack    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL inShadowStack    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL ptr  : STD_LOGIC_VECTOR(stack_len_add-1 DOWNTO 0);
	SIGNAL stackWrEn, push, pop, comp, LSB : STD_LOGIC;
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
		
	comp <= '1' WHEN (outShadowStack(addr_len-1 DOWNTO 1) = addr(addr_len-1 DOWNTO 1))	ELSE '0';
	LSB <= outShadowStack (addr_len-1);
	inShadowStack <= retAddPC (addr_len-1 DOWNTO 1) & comp;
	ptr_exeptionFlag <= pointerFlagF WHEN funcCall='1' ELSE
						pointerFlagE WHEN (funcRet ='1' and LSB ='0') ELSE
						'0';
	stackException <= ctrl_exeptionFlag OR ptr_exeptionFlag;
	ptr_rst<= rst OR ctrl_exeptionFlag;
	
END behavioral;