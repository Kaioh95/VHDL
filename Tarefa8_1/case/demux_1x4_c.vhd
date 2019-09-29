library ieee;
use ieee.std_logic_1164.all;

entity demux_1x4_c is 
	port(
		a: in std_logic;
		s: in std_logic_vector (1 downto 0);
		o: out std_logic_vector (3 downto 0)
	);

end demux_1x4_c;

architecture arch of demux_1x4_c is
	begin
		process(a, s) is
		begin
			case(s) is
				when "00" => o <= ("000" & a);
				when "01" => o <= ("00" & a & '0');
				when "10" => o <= ('0' & a & "00");
				when others => o <= (a & "000");
			end case;
		end process;			
	end arch;