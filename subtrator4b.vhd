LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity subtrator4b is
port(
a,b :in std_logic_vector (3 downto 0);
saidaSubtrator :out std_logic_vector (3 downto 0);
cout :out std_logic
);

end subtrator4b;

architecture arq_subtrator4b of subtrator4b is

component full_adder is
PORT (
ai,bi,ci :in std_logic;
si,ci1 :out std_logic
);
end component;

signal ca1,ca2,ca3 : std_logic;

begin

M0: full_adder PORT MAP (
    ai => a(0),
    bi => not b(0),
	 ci => '1',
    si => saidaSubtrator(0),
    ci1 => ca1
  );


  M1: full_adder PORT MAP (
    ai  => a(1),
    bi  => not b(1),
    ci  => ca1,
    si  => saidaSubtrator(1),
    ci1 => ca2
  );


  M2: full_adder PORT MAP (
    ai  => a(2),
    bi  => not b(2),
    ci  => ca2,
    si  => saidaSubtrator(2),
    ci1 => ca3
  );


  M3: full_adder PORT MAP (
    ai  => a(3),
    bi  => not b(3),
    ci  => ca3,
    si  => saidaSubtrator(3),
    ci1 => cout
  );

END arq_subtrator4b;
