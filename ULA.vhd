LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity ULA is
port(
a,b :in std_logic_vector (3 downto 0);
seletor: in std_logic_vector (2 downto 0);
s1 :out std_logic_vector (6 downto 0);
s2 :out std_logic_vector (6 downto 0);
zero :out std_logic;
overflow: out std_logic;
negativo: out std_logic
);
end ULA;

architecture arq_ULA of ULA is

component soma4b is
PORT (
a,b :in std_logic_vector (3 downto 0);
s :out std_logic_vector (3 downto 0);
cout :out std_logic
);
end component;

component subtrator4b is
port(
a,b :in std_logic_vector (3 downto 0);
saidaSubtrator :out std_logic_vector (3 downto 0);
cout :out std_logic
);
end component;

component shiftEsq is
PORT (
a,b :in std_logic_vector (3 downto 0);
saidaShift :out std_logic_vector (3 downto 0)
);
end component;

component shiftDir is
PORT (
a,b :in std_logic_vector (3 downto 0);
saidaShift :out std_logic_vector (3 downto 0)
);
end component;

component operacao_OR IS
PORT (
a,b :in std_logic_vector(3 downto 0);
s :out std_logic_vector (3 downto 0)
);
end component;

component operacao_AND IS
PORT (
a,b :in std_logic_vector(3 downto 0);
s :out std_logic_vector (3 downto 0)
);
end component;

component notA IS
PORT (
a,b :in std_logic_vector(3 downto 0);
s :out std_logic_vector (3 downto 0)
);
end component;

component igualdade IS
PORT (
a,b :in std_logic_vector(3 downto 0);
s :out std_logic
);
end component;

component seg14_v2 IS
	PORT(
	entrada: in std_logic_vector(3 downto 0);
	s: out std_logic_vector(6 downto 0);
	s2: out std_logic_vector(6 downto 0)
	);
end component;

component mux8_1_select IS
PORT (
a,b,c,d,e,f,g,h:in std_logic_vector(3 downto 0);
sel :in std_logic_vector(2 downto 0);
s :out std_logic_vector(3 downto 0)
);
end component;

signal entrada: std_logic_vector(3 downto 0);
signal resultado_somador, resultado_subtrator, resultado_shiftEsq, resultado_shiftDir, 
       resultado_OR, resultado_AND, resultado_NOT_A, saidaMUX : std_logic_vector(3 downto 0);
signal resultado_igualdade_4bit : std_logic_vector(3 downto 0);
signal coutSomador, coutSubtrator, resultado_igualdade: std_logic;

begin

somador: soma4b port map(a, b, resultado_somador, coutSomador);
subtrator: subtrator4b port map(a, b, resultado_subtrator, coutSubtrator);
shiftEsquerda: shiftEsq port map(a, b, resultado_shiftEsq);
shiftDir_inst: shiftDir port map(a, b, resultado_shiftDir);
operacaoOR: operacao_OR port map(a, b, resultado_OR);
operacaoAND: operacao_AND port map(a, b, resultado_AND);
Anegado: notA port map(a, b, resultado_NOT_A);
operacaoIgualdade: igualdade port map(a, b, resultado_igualdade);

resultado_igualdade_4bit <= (others => resultado_igualdade);

mux8: mux8_1_select port map(
    resultado_somador,
    resultado_subtrator,
    resultado_shiftEsq,
    resultado_shiftDir,
    resultado_AND,
    resultado_OR,
    resultado_NOT_A,
    resultado_igualdade_4bit,
    seletor,
    saidaMUX
);

entrada <= saidaMUX;

seg14_inst: seg14_v2 port map(entrada, s1, s2);

zero <= '1' when saidaMUX = "0000" else '0';
negativo <= saidaMUX(3) when seletor = "001" else '0';
overflow <= coutSomador when seletor = "000" else
            coutSubtrator when seletor = "001" else
            '0';

end architecture arq_ULA;