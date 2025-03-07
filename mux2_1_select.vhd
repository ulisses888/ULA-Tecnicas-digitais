LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity mux2_1_select IS
PORT (

a :in std_logic;
b :in std_logic;
sel :in std_logic;
s :out std_logic
);

end mux2_1_select;
architecture arq_mux2_1_select of mux2_1_select is
begin

WITH sel SELECT
s <=
	a when '0',
	b when '1',
	'0' when OTHERS;

end arq_mux2_1_select;