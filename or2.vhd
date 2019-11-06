LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY OR2 IS
  PORT (
    A, B : IN std_logic;
    F : OUT std_logic
  );
END ENTITY OR2;

ARCHITECTURE OR2_arch OF OR2 IS

BEGIN

  F <= A OR B;

END ARCHITECTURE OR2_arch;