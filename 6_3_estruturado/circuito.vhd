LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY circuito IS
PORT (
	a, b, c, d: IN STD_LOGIC;
	x: OUT STD_LOGIC
);
END circuito;


architecture estruturado of circuito is

component and_2
port(
	a, b: in std_logic;
	c: out std_logic
);
end component;

component or_2
port(
	a, b: in std_logic;
	c: out std_logic
);
end component;

component not_2
port(
	a: in std_logic;
	b: out std_logic
);
end component;

signal fio: std_logic_vector (10 downto 0);

begin
	op0: and_2 port map (a, b, fio(0));
	op1: and_2 port map (b, c, fio(1));
	op2: not_2 port map (fio(1), fio(2));
	op3:  or_2 port map (fio(0), fio(2), fio(3));
	
	op4: not_2 port map (b, fio(4));
	op5: not_2 port map (c, fio(5));
	op6: and_2 port map (fio(4), fio(5), fio(6));
	op7:  or_2 port map (fio(6), c, fio(7));
	op8: not_2 port map (fio(7), fio(8));
	op10:and_2 port map (fio(8), d, fio(9));
	
	op11: or_2 port map (fio(3), fio(9), x);
	
	--x <= ( (a and b) or not(b and c) ) or ( not(( not b and not c ) or c) and d );

end estruturado;