LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity seg7_somador is
port(
a,b :in std_logic_vector (3 downto 0);
s :out std_logic_vector (6 downto 0);
cout :out std_logic
);

end seg7_somador;

architecture arq_seg7_somador of seg7_somador is


component soma4b is
PORT (
a,b :in std_logic_vector (3 downto 0);
s :out std_logic_vector (3 downto 0);
cout :out std_logic
);
end component;

component seg7 is
	PORT(
	entrada: in std_logic_vector(3 downto 0);
	s: out std_logic_vector(6 downto 0)
	);

end component;

signal n: std_logic_vector(3 downto 0);

begin

somador: soma4b PORT MAP (
    a => a,
	 b => b,
	 s => n,
	 cout => cout
  );


  seg: seg7 PORT MAP (
    entrada => n,
	 s => s
  );

END arq_seg7_somador;
