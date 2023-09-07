library ieee;
use IEEE.std_logic_1164.all;

entity tb_and2_1bit is
end tb_and2_1bit;

architecture tb of tb_and2_1bit is
	component and2_1bit
	port (A : in std_logic;
	B : in std_logic;
	X : out std_logic);
end component;

signal a_in : std_logic;
signal b_in : std_logic;
signal x_out : std_logic;
begin
	dut : and2_1bit port map (A => a_in, B => b_in, X => x_out);
process

begin
	a_in <= '0';
	b_in <= '0';
	wait for 1 ns;
	assert(x_out='0') report "Erro na entrada 0/0" severity error;
	
	a_in <= '0';
	b_in <= '1';
	wait for 1 ns;
	assert(x_out='0') report "Erro na entrada 0/1" severity error;
	
	a_in <= '1';
	b_in <= '0';
	wait for 1 ns;
	assert(x_out='0') report "Erro na entrada 1/0" severity error;
	
	a_in <= '1';
	b_in <= '1';
	wait for 1 ns;
	assert(x_out='1') report "Erro na entrada 1/1" severity error;

	-- Clear inputs
	a_in <= '0';
	b_in <= '0';
	assert false report "Teste concluido com sucesso." severity note;
	wait;
	
	end process;
end tb;