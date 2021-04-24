library ieee;
use ieee.std_logic_1164.all;

entity puerta_and is
	generic ( n: integer :=1);
	port(	X,Y,z: in std_logic_vector(n-1 downto 0);
			S: out std_logic_vector(n-1 downto 0));
end puerta_and;

architecture sol of puerta_and is
	begin
		s<=x and y and z;
end sol;