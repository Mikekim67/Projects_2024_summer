library ieee;
use ieee.std_logic_1164.all;

entity mux_2x1 is 
	port(d0, d1, s : in std_logic; 
					 z : out std_logic);
end mux_2x1;

architecture arc of mux_2x1 is
signal z0, z1 : std_logic;
begin 
	z0 <= d0 and (not s);
	z1 <= d1 and s;
	z<= z0 or z1;
end arc;