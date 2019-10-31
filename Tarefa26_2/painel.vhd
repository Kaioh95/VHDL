LIBRARY IEEE;
USE  IEEE.std_logic_1164.all;

ENTITY painel IS 
Port(
    clk, BT : IN STD_LOGIC;
    X : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) );
END entity;

ARCHITECTURE arq OF painel is 

CONSTANT trip       : STD_LOGIC_VECTOR(1 DOWNTO 0)      := "00";
CONSTANT km_total   : STD_LOGIC_VECTOR(1 DOWNTO 0)      := "01";
CONSTANT consumo_km : STD_LOGIC_VECTOR(1 DOWNTO 0)      := "10";
CONSTANT quant_Km_com_gas: STD_LOGIC_VECTOR(1 DOWNTO 0) := "11";

SIGNAL AUX : STD_LOGIC_VECTOR(1 DOWNTO 0) := km_total;

Begin
    Process(clk, BT, AUX)
    Begin
        IF(clk'event AND clk='1') THEN
            CASE AUX IS 
                WHEN km_total => 
                    IF( BT = '1') THEN
                        AUX <= consumo_km;
                    END IF;

                WHEN consumo_km => 
                    IF( BT = '1') THEN
                        AUX <= quant_km_com_gas;
                    END IF;

                WHEN quant_km_com_gas => 
                    IF( BT = '1') THEN
                        AUX <= trip;
                    END IF;

                WHEN trip => 
                    IF( BT = '1') THEN
                        AUX <= km_total;
                    END IF;
            END CASE;
            X <= AUX;
        END IF;
    END PROCESS;
END arq;