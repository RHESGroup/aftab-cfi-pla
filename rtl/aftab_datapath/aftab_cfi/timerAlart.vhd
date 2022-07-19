LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY timerAlart IS
	GENERIC (
		len      : INTEGER := 4
	);
	PORT (
		clk, rst          : IN STD_LOGIC;
		en, dis           : IN STD_LOGIC;
		maskInterrupt     : OUT STD_LOGIC;
		timerException    : OUT STD_LOGIC
	);
END timerAlart;

ARCHITECTURE behavioral OF timerAlart IS

	SIGNAL timer    : STD_LOGIC_VECTOR(len-1 DOWNTO 0);
	CONSTANT check    : STD_LOGIC_VECTOR(len-1 DOWNTO 0):= "1100"; --- 12, 13 cycles are needed, 8 for fetch 4 or 5 between instruction needed to be recheck after simulation(value must be equl to anything -1)
	SIGNAL flag		: STD_LOGIC;
	
BEGIN

	PROCESS (clk, rst) 
	BEGIN
		IF (rst = '1') THEN
			timer <= (others =>'0');
			flag <= '0';
			timerException <= '0';
		ELSIF (clk = '1' AND clk'EVENT) THEN
			timerException <= '0';
			IF (dis = '1') THEN
				timer <= (others =>'0');
				flag <= '0';
			ELSIF (timer = check) THEN 
				timerException <= '1';
				timer <= (others =>'0');
			ELSIF (en = '1') THEN 
				timer <= (others =>'0');   ---- to make sure it starts from 0
				flag <= '1';
			ELSIF (flag = '1') THEN
				timer <= std_logic_vector(to_unsigned(to_integer(unsigned(timer)) + 1, len));
			END IF;
		END IF;
	END PROCESS;

	maskInterrupt <= flag;
	
END behavioral;