LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity mux4_1 IS
PORT (

a :in bit;
b :in bit;
sel :in bit;
s :out bit
);

end mux4_1;
architecture arq_mux4_1 of mux4_1 is
begin

s <= ((not sel) and a) or (sel and b);

end arq_mux4_1;