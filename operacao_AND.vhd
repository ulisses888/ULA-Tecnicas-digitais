LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity operacao_AND IS
PORT (

a,b :in std_logic_vector(3 downto 0);
s :out std_logic_vector (3 downto 0)
);

end operacao_AND;
architecture arq_operacao_AND of operacao_AND is
begin

s(0) <= a(0) and b(0);
s(1) <= a(1) and b(1);
s(2) <= a(2) and b(2);
s(3) <= a(3) and b(3);

end arq_operacao_AND;