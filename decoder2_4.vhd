LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity decoder2_4 IS
PORT (

a0 :in std_logic;
a1 :in std_logic;
s0 :out std_logic;
s1 :out std_logic;
s2 :out std_logic;
s3 :out std_logic
);

end decoder2_4;
architecture arq_decoder2_4 of decoder2_4 is
begin

s0 <= (not a0) and (not a1);
s1 <= (not a1) and a0;
s2 <= a1 and (not a0);
s3 <= a1 and a0;

end arq_decoder2_4;