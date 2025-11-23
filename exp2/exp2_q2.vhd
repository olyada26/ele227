library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp2_q2 is
PORT (
        a    : IN  STD_LOGIC;
        b    : IN  STD_LOGIC;
        c_in : IN  STD_LOGIC;
        sum  : OUT STD_LOGIC;
        c_out: OUT STD_LOGIC
    );
end exp2_q2;

architecture structural of exp2_q2 is
COMPONENT exp2 IS
        PORT (
            x : IN  STD_LOGIC;
            y : IN  STD_LOGIC;
            s : OUT STD_LOGIC;
            c : OUT STD_LOGIC
        );
    END COMPONENT;
SIGNAL s_sum1   : STD_LOGIC;
    SIGNAL s_carry1 : STD_LOGIC;
    SIGNAL s_carry2 : STD_LOGIC;
begin
HA1 : exp2
        PORT MAP (
            x     => a,
            y     => b,
            s     => s_sum1,
            c     => s_carry1
        );
HA2 : exp2
        PORT MAP (
            x     => s_sum1,
            y     => c_in,
            s     => sum,       
            c     => s_carry2
        );
    c_out <= s_carry1 OR s_carry2;

end structural;

