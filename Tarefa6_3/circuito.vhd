LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY circuito IS
PORT (
	a, b, c, d: IN STD_LOGIC;
	x: OUT STD_LOGIC
);
END circuito;

architecture dataflow of circuito is

begin

	x <= ( (a and b) or not(b and c) ) or ( not(( not b and not c ) or c) and d );

end dataflow;