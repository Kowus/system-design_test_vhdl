LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY SYSTEM_M IS
  PORT (
    A, B, C : IN std_logic;
    F : OUT std_logic
  );
END ENTITY SYSTEM_M;

ARCHITECTURE SYSTEM_M_arch OF SYSTEM_M IS
  SIGNAL m1, m2, m3, m4 : std_logic;

  -- AND2
  COMPONENT AND2 IS
    PORT (
      A, B : IN std_logic;
      F : OUT std_logic
    );
  END COMPONENT;

  -- OR2
  COMPONENT OR2 IS
    PORT (
      A, B : IN std_logic;
      F : OUT std_logic
    );
  END COMPONENT;

  -- NOR2
  COMPONENT NOR2 IS
    PORT (
      A, B : IN std_logic;
      F : OUT std_logic
    );
  END COMPONENT;
BEGIN
  -- Level 1 [Q,R,S]
  Q : AND2 PORT MAP(A => A, B => B, F => m1);
  R : AND2 PORT MAP(A => A, B => C, F => m2);
  S : NOR2 PORT MAP(A => C, B => B, F => m3);

  -- Level 2 [T]
  T : OR2 PORT MAP(A => m1, B => m2, F => m4);

  -- Level 3 [U]
  U : OR2 PORT MAP(A => m4, B => m3, F => F);
END ARCHITECTURE SYSTEM_M_arch;