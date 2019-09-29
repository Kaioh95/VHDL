library ieee;
use ieee.std_logic_1164.all;

entity calc_8bits is
	port(
		a, b: in std_logic_vector (7 downto 0);
		op: in std_logic;
		
		s: out std_logic_vector (7 downto 0);
		luz1, luz2: out std_logic;
		cout: out std_logic
	);
end calc_8bits;


architecture soma of calc_8bits is

component FA
port(
	a, b, cin: in std_logic;
	s, cout: out std_logic
);
end component;

signal c1, c2, c3, c4, c5, c6, c7: std_logic;

begin
	luz1 <= '1' when op = '0' else '0';
	luz2 <= '1' when op = '1' else '0';
	
	i0: FA port map(a(0), (b(0) xor op), op, s(0), c1);
	i1: FA port map(a(1), (b(1) xor op), c1, s(1), c2);
	i2: FA port map(a(2), (b(2) xor op), c2, s(2), c3);
	i3: FA port map(a(3), (b(3) xor op), c3, s(3), c4);
	i4: FA port map(a(4), (b(4) xor op), c4, s(4), c5);
	i5: FA port map(a(5), (b(5) xor op), c5, s(5), c6);
	i6: FA port map(a(6), (b(6) xor op), c6, s(6), c7);
	i7: FA port map(a(7), (b(7) xor op), c7, s(7), cout);
	
		
end soma;