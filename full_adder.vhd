LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity full_adder IS
PORT (

ai,bi,ci :in std_logic;
si,ci1 :out std_logic
);

end full_adder;
architecture arq_full_adder of full_adder is
begin

si <= ai xor bi xor ci;
ci1 <= (ai and bi) or (ai and ci) or (bi and ci);

end arq_full_adder;