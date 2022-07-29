LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY aftab_cfi_label_ctrl IS
	PORT 
	(
		clk            : IN STD_LOGIC;
		rst            : IN STD_LOGIC;
		enDes   	   : IN STD_LOGIC; 
		enOut          : OUT STD_LOGIC
	);
END ENTITY aftab_cfi_label_ctrl;
--
ARCHITECTURE ctrl OF aftab_cfi_label_ctrl IS
	TYPE state IS (init, checkLab);
	SIGNAL p_state, n_state      : state;
BEGIN
	PROCESS (clk, rst) BEGIN
		IF rst = '1' THEN
			p_state <= init;
		ELSIF (clk = '1' AND clk'EVENT) THEN
			p_state <= n_state;
		END IF;
	END PROCESS;
	
	PROCESS (p_state, enDes ) 
	BEGIN		
		n_state <= init;
		CASE p_state IS
			WHEN init =>
				IF (enDes = '1') THEN
					n_state <= checkLab;
				END IF;
			WHEN OTHERS => 
				n_state <= init;
		END CASE;
	END PROCESS;
	PROCESS (p_state) 
	BEGIN	
		enOut <= '0';
		CASE p_state IS
			WHEN checkLab =>
				enOut <= '1';
			WHEN OTHERS => 
				enOut <= '0';
		END CASE;
	END PROCESS;
END ARCHITECTURE ctrl;