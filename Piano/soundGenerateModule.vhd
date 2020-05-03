----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:27 05/03/2020 
-- Design Name: 
-- Module Name:    soundGenerateModule - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity soundGenerateModule is
    Port ( Clock : in  STD_LOGIC;
           ReceivedFrequency : in STD_LOGIC_VECTOR (3 downto 0);
           BeginInfo : out  STD_LOGIC;
           SoundSignal : out  STD_LOGIC_VECTOR (11 downto 0));
end soundGenerateModule;

architecture Behavioral of soundGenerateModule is

begin

-- proces przypisuj�cy warto�� sygna�u do wej�ciowej cz�stotliwo�ci
soundAssign: process()
begin

end process;

-- proces licz�cy zale�nie od obliczonego sygna�u
-- na tej podstawie bedzie generowany d�wi�k podczas jednego taktu zegara
counter: process()
begin

end process;

-- proces pgeneruj�cy d�wi�k
soundGenerator: process()
begin

end process;

end Behavioral;

