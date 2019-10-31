LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY trava_com_3_luzes IS
PORT(
	clk, BT: IN STD_LOGIC;
	X: OUT STD_LOGIC;
	luz: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END;

ARCHITECTURE arq OF trava_com_3_luzes is 

CONSTANT LUIZ_1: STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
CONSTANT LUIZ_2: STD_LOGIC_VECTOR(2 DOWNTO 0) := "100";
CONSTANT LUIZ_3: STD_LOGIC_VECTOR(2 DOWNTO 0) := "010";
CONSTANT ABRE  : STD_LOGIC_VECTOR(2 DOWNTO 0) := "001";


SIGNAL Y : STD_LOGIC_VECTOR(2 DOWNTO 0) := LUIZ_1;

BEGIN 
	PROCESS(clk, BT, Y)
	BEGIN
		IF(clk'event AND clk='1') THEN
			CASE Y IS 
                WHEN LUIZ_1 =>
                    IF( BT = '1') THEN
                            Y <= LUIZ_2;
                    END IF;
                    
                WHEN LUIZ_2 =>
                    IF( BT = '1') THEN
                        Y <= LUIZ_3;
                    END IF;
                    
                WHEN LUIZ_3 =>
                    IF( BT = '1') THEN
                        Y <= ABRE;
                    END IF;
                    
                WHEN OTHERS =>
                    Y <= LUIZ_1;
            END CASE;

            IF(Y = ABRE) THEN
                X <= '1';
            ELSE
                X <= '0';
            END IF;
            luz <= Y;
        END IF;
	END PROCESS;
END arq;