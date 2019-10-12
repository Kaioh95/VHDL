library ieee;
use ieee.std_logic_1164.all;

entity flipflop_jk is
	port(
		j, k, clk: in std_logic;
		q, n_q: out std_logic
	);
end flipflop_jk;

architecture jk of flipflop_jk is

signal sq: std_logic;
signal sn_q: std_logic;

begin
	process(j, k, clk)
		begin
			if(clk'event and clk = '1') then
				if(j = '1' and k = '0') then
					sq <= '1';
					sn_q <= '0';
				elsif(j = '0' and k = '1') then
					sq <= '0';
					sn_q <= '1';
				elsif(j = '1' and k = '1') then
					sq <= not sq;
					sn_q <= not sn_q;
				end if;
			end if;
		end process;
	q <= sq;
	n_q <= sn_q;
end jk;