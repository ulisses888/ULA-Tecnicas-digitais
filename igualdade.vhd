LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity igualdade IS
PORT (

a,b :in std_logic_vector(3 downto 0);
s :out std_logic
);

end igualdade;
architecture arq_igualdade of igualdade is
begin

s <= '1' when (a = b) else '0';

end arq_igualdade;

