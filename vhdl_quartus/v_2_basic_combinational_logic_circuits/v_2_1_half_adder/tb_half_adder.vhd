library ieee;
use ieee.std_logic_1164.all;

entity tb_half_adder is
	port(S, C : out std_logic);
end tb_half_adder;

architecture sim of tb_half_adder is

component half_adder
	port(a, b : in std_logic; 
		  s, c : out std_logic);
end component;

signal a,b : std_logic;
begin
	A<= '0', '1' after 20 ns, '0' after 40 ns;	
	B<= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns;
	
	U0 : half_adder port map(a=>A, b=>B, s=>S, c=>C );
end; 
