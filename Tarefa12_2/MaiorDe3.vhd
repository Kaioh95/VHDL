library ieee;
use ieee.std_logic_1164.all;

entity MaiorDe3 is
	port(
		a, b, c: in std_logic_vector (7 downto 0);
		Amaior, Bmaior, Cmaior: out std_logic
	);
end MaiorDe3;

architecture arch of MaiorDe3 is
begin
	Amaior <= '1' when(a>b and a>c) else
				 '1' when(a=b and a>c) else
				 '1' when(a=c and a>b) else
				 '1' when(a=b and a=c) else
				 '0';
	Bmaior <= '1' when(b>a and b>c) else
				 '1' when(b=a and b>c) else
				 '1' when(b=c and b>a) else
				 '1' when(b=a and b=c) else
				 '0';
	cmaior <= '1' when(c>b and c>a) else
				 '1' when(c=a and c>b) else
				 '1' when(c=b and c>a) else
				 '1' when(c=b and c=a) else
				 '0';
	
end arch;