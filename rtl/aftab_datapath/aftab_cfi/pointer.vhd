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
	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			ptr  <= emptyCheck;
		ELSIF (clk = '1' AND clk'EVENT) THEN
			IF (push = '1') THEN
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
				pointerFlagF <= '0';
				pointerFlagE <= '0';
				ptr <= ptr;
			END IF;
		END IF;
	END PROCESS;

	ptrOut <= ptr;
END behavioral;