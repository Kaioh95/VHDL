library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity po is
	port(clk, tot_ld, tot_clr : in std_logic;
	s, a: in std_logic_vector (7 downto 0);
	tot_lt_s, n_troco: out std_logic);
end po;

architecture arch of po is
signal tot_saida: std_logic_vector (7 downto 0) := a;

begin
	process(clk, tot_ld, tot_clr, tot_saida)
	variable tot_soma: std_logic_vector (7 downto 0);
	begin
		if(clk'event and clk = '1') then
			if(tot_ld = '1') then
				tot_soma := tot_saida + a;
				tot_saida <= tot_soma;
			end if;
			if(tot_clr = '1') then
				tot_saida <= "00000000";
			end if;
		end if;
		
		if(tot_saida > s) then
			tot_lt_s <= '0';
			n_troco <= '0';
		elsif(tot_saida < s) then
			tot_lt_s <= '1';
			n_troco <= '0';
		elsif(tot_saida = s) then
			tot_lt_s <= '0';
			n_troco <= '1';
		end if;
		end process;
end arch;