LIBRARY ieee;

use ieee.std_logic_1164.all;

ENTITY fsm_mealy IS 
PORT( clk, A : IN STD_LOGIC; 
		X,Y : OUT STD_LOGIC );
END ENTITY;

ARCHITECTURE arq OF fsm_mealy IS

TYPE estado IS(E1, E2, E3, E4);

SIGNAL Z : estado := E1;

BEGIN 
	PROCESS (clk, A, Z)
	BEGIN 
	IF(clk'event AND clk = '1') THEN
		CASE Z IS 
			
			WHEN E1 =>
				X <= '0';
				Y <= '0';
				Z <= E2;
				
			WHEN E2 =>
				X <= '0';
				Y <= '1';
				Z <= E3;
				
			WHEN E3 =>
				IF( A = '1') THEN
					X <= '1';
					Y <= '0';
					Z <= E2;
				ELSE 
					X <= '1';
					Y <= '1';
					Z <= E4;
				END IF;
				
			WHEN E4 =>
				IF( A = '1') THEN
					X <= '1';
					Y <= '1';
					Z <= E4;
				ELSE 
					X <= '0';
					Y <= '0';
					Z <= E1;
				END IF;
			END CASE;
		END IF;
	END PROCESS;
END arq;
				
				
					
		
		
		
		
		
		
		
		
		