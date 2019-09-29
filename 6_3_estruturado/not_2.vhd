library ieee;
use ieee.std_logic_1164.all;

entity not_2 is

port(
	a: in std_logic;
	b: out std_logic);

end not_2;

architecture arch of not_2 is

begin
	b <= not a;
	
end arch;