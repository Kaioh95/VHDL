library ieee;
use ieee.std_logic_1164.all;

entity ULA is
	port(
		A, B: in std_logic_vector (7 downto 0);
		M, S1, S0: in std_logic;
		Cin: inout std_logic;
		Cout: out std_logic;
		F: out std_logic_vector (7 downto 0)
	);
end ULA;

architecture arch of ULA is

component ComponenteLogico
	port(
		Ai, Bi: in std_logic;
		Mi, S1i, S0i: in std_logic;
		Xi, Yi: out std_logic
	);
end component;

component FA
	port(
		a, b, cin: in std_logic;
		s, cout: out std_logic
	);
end component;

signal x0, y0, c0: std_logic;
signal x1, y1, c1: std_logic;
signal x2, y2, c2: std_logic;
signal x3, y3, c3: std_logic;
signal x4, y4, c4: std_logic;
signal x5, y5, c5: std_logic;
signal x6, y6, c6: std_logic;
signal x7, y7, c7: std_logic;

begin

Cin <= (not M) and (S1 xor S0);

l0: ComponenteLogico port map (a(0), b(0), M, S1, S0, x0, y0);
o0: FA port map (x0, y0, Cin, F(0), c0);

l1: ComponenteLogico port map (a(1), b(1), M, S1, S0, x1, y1);
o1: FA port map (x1, y1, c0, F(1), c1);

l2: ComponenteLogico port map (a(2), b(2), M, S1, S0, x2, y2);
o2: FA port map (x2, y2, C1, F(2), c2);

l3: ComponenteLogico port map (a(3), b(3), M, S1, S0, x3, y3);
o3: FA port map (x3, y3, C2, F(3), c3);

l4: ComponenteLogico port map (a(4), b(4), M, S1, S0, x4, y4);
o4: FA port map (x4, y4, C3, F(4), c4);

l5: ComponenteLogico port map (a(5), b(5), M, S1, S0, x5, y5);
o5: FA port map (x5, y5, C4, F(5), c5);

l6: ComponenteLogico port map (a(6), b(6), M, S1, S0, x6, y6);
o6: FA port map (x6, y6, c5, F(6), c6);

l7: ComponenteLogico port map (a(7), b(7), M, S1, S0, x7, y7);
o7: FA port map (x7, y7, C6, F(7), c7);

cout <= c7 xor c6;
end arch;