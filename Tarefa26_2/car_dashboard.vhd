library ieee;
use ieee.std_logic_1164.all;

entity car_dashboard is
	port(
		clk, bt: in std_logic;
		data: out std_logic_vector (2 downto 0)
	);
end car_dashboard;

architecture fsm of car_dashboard is

constant trip: std_logic_vector (2 downto 0) := "000";
constant totalKm: std_logic_vector (2 downto 0) := "001";
constant fuelConsumption: std_logic_vector (2 downto 0) := "010";
constant canRunKM: std_logic_vector (2 downto 0) := "011";

constant lockB1: std_logic_vector (2 downto 0) := "100";
constant lockB2: std_logic_vector (2 downto 0) := "101";
constant lockB3: std_logic_vector (2 downto 0) := "110";
constant lockB4: std_logic_vector (2 downto 0) := "111";
signal sig: std_logic_vector (2 downto 0) := totalKm;

begin
		process(clk, bt, sig)
		begin
			if(clk'event and clk = '1') then
				case sig is
				when totalkm =>
					if(bt = '1') then
						sig <= lockB1;
						data <= fuelConsumption;
					else
						data <= totalKm;
					end if;
					
				when lockB1 =>
					if(bt = '0') then
						sig <= fuelConsumption;
					end if;
				
				when fuelConsumption =>
					if(bt = '1') then
						sig <= lockB2;
						data <= canRunKm;
					end if;
				
				when lockB2 =>
					if(bt = '0') then
						sig <= canRunKM;
					end if;
				
				when canRunKm =>
					if(bt = '1') then
						sig <= lockB3;
						data <= trip;
					end if;
				
				when lockB3 =>
					if(bt = '0') then
						sig <= trip;
					end if;
					
				when trip =>
					if(bt = '1') then
						sig <= lockB4;
						data <= totalKm;
					end if;
					
				when lockB4 =>
					if(bt = '0') then
						sig <= totalKm;
					end if;
				
				end case;
			end if;
		end process;

end fsm;