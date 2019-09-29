library ieee;
use ieee.std_logic_1164.all;

entity demux_1x4_ws is 
	port(
		a: in std_logic;
		s: in std_logic_vector (1 downto 0);
		o: out std_logic_vector (3 downto 0)
	);

end demux_1x4_ws;

architecture arch of demux_1x4_ws is
	begin
		with (s) select
			o <= ("000" & a) when "00",
				("00" & a & '0') when "01",
				('0' & a & "00") when "10",
				(a & "000") when "11";
			
	end arch;