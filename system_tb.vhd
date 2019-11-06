LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY SYSTEM_M_tb IS
END SYSTEM_M_tb;

ARCHITECTURE SYSTEM_M_tb_arch OF SYSTEM_M_tb IS
  COMPONENT SYSTEM_M IS
    PORT (
      A, B, C : IN std_logic;
      F : OUT std_logic
    );
  END COMPONENT;

  -- Inputs
  SIGNAL A : std_logic := '0';
  SIGNAL B : std_logic := '0';
  SIGNAL C : std_logic := '0';

  -- OUTPUTS
  SIGNAL F : std_logic;

BEGIN
  uut : SYSTEM_M PORT MAP(
    A => A,
    B => B,
    C => C,
    F => F
  );
  stim_proc : PROCESS
  BEGIN
    WAIT FOR 100 ns;
    A <= '0';
    B <= '0';
    C <= '0';
    WAIT FOR 10 ns;
    A <= '0';
    B <= '0';
    C <= '1';
    WAIT FOR 10 ns;
    A <= '0';
    B <= '1';
    C <= '0';
    WAIT FOR 10 ns;
    A <= '0';
    B <= '1';
    C <= '1';
    WAIT FOR 10 ns;
    A <= '1';
    B <= '0';
    C <= '0';
    WAIT FOR 10 ns;
    A <= '1';
    B <= '0';
    C <= '1';
    WAIT FOR 10 ns;
    A <= '1';
    B <= '1';
    C <= '0';
    WAIT FOR 10 ns;
    A <= '1';
    B <= '1';
    C <= '1';
    WAIT FOR 100 ns;
  END PROCESS;
END;