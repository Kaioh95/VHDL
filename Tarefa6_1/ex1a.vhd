library ieee;
use ieee.std_logic_1164.all;

ENTITY ex1a IS

PORT ( a : IN std_logic_vector(0 to 3);
b : IN std_logic_vector(0 to 3);
s : OUT std_logic_vector(0 to 3));

END;

ARCHITECTURE arq1a OF ex1a IS

BEGIN
s(0) <= (NOT a(0)) AND (NOT b(0));
s(1) <= (NOT a(1)) AND b(1);
s(2) <= a(2) AND (NOT b(2));
s(3) <= NOT (a(3) AND b(3));

END arq1a;