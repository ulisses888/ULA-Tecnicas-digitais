LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity teste IS
PORT (

a :in std_logic;
b :in std_logic;
c :in std_logic;
s :out std_logic
);

end teste;
architecture arq_teste of teste is
begin

s <= not (a and b) or (not (not c));

end arq_teste;