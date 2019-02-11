
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Create overall interface
entity top is
    Port ( clock_125M : in STD_LOGIC;
           switches : in STD_LOGIC_VECTOR (3 downto 0);
           leds : out STD_LOGIC_VECTOR (3 downto 0)
           );
end top;

architecture Behavioral of top is
    -- Define component interface
    component running_leds is
    Port ( clock_125M : in STD_LOGIC;
           frequency : in STD_LOGIC_VECTOR (3 downto 0);
           leds : out STD_LOGIC_VECTOR (3 downto 0)
           );
    end component;
begin

-- Create instance of running_leds module
    running_leds0:running_leds
    port map(
        clock_125M => clock_125M,
        frequency => switches(3 downto 0),
        leds => leds
    );

end Behavioral;
