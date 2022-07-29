LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY aftab_stack_ctrl IS
	PORT
	(
		clk, rst          : IN STD_LOGIC;
		call, ret   : IN STD_LOGIC;
		comp, LSB       : IN STD_LOGIC;
		stackWrEn, ptrInc, ptrDec, exception : OUT STD_LOGIC
		);
END aftab_stack_ctrl;
--
ARCHITECTURE ctrl OF aftab_stack_ctrl IS
	TYPE state IS (init, normal, ret_s, ptr_dec, wr_stack, recursive, check_recursive);
	SIGNAL p_state, n_state      : state;
BEGIN	

	PROCESS (clk, rst) BEGIN
		IF rst = '1' THEN
			p_state <= init;
		ELSIF (clk = '1' AND clk'EVENT) THEN
			p_state <= n_state;
		END IF;
	END PROCESS;
	
	PROCESS (p_state, call, ret, comp, LSB ) 
	BEGIN		
		n_state <= normal;
		CASE p_state IS
			WHEN init =>
				 IF ( call = '1') THEN
						n_state <= wr_stack;
				 ELSE
						n_state <= init;
				 END IF;
			WHEN normal =>
				 IF (ret = '1') THEN
					n_state <= ret_s;
				 ELSIF (LSB = '0') THEN
					IF ( call = '1' and comp = '1') THEN
						n_state <= recursive;
					ELSIF ( call = '1' and comp = '0') THEN
						n_state <= wr_stack;
					ELSE
						n_state <= normal;
					END IF;
				 ELSE
					n_state <= recursive;
				END IF;
			WHEN wr_stack =>
				n_state <= normal;
			WHEN ptr_dec =>
				IF (LSB = '1' ) THEN
					n_state <= check_recursive;
				ELSE
					n_state <= normal;
				END IF;
			WHEN ret_s =>
				IF (comp = '0') THEN
					n_state <= init;
				ELSIF (comp = '1' ) THEN
					n_state <= ptr_dec;
				END IF;
			WHEN recursive =>
				IF (call = '1' and comp = '0' ) THEN
					n_state <= wr_stack;
				ELSIF (ret = '1') THEN
					n_state <= check_recursive;
				ELSE
					n_state <= recursive;
				END IF;
			WHEN check_recursive =>
				IF (comp = '0') THEN
					n_state <= ret_s;
				ELSIF (comp = '1') THEN
					n_state <= recursive;
				END IF;
			WHEN OTHERS => 
				n_state <= normal;
		END CASE;
	END PROCESS;
	
	PROCESS (p_state, call, ret, comp, LSB ) 
	BEGIN		
		ptrInc <='0'; 
		ptrDec <='0'; 
		exception <='0';
		stackWrEn <= '0'; 
		
		CASE p_state IS
			WHEN init =>
				IF (call = '1') THEN
					ptrInc <='0'; 
					ptrDec <='0'; 
					exception <='0';
					stackWrEn <= '0'; 
				ELSIF (ret = '1') THEN 
					exception <='1'; 
				END IF;
			WHEN normal =>
				IF (call = '1') THEN
					IF (comp = '1') THEN
						ptrInc <='0'; 
						ptrDec <='0'; 
						exception <='0';
						stackWrEn <= '1';						
					ELSE 
						ptrInc <='1'; 
						ptrDec <='0'; 
						exception <='0'; 
					END IF;
				END IF;
			WHEN ret_s =>
				
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
			WHEN recursive =>
				IF (call = '1') THEN
					IF (comp = '1') THEN
						ptrInc <='0'; 
						ptrDec <='0'; 
						exception <='0'; 
					ELSE 
						ptrInc <='1'; 
						ptrDec <='0'; 
						exception <='0'; 
					END IF;
				END IF;		
			WHEN check_recursive =>
					IF (comp = '0') THEN
						ptrDec <='1';  
					END IF;
			WHEN OTHERS => 
				ptrInc <='0'; 
				ptrDec <='0'; 
				exception <='0';
				stackWrEn <= '0'; 		
		END CASE;
	END PROCESS;
	
END ctrl;