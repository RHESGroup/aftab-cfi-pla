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