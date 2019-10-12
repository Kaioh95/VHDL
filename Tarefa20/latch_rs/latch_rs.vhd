library ieee;
use ieee.std_logic_1164.all;

entity latch_rs is
	port(
		r, s, clk: in std_logic;
		q, n_q: out std_logic
	);
end latch_rs;

architecture rs of latch_rs is
begin
	process(r, s, clk)
		begin
			if(clk = '1') then
				if(s = '1' and r = '0') then
					q <= '1';
					n_q <= '0';
				elsif(s='0' and r = '1') then
					q <= '0';
					n_q <= '1';
				end if;
			end if;
		end process;
end rs;