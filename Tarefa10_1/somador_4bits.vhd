library ieee;
use ieee.std_logic_1164.all;

entity somador_4bits is
	port(
		a, b: in std_logic_vector (3 downto 0);
		s: out std_logic_vector (3 downto 0);
		cout: out std_logic
	);
end somador_4bits;

architecture soma of somador_4bits is

component HA
port(
	a, b: in std_logic;
	s, cout: out std_logic
);
end component;

component FA
port(
	a, b, cin: in std_logic;
	s, cout: out std_logic
);
end component;

signal c1, c2, c3: std_logic;

begin
	i0: HA port map(a(0), b(0), s(0), c1);
	i1: FA port map(a(1), b(1), c1, s(1), c2);
	i2: FA port map(a(2), b(2), c2, s(2), c3);
	i3: FA port map(a(3), b(3), c3, s(3), cout);
end soma;