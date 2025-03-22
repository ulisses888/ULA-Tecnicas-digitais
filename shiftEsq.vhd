LIBRARY IEEE;
use IEEE.std_logic_1164.all;

Entity shiftEsq is
PORT (

a,b :in std_logic_vector (3 downto 0);
saidaShift :out std_logic_vector (3 downto 0)
);

end shiftEsq;
architecture arq_shiftEsq of shiftEsq is

begin

	 saidaShift(0) <= '0' WHEN B(0) = '1' ELSE A(0);
    saidaShift(1) <= A(0) WHEN B(0) = '1' ELSE A(1);
    saidaShift(2) <= A(1) WHEN B(0) = '1' ELSE A(2);
    saidaShift(3) <= A(2) WHEN B(0) = '1' ELSE A(3);

end arq_shiftEsq;