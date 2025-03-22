LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity mux8_1_select IS
PORT (

a,b,c,d,e,f,g,h:in std_logic_vector(3 downto 0);
sel :in std_logic_vector(2 downto 0);
s :out std_logic_vector(3 downto 0)
);

end mux8_1_select;
architecture arq_mux8_1_select of mux8_1_select is
begin

with sel select
	s <=
	a when "000",
	b when "001",
	c when "010",
	d when "011",
	e when "100",
	f when "101",
	g when "110",
	h when "111",
	"0000" when OTHERS;

end arq_mux8_1_select;