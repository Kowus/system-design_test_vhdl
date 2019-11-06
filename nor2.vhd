LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY NOR2 IS
  PORT (
    A, B : IN std_logic;
    F : OUT std_logic
  );
END ENTITY NOR2;

ARCHITECTURE NOR2_arch OF NOR2 IS

BEGIN
  F <= A NOR B;
END NOR2_arch; -- NOR2_arch