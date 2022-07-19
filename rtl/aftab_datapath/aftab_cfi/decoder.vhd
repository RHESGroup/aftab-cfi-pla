LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY decoder IS  ---- support up to 10 for 32'b
	PORT
	(
		input  		: IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
		en          : IN  STD_LOGIC;
		output      : OUT  STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END ENTITY decoder;
ARCHITECTURE behavioral OF decoder IS
SIGNAL output_b      : STD_LOGIC_VECTOR (15 DOWNTO 0);
BEGIN

PROCESS(input, en)
BEGIN
	CASE input IS
		WHEN "0000" =>
			output_b <= "0000000000000001";
		WHEN "0001" =>
			output_b <= "0000000000000010";
		WHEN "0010" =>
			output_b <= "0000000000000100";
		WHEN "0011" =>
			output_b <= "0000000000001000";
		WHEN "0100" =>
			output_b <= "0000000000010000";
		WHEN "0101" =>
			output_b <= "0000000000100000";
		WHEN "0110" =>
			output_b <= "0000000001000000";
		WHEN "0111" =>
			output_b <= "0000000010000000";
		WHEN "1000" =>
			output_b <= "0000000100000000";
		WHEN "1001" =>
			output_b <= "0000001000000000";
		WHEN "1010" =>
			output_b <= "0000010000000000";
		WHEN OTHERS =>
			output_b <= "0000000000000000";
	END CASE;			
END PROCESS;		
	
output <= output_b WHEN en ='1' ELSE "0000000000000000";

END ARCHITECTURE behavioral;