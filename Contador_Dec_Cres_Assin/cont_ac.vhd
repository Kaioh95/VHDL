library ieee;
use ieee.std_logic_1164.all;

entity cont_ac is
	port(
		clk: in std_logic;
		q: out std_logic_vector(1 downto 0)
	);
end cont_ac;

architecture arch of cont_ac is
signal s1, s0: std_logic;

begin
	process(clk, s0, s1)
	begin
		if(clk'event and clk = '1') then
			s0 <= not s0;
		end if;
		if(s0'event and s0 = '0') then
			s1 <= not s1;
		end if;
		q(0) <= s0;
		q(1) <= s1;
	end process;
end arch;