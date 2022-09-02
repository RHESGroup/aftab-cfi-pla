LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_cfi_timer IS
	GENERIC (
		len      : INTEGER := 4
	);
	PORT (
		clk, rst          : IN STD_LOGIC;
		en, dis           : IN STD_LOGIC;
		maskInterrupt     : OUT STD_LOGIC;
		timerException    : OUT STD_LOGIC
	);
END aftab_cfi_timer;

ARCHITECTURE behavioral OF aftab_cfi_timer IS

	SIGNAL timer    : STD_LOGIC_VECTOR(len-1 DOWNTO 0);
	CONSTANT check    : STD_LOGIC_VECTOR(len-1 DOWNTO 0):= "1111";
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
				flag <= '0';
			ELSIF (en = '1') THEN 
				timer <= (others =>'0');   ---- to make sure it starts from 0
				flag <= '1';
			ELSIF (flag = '1') THEN
				timer <= std_logic_vector(to_unsigned(to_integer(unsigned(timer)) + 1, len));
				flag <= '1';
			END IF;
		END IF;
	END PROCESS;

	maskInterrupt <= flag;
	
END behavioral;