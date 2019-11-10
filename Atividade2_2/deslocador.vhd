library ieee;
use ieee.std_logic_1164.all;

entity deslocador is
	port(
		ENTRA: in std_logic_vector(15 downto 0);
		DESLOCA: in std_logic_vector(1 downto 0);
		SAIDA: out std_logic_vector(15 downto 0)
	);
end deslocador;

architecture arch of deslocador is
begin
	with(DESLOCA) select
		SAIDA <= ENTRA(14 downto 0) & '0' when "01",
					'0' & ENTRA(15 downto 1) when "10",
					ENTRA(15 downto 0) when others;
end arch;