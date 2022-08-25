LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY aftab_push_stack_ctrl IS
	PORT
	(
		clk, rst          : IN STD_LOGIC;
		push, pop         : IN STD_LOGIC; -- pop = 
		daru_done, comp  				 : IN STD_LOGIC;
		stackWrEn, ptrInc, ptrdec, exception : OUT STD_LOGIC
		);
END aftab_push_stack_ctrl;
--
ARCHITECTURE ctrl OF aftab_push_stack_ctrl IS
	TYPE state IS (init, normal, ptr_dec, wr_stack);
	SIGNAL p_state, n_state      : state;
BEGIN	

	PROCESS (clk, rst) BEGIN
		IF rst = '1' THEN
			p_state <= init;
		ELSIF (clk = '1' AND clk'EVENT) THEN
			p_state <= n_state;
		END IF;
	END PROCESS;
	
	PROCESS (p_state, push, pop, comp, daru_done ) 
	BEGIN		
		n_state <= normal;
		CASE p_state IS
			WHEN init =>
				 IF ( push = '1') THEN
						n_state <= wr_stack;
				 ELSE
						n_state <= init;
				 END IF;
			WHEN normal =>
				IF (pop = '1') THEN
					n_state <= pop_s;
				IF ( push = '1') THEN
					n_state <= wr_stack;
				ELSE
					n_state <= normal;
				END IF;
			WHEN wr_stack =>
				n_state <= normal;
			WHEN ptr_dec =>
				n_state <= normal;
			WHEN pop_s =>
				IF (daru_done ='1') THEN
					n_state <= ptr_dec;
				ELSE 
					n_state <= pop_s;
			WHEN OTHERS => 
				n_state <= normal;
		END CASE;
	END PROCESS;
	
	PROCESS (p_state, push, pop, comp ) 
	BEGIN		
		ptrInc <='0'; 
		ptrDec <='0'; 
		exception <='0';
		stackWrEn <= '0'; 
		
		CASE p_state IS
			WHEN init =>
				IF (push = '1') THEN
					ptrInc <='0'; 
					ptrDec <='0'; 
					exception <='0';
					stackWrEn <= '0'; 
				ELSIF (pop = '1') THEN 
					exception <='1'; 
				END IF;
			WHEN normal =>
				IF (push = '1') THEN
					ptrInc <='1'; 
					ptrDec <='0'; 
					exception <='0'; 
				END IF;
			WHEN pop_s =>
				
			WHEN ptr_dec =>
				IF (comp = '1') THEN
						ptrInc <='0'; 
						ptrDec <='1'; 
						exception <='0'; 
					ELSE 
						ptrInc <='0'; 
						--ptrdec <='1'; 
						exception <='1'; 
					END IF;
			WHEN wr_stack =>
				stackWrEn <= '1';
			WHEN OTHERS => 
				ptrInc <='0'; 
				ptrDec <='0'; 
				exception <='0';
				stackWrEn <= '0'; 		
		END CASE;
	END PROCESS;
	
END ctrl;