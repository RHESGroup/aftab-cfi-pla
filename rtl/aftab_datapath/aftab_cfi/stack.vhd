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
		IF (rst = '1') THEN
			mem <= (OTHERS => (OTHERS => '0'));
		ELSIF (clk = '1' AND clk'event) THEN
			IF (en = '1') THEN
				mem(to_integer(unsigned(ptr))) <= dataIn;
			END IF;
		END IF;
	END PROCESS;
	dataOut <= mem(to_integer(unsigned(ptr)));
END behavioral;