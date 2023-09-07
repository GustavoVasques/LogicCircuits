library ieee;
use IEEE.std_logic_1164.all;

entity multiplexador_2_1 is
	port(
		X: in std_logic;
		S: in std_logic;
		Y: in std_logic;
		M: out std_logic
		);
end multiplexador_2_1;
	
architecture behavior_and1 of multiplexador_2_1 is
	signal and1: std_logic;
	signal and2: std_logic;
	begin	
	and1 <= X and not(S);
	and2 <= S and Y;
	M <= and1 or and2;	
end behavior_and1;

