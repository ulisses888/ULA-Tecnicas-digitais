LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity soma4b is
port(
a,b :in std_logic_vector (3 downto 0);
s :out std_logic_vector (3 downto 0);
cout :out std_logic
);

end soma4b;

architecture arq_soma4b of soma4b is

component full_adder is
PORT (
ai,bi,ci :in std_logic;
si,ci1 :out std_logic
);
end component;

component half_adder is
PORT (

a0,b0 :in std_logic;
s0,c1 :out std_logic
);
end component;

signal ca1,ca2,ca3 : std_logic;

begin

M0: half_adder PORT MAP (
    a0 => a(0),
    b0 => b(0),
    s0 => s(0),
    c1 => ca1
  );


  M1: full_adder PORT MAP (
    ai  => a(1),
    bi  => b(1),
    ci  => ca1,
    si  => s(1),
    ci1 => ca2
  );


  M2: full_adder PORT MAP (
    ai  => a(2),
    bi  => b(2),
    ci  => ca2,
    si  => s(2),
    ci1 => ca3
  );


  M3: full_adder PORT MAP (
    ai  => a(3),
    bi  => b(3),
    ci  => ca3,
    si  => s(3),
    ci1 => cout
  );

END arq_soma4b;
