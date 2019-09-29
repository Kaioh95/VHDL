library ieee;
use ieee.std_logic_1164.all;

entity demux_1x4_we is 
	port(
		a: in std_logic;
		s0, s1: in std_logic;
		o0, o1, o2, o3: out std_logic
	);

end demux_1x4_we;

architecture arch of demux_1x4_we is
	begin
		o0 <= a when s0='0' and s1='0' else '0';
		o1 <= a when s0='0' and s1='1' else '0';
		o2 <= a when s0='1' and s1='0' else '0';
		o3 <= a when s0='1' and s1='1' else '0';
	end arch;