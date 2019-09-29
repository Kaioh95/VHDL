library ieee;
use ieee.std_logic_1164.all;

entity ex3 is
port(
	a, b: in std_logic;
	c: out std_logic
);
end ex3;

architecture arc of ex3 is
begin
	c <= a Nand b;
end arc;