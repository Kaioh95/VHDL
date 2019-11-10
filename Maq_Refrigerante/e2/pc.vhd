library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity pc is
	port(clk, c, tot_lt_s, n_troco: in std_logic;
	d, troco, tot_ld, tot_clr: out std_logic);
end pc;

architecture arch of pc is
constant init: std_logic_vector (2 downto 0) := "000";
constant waitt: std_logic_vector (2 downto 0) := "001";
constant add: std_logic_vector (2 downto 0) := "010";
constant disp: std_logic_vector (2 downto 0) := "011";
constant dispT: std_logic_vector (2 downto 0) := "100";
signal y: std_logic_vector (2 downto 0) := init;

begin
	process(clk, tot_lt_s, c, n_troco, y)
	begin
	if (clk'event AND clk = '1') then
		case y is
		when init =>
			y <= waitt;
		when waitt =>
			if (c = '1') then
				y <= add;
			elsif (c = '0' and tot_lt_s = '1') then
				y <= waitt;
			elsif ((c = '0' and tot_lt_s = '0') and n_troco = '1') then
				y <= disp;
			elsif ((c = '0' and tot_lt_s = '0') and n_troco = '0') then
				y <= dispT;
			end if;
		when add =>
			y <= waitt;
		when disp =>
			y <= init;
		when others =>
			y <= init;
		end case;
	end if;
	if(y = init) then
		d <= '0';
		tot_clr <= '1';
		tot_ld <= '0';
		troco <= '0';
	elsif(y = waitt) then
		d <= '0';
		tot_clr <= '0';
		tot_ld <= '0';
		troco <= '0';
	elsif(y = add) then
		d <= '0';
		tot_clr <= '0';
		tot_ld <= '1';
		troco <= '0';
	elsif (y = disp) then
		d <= '1';
		tot_clr <= '0';
		tot_ld <= '0';
		troco <= '0';
	elsif (y = dispT) then
		d <= '1';
		tot_clr <= '0';
		tot_ld <= '0';
		troco <= '1';
	end if;
	end process;
end arch;