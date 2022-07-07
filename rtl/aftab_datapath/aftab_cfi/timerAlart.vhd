LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY timerAlart IS
	GENERIC (
		len      : INTEGER := 5
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
	CONSTANT check    : STD_LOGIC_VECTOR(len-1 DOWNTO 0):= "10101"; --- re-write after check (value must be equl to anything -1)
	SIGNAL flag		: STD_LOGIC;
	
BEGIN

	PROCESS (clk) 
	BEGIN
		timerException <= '0';
		IF (clk = '1' AND clk'EVENT) THEN
			IF (rst = '1' or dis = '1') THEN
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


-- LIBRARY IEEE;
-- USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.NUMERIC_STD.ALL;

-- ENTITY tb_timerAlart IS
	
-- END tb_timerAlart;

-- ARCHITECTURE tb OF tb_timerAlart IS

-- component timerAlart IS
	-- GENERIC (
		-- len      : INTEGER := 5
	-- );
	-- PORT (
		-- clk, rst          : IN STD_LOGIC;
		-- en, dis           : IN STD_LOGIC;
		-- timerException    : OUT STD_LOGIC
	-- );
	-- end component;
	-- signal clk, rst ,en, des :STD_LOGIC := '0';
	-- signal timerException :STD_LOGIC;

-- begin
	
	-- dt: timerAlart
	-- GENERIC map(
		-- 5
	-- )
	-- PORT MAP(
		-- clk, rst,en, dis ,timerException  
	-- );
	
	-- clk <= not(clk) after 1 ns;
	-- rst <= '1' after 5 ns, '0' after 10 ns;
	
	-- en <= '1' after 15 ns, '0' after 17 ns;
	-- des <= '1' after 90 ns;
	
	-- end tb;