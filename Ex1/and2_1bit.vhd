library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity and2_1bit is
	port (A,B: in STD_LOGIC;
	X: out STD_LOGIC);
end and2_1bit;

architecture behaviour of and2_1bit is
	begin
		X <= A and B;
	end behaviour;
