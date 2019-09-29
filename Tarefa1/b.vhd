library ieee;
use ieee.std_logic_1164.all;

entity b is
	port( x: inout std_logic_vector (7 downto 0);
			
			bar: inout bit_vector (3 downto 0)
	);
end b;

architecture arc of b is
	
	subtype byte is std_logic_vector (7 downto 0);
	
	signal x_byte: byte;
	signal y_byte: std_logic_vector (7 downto 0);
	
	begin
	
	end arc;