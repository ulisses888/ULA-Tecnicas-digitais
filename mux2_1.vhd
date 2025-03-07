LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity mux2_1 IS
PORT (

a :in std_logic;
b :in std_logic;
sel :in std_logic;
s :out std_logic
);

end mux2_1;
architecture arq_mux2_1 of mux2_1 is
begin

s <= ((not sel) and a) or (sel and b);

end arq_mux2_1;