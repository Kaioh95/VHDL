library ieee;
use ieee.std_logic_1164.all;

entity Comp_5bits is
	port(
		a, b: in std_logic_vector (4 downto 0);
		x, y, z: out std_logic
	);
end Comp_5bits;

architecture comps of Comp_5bits is

component Comp_1bit is
	port(
		ia, i, ib: in std_logic;
		a, b: in std_logic;
		oa, o, ob: out std_logic
	);
end component;

signal y3, x3, z3: std_logic;
signal y2, x2, z2: std_logic;
signal y1, x1, z1: std_logic;
signal y0, x0, z0: std_logic;

begin
	c1: Comp_1bit port map ('0', '1', '0', a(4), b(4), y3, x3, z3);
	c2: Comp_1bit port map (y3, x3, z3, a(3), b(3), y2, x2, z2);
	c3: Comp_1bit port map (y2, x2, z2, a(2), b(2), y1, x1, z1);
	c4: Comp_1bit port map (y1, x1, z1, a(1), b(1), y0, x0, z0);
	c5: Comp_1bit port map (y0, x0, z0, a(0), b(0), y, x, z);

end comps;