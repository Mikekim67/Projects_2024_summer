library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
	port(a,b : in std_logic	 ;
			 c : out std_logic);
end nand_gate;

architecture arc of nand_gate is
begin 
	c<= a nand b;
end arc;