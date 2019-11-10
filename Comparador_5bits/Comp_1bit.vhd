library ieee;
use ieee.std_logic_1164.all;

entity Comp_1bit is
	port(
		ia, i, ib: in std_logic;
		a, b: in std_logic;
		oa, o, ob: out std_logic
	);
end Comp_1bit;

architecture comp of Comp_1bit is
begin
	oa <= ia or (i and a and (not b));
	ob <= ib or (i and (not a) and b);
	o <= i and (a xnor b);
end comp;