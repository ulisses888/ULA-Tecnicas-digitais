LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity notA IS
PORT (

a,b :in std_logic_vector(3 downto 0);
s :out std_logic_vector (3 downto 0)
);

end notA;
architecture arq_notA of notA is
begin

s(0) <= not a(0);
s(1) <= not a(1);
s(2) <= not a(2);
s(3) <= not a(3);

end arq_notA;