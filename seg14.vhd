LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY seg14 IS
	PORT(
	entrada: in std_logic_vector(3 downto 0);
	saida1: out std_logic_vector(6 downto 0);
	saida2: out std_logic_vector(6 downto 0)
	);
end seg14;


architecture arq_seg14 of seg14 IS

component seg7 IS
	PORT(
	entrada: in std_logic_vector(3 downto 0);
	s: out std_logic_vector(6 downto 0);
	saida2: out std_logic_vector(3 downto 0)
	);
end component;

signal led1: std_logic_vector(6 downto 0);
signal saidaled1: std_logic_vector(3 downto 0);
signal led2: std_logic_vector(6 downto 0);

begin

M0: seg7 PORT MAP(
	entrada => entrada(3 downto 0),
	s => led1,
	saida2 => saidaled1
);

M1: seg7 PORT MAP(
	entrada => saidaled1,	
	s => led2
);

saida1 <= led1;
saida2 <= led2;

end arq_seg14;