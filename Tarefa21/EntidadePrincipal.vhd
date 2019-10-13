library ieee;
use ieee.std_logic_1164.all;

entity EntidadePrincipal is
	port(
		c: in std_logic_vector(2 downto 0);
		entrada: in std_logic_vector(15 downto 0);
		rw, clk: in std_logic;
		saida: out std_logic_vector(15 downto 0)
	);
end EntidadePrincipal;

architecture arch of EntidadePrincipal is

component Registrador
	port(
		i: in std_logic_vector(15 downto 0);
		clk, clr, rw: in std_logic;
		q: out std_logic_vector(15 downto 0)
	);
end component;

signal s0: std_logic_vector(15 downto 0);
signal s1: std_logic_vector(15 downto 0);
signal s2: std_logic_vector(15 downto 0);
signal s3: std_logic_vector(15 downto 0);
signal s4: std_logic_vector(15 downto 0);
signal s5: std_logic_vector(15 downto 0);
signal s6: std_logic_vector(15 downto 0);
signal s7: std_logic_vector(15 downto 0);

begin
	r0: Registrador port map("0000000000000001", clk, '0', rw, s0);
	r1: Registrador port map("0000000000000010", clk, '0', rw, s1);
	r2: Registrador port map("0000000000000100", clk, '0', rw, s2);
	r3: Registrador port map("0000000000001000", clk, '0', rw, s3);
	r4: Registrador port map("0000000000010000", clk, '0', rw, s4);
	r5: Registrador port map("0000000000100000", clk, '0', rw, s5);
	r6: Registrador port map("0000000001000000", clk, '0', rw, s6);
	r7: Registrador port map("0000000010000000", clk, '0', rw, s7);
	
	process(c)
	begin
		if(c = "000") then
			saida <= s0;
		elsif(c = "001") then
			saida <= s1;
		elsif(c = "010") then
			saida <= s2;
		elsif(c = "011") then
			saida <= s3;
		elsif(c = "100") then
			saida <= s4;
		elsif(c = "101") then
			saida <= s5;
		elsif(c = "110") then
			saida <= s6;
		elsif(c = "111") then
			saida <= s7;
		end if;
	end process;

end arch;