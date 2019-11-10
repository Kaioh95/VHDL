library ieee;
use ieee.std_logic_1164.all;

entity Jure is
	port(
		j0, j1, j2, j3: in std_logic;
		VD, VM: out std_logic
	);
end Jure;

architecture arch of Jure is
begin
	VD <= (j0 and j1) or (j0 and j2) or (j0 and j3) or (j2 and j1) or (j2 and j3) or (j1 and j3);
	
	VM <= (not(j0) and not(j1)) or (not(j0) and not(j2)) or (not(j0) and not(j3)) or 
	(not(j2) and not(j1)) or (not(j2) and not(j3)) or (not(j1) and not(j3));
end arch;