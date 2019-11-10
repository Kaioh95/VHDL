library ieee;
use ieee.std_logic_1164.all;

entity maq_cafe is
port(
	b1, b2, b3, b4, b5, b6, b7, b8: in std_logic;
	k: inout std_logic_vector (2 downto 0);
	A, B, C, D, E, F, G, H: out std_logic
	);
end maq_cafe;

architecture cod_4x8 of maq_cafe is
begin
	
	process(b1, b2, b3, b4, b5, b6, b7, b8) is
	begin
		if(b1 = '1') then
			k <= "001";
		elsif(b2 = '1') then
			k <= "010";
		elsif(b3 = '1') then
			k <= "011";
		elsif(b4 = '1') then
			k <= "100";
		elsif(b5 = '1') then
			k <= "101";
		elsif(b6 = '1') then
			k <= "110";
		elsif(b7 = '1') then
			k <= "111";
		elsif(b8 = '1') then
			k <= "000";
		end if;
	end process;
	
	A <= '1' when k = "001" else '0';
	B <= '1' when k = "010" else '0';
	C <= '1' when k = "011" else '0';
	D <= '1' when k = "100" else '0';
	E <= '1' when k = "101" else '0';
	F <= '1' when k = "110" else '0';
	G <= '1' when k = "111" else '0';
	H <= '1' when k = "000" else '0';

end cod_4x8;