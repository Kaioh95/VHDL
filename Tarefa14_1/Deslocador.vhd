library ieee;
use ieee.std_logic_1164.all;

entity Deslocador is
	port(
		ENTRA: in std_logic_vector(7 downto 0);
		DESLOCA: in std_logic_vector(1 downto 0);
		SAIDA: out std_logic_vector(7 downto 0)
	);
end Deslocador;

architecture arch of Deslocador is
begin
	with(Desloca) select
		SAIDA <= ENTRA(6 downto 0) & '0' when "01",
					'0' & ENTRA(7 downto 1) when "10",
					ENTRA(7 downto 0) when others;
end arch;