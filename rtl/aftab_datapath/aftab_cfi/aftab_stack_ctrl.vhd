LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY aftab_stack_ctrl IS
	GENERIC (n : INTEGER := 3);
	PORT
	(
		clk, rst          : IN STD_LOGIC;
		call, ret		   : IN STD_LOGIC;
		comp, LSB       : IN STD_LOGIC;
		ptr            : IN STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
		stackWrEn, ptrInc, ptrDec, exception, inRegEn : OUT STD_LOGIC
		);
END aftab_stack_ctrl;
--
ARCHITECTURE ctrl OF aftab_stack_ctrl IS
	TYPE state IS (init, wr_check, wr_stack, rec_fin, ptr_inc, waiting, rd_wait, rd_stack, check, exceptS);
	SIGNAL p_state, n_state : state;
	SIGNAL zeor : STD_LOGIC_VECTOR(n - 1 DOWNTO 0) := (OTHERS=>'0');
BEGIN	
	PROCESS (clk, rst) BEGIN
		IF rst = '1' THEN
			p_state <= init;
		ELSIF (clk = '1' AND clk'EVENT) THEN
			p_state <= n_state;
		END IF;
	END PROCESS;
	
	PROCESS (p_state,ptr, call, ret, comp, LSB ) 
	VARIABLE f : STD_LOGIC := '0';
	BEGIN		
		n_state <= waiting;
		CASE p_state IS
			WHEN init =>
				IF (call = '1') THEN
						n_state <= wr_stack;		
				ELSIF (ret = '1') THEN
						n_state <= exceptS;
				ELSE
						n_state <= init;
				END IF;			
			WHEN wr_stack =>
				f := '0';
				n_state <= waiting;				
			WHEN rec_fin =>
				f := '0';
				n_state <= wr_check;			
			WHEN ptr_inc =>
				f := '0';
				n_state <= wr_stack;
			WHEN wr_check =>
				IF (comp ='1') THEN
					n_state <= waiting;
					f := '0';
				ELSIF (LSB = '1' AND f = '1') THEN
					n_state <= rec_fin; -- dec
				ELSE 
					n_state <= ptr_inc; -- inc
				END IF;
			WHEN waiting =>	
				IF (ret = '1') THEN
					n_state <= rd_wait;
				ELSIF (call = '1') THEN
					n_state <= wr_check;
				ELSE
					n_state <= waiting;
				END IF;
			WHEN rd_wait =>
				n_state <= rd_stack;
			WHEN rd_stack =>
				IF (LSB = '1' AND comp ='1') THEN
					f := '1';
					n_state <= waiting;
				ELSIF (LSB = '1' AND comp ='0') THEN
					f := '0';
					n_state <= check;
				ELSIF (LSB = '0' AND comp ='1') THEN
					f := '0';
					IF (ptr = zeor) THEN
						n_state <= init;
					ELSE
						n_state <= waiting;
					END iF;
				ELSIF (LSB = '0' AND comp ='0') THEN
					f := '0';
					n_state <= exceptS;
				END IF;
			WHEN check	=>
				IF (LSB = '1' AND comp ='1') THEN
					n_state <= waiting;
				ELSIF (LSB = '0' AND comp ='1') THEN
					n_state <= waiting;
				ELSE
					n_state <= exceptS;
				END IF;
			WHEN exceptS =>
				n_state <= init;
			WHEN OTHERS => 
				n_state <= init;
		END CASE;
	END PROCESS;	
	
	PROCESS (p_state,ptr, call, ret, comp, LSB ) 
	BEGIN		
		ptrInc <='0'; 
		ptrDec <='0'; 
		exception <='0';
		stackWrEn <= '0'; 
		inRegEn <= '0';
		CASE p_state IS
			WHEN init =>
				inRegEn <= '1';
			WHEN wr_stack =>
				stackWrEn <= '1';				
			WHEN rec_fin =>
				ptrDec <= '1';			
			WHEN ptr_inc =>
				ptrInc <='1';
			WHEN wr_check =>
				IF (comp ='1') THEN
					stackWrEn <= '1';
				END IF;
			WHEN waiting =>	
				inRegEn <= '1';
			WHEN rd_wait =>
				inRegEn <= '1';
			WHEN rd_stack =>
				IF (LSB = '1' AND comp ='0') THEN
					ptrDec <='1'; 
				ELSIF (LSB = '0' AND comp ='1') THEN
					ptrDec <='1';
				END IF;
			WHEN check	=>
				IF (LSB = '0' AND comp ='1') THEN
					ptrDec <='1';
				END IF;
			WHEN exceptS =>
				exception <='1';
			WHEN OTHERS => 
				ptrInc <='0'; 
				ptrDec <='0'; 
				exception <='0';
				stackWrEn <= '0'; 
				inRegEn <= '0';
		END CASE;
	END PROCESS;
	
	---PROCESS (p_state, call, ret, comp, LSB ) 
	-- BEGIN		
		-- n_state <= normal;
		-- CASE p_state IS
			-- WHEN init =>
				 -- IF ( call = '1') THEN
						-- n_state <= wr_stack;
				 -- ELSE
						-- n_state <= init;
				 -- END IF;
			-- WHEN normal =>
				 -- IF (ret = '1') THEN
					-- n_state <= ret_s;
				 -- ELSIF (LSB = '0') THEN
					-- IF ( call = '1' and comp = '1') THEN
						-- n_state <= recursive;
					-- ELSIF ( call = '1' and comp = '0') THEN
						-- n_state <= wr_stack;
					-- ELSE
						-- n_state <= normal;
					-- END IF;
				 -- ELSE
					-- n_state <= recursive;
				-- END IF;
			-- WHEN wr_stack =>
				-- n_state <= normal;
			-- WHEN ptr_dec =>
				-- IF (LSB = '1' ) THEN
					-- n_state <= check_recursive;
				-- ELSE
					-- n_state <= normal;
				-- END IF;
			-- WHEN ret_s =>
				-- IF (comp = '0') THEN
					-- n_state <= init;
				-- ELSIF (comp = '1' ) THEN
					-- n_state <= ptr_dec;
				-- END IF;
			-- WHEN recursive =>
				-- IF (call = '1' and comp = '0' ) THEN
					-- n_state <= wr_stack;
				-- ELSIF (ret = '1') THEN
					-- n_state <= check_recursive;
				-- ELSE
					-- n_state <= recursive;
				-- END IF;
			-- WHEN check_recursive =>
				-- IF (comp = '0') THEN
					-- n_state <= ret_s;
				-- ELSIF (comp = '1') THEN
					-- n_state <= recursive;
				-- END IF;
			-- WHEN OTHERS => 
				-- n_state <= normal;
		-- END CASE;
	-- END PROCESS;
	
	-- PROCESS (p_state, call, ret, comp, LSB ) 
	-- BEGIN		
		-- ptrInc <='0'; 
		-- ptrDec <='0'; 
		-- exception <='0';
		-- stackWrEn <= '0'; 
		
		-- CASE p_state IS
			-- WHEN init =>
				-- IF (call = '1') THEN
					-- ptrInc <='0'; 
					-- ptrDec <='0'; 
					-- exception <='0';
					-- stackWrEn <= '0'; 
				-- ELSIF (ret = '1') THEN 
					-- exception <='1'; 
				-- END IF;
			-- WHEN normal =>
				-- IF (call = '1') THEN
					-- IF (comp = '1') THEN
						-- ptrInc <='0'; 
						-- ptrDec <='0'; 
						-- exception <='0';
						-- stackWrEn <= '1';						
					-- ELSE 
						-- ptrInc <='1'; 
						-- ptrDec <='0'; 
						-- exception <='0'; 
					-- END IF;
				-- END IF;
			-- WHEN ret_s =>
				
			-- WHEN ptr_dec =>
				-- IF (comp = '1') THEN
						-- ptrInc <='0'; 
						-- ptrDec <='1'; 
						-- exception <='0'; 
					-- ELSE 
						-- ptrInc <='0'; 
						-- --ptrdec <='1'; 
						-- exception <='1'; 
					-- END IF;
			-- WHEN wr_stack =>
				-- stackWrEn <= '1';
			-- WHEN recursive =>
				-- IF (call = '1') THEN
					-- IF (comp = '1') THEN
						-- ptrInc <='0'; 
						-- ptrDec <='0'; 
						-- exception <='0'; 
					-- ELSE 
						-- ptrInc <='1'; 
						-- ptrDec <='0'; 
						-- exception <='0'; 
					-- END IF;
				-- END IF;		
			-- WHEN check_recursive =>
					-- IF (comp = '0') THEN
						-- ptrDec <='1';  
					-- END IF;
			-- WHEN OTHERS => 
				-- ptrInc <='0'; 
				-- ptrDec <='0'; 
				-- exception <='0';
				-- stackWrEn <= '0'; 		
		-- END CASE;
	-- END PROCESS;
	
END ctrl;