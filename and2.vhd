LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY AND2 IS
  PORT (
    A, B : IN std_logic;
    F : OUT std_logic
  );
END ENTITY;

ARCHITECTURE AND2_arch OF AND2 IS

BEGIN

  F <= A AND B;

END ARCHITECTURE AND2_arch;