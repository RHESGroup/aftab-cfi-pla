LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_push_sh_stack IS
	GENERIC (
		addr_len      : INTEGER := 32;
		stack_len_add : INTEGER := 3
	);
	PORT (
		clk, rst          : IN STD_LOGIC;
		intrrpush, intrrpop, LW : IN STD_LOGIC;
		data_from_reg_file     : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
		data_from_daru    : IN STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0); 
		stackException    : OUT STD_LOGIC
	);
END aftab_push_sh_stack;

ARCHITECTURE behavioral OF aftab_push_sh_stack IS
	
	COMPONENT aftab_pointer IS
		GENERIC (stack_len_add : INTEGER := 3);
		PORT (
			clk, rst          : IN STD_LOGIC;
			push, pop : IN STD_LOGIC;
			pointerFlagF, pointerFlagE        : OUT STD_LOGIC;
			ptrOut            : OUT STD_LOGIC_VECTOR(stack_len_add - 1 DOWNTO 0)
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

	SIGNAL outShadowStack    : STD_LOGIC_VECTOR(addr_len-1 DOWNTO 0);
	SIGNAL ptr  : STD_LOGIC_VECTOR(stack_len_add-1 DOWNTO 0);
	SIGNAL comp,pointerFlagF, pointerFlagE : STD_LOGIC;
BEGIN

	shadowStack : aftab_stack
		GENERIC MAP(
		addr_len,
		stack_len_add)
		PORT MAP(
			clk, rst, intrrpush, ptr, data_from_reg_file, outShadowStack
		);
	ptr_m : aftab_pointer
		GENERIC MAP(stack_len_add)
		PORT MAP(
			clk, rst,
			intrrpush, LW, pointerFlagF, pointerFlagE,
			ptr
		);

	comp <= '1' WHEN (outShadowStack = data_from_daru)	ELSE '0';

	stackException <= comp WHEN intrrpop= '1' ELSE '0';
	
	
END behavioral;
