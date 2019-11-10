library ieee;
use ieee.std_logic_1164.all;

entity cont_a_dc is
	port(
		clk, dc: in std_logic;
		q: out std_logic_vector(1 downto 0)
	);
end cont_a_dc;

architecture arch of cont_a_dc is

component cont_ad
	port(
		clk: in std_logic;
		q: out std_logic_vector(1 downto 0)
	);
end component;

component cont_ac
	port(
		clk: in std_logic;
		q: out std_logic_vector(1 downto 0)
	);
end component;

signal sdecrescente: std_logic_vector(1 downto 0);
signal screscente: std_logic_vector(1 downto 0);

begin
	cd: cont_ad port map(clk, sdecrescente);
	cc: cont_ac port map(clk, screscente);
	
	process(dc)
	begin
		if(dc = '1') then
			q <= screscente;
		else
			q <= sdecrescente;
		end if;
	end process;
end arch;