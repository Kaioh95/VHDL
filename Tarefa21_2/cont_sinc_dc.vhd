library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity cont_sinc_dc is
	port(
		ud, clear, cnt, clk: in std_logic;
		s: out std_logic_vector(3 downto 0);
		fc: out std_logic
	);
end cont_sinc_dc;

architecture arch of cont_sinc_dc is

signal valor: std_logic_vector(3 downto 0);

begin
	process(ud, clear, cnt, clk, valor)
	begin
		if(clk'event and clk = '1') then
			if(cnt = '1') then
				
				if(ud = '1') then
					valor <= valor - "0001";
					if( ( (valor(3) nor valor(2)) nor (valor(1) nor valor(0)) ) = '1') then
						fc <= '1';
					else
						fc <= '0';
					end if;
				
				else
					valor <= valor + "0001";
					if((valor(3) and valor(2) and valor(1) and valor(0)) = '1') then
						fc <= '1';
					else
						fc <= '0';
					end if;
					
				end if;
			elsif(clear = '1') then
				valor <= "0000";
			end if;
		end if;
		
		s <= valor;
	end process;
	
end arch;