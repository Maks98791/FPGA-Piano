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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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

signal FrequencyValue : integer; -- czestotliwosc dzwieku
signal Cnt : STD_LOGIC;
signal Data : UNSIGNED (4 downto 0) := X"0"&'0'; -- wartosc sygnalu (5 bitow)
signal Counter : UNSIGNED (11 downto 0) := X"000"; 

begin

-- proces przypisuj¹cy czestotliwosc sygna³u w zaleznosci
-- od otrzymanego kodu klawisza. Czestotliwosc syngalu od c3 do c4
soundAssign: process(ReceivedFrequency, FrequencyValue)
begin
	case ReceivedFrequency is
		when "0001" => FrequencyValue <=1494; 
		when "0010" => FrequencyValue <=1409; 
		when "0011" => FrequencyValue <=1330; 
		when "0100" => FrequencyValue <=1255; 
		when "0101" => FrequencyValue <=1184; 
		when "0110" => FrequencyValue <=1118; 
		when "0111" => FrequencyValue <=1055; 
		when "1000" => FrequencyValue <=996; 
		when "1001" => FrequencyValue <=940; 
		when "1010" => FrequencyValue <=888; 
		when "1011" => FrequencyValue <=838; 
		when "1100" => FrequencyValue <=791; 
		when "1101" => FrequencyValue <=747; 
		when others => FrequencyValue <=0;
	end case; 
end process;

-- proces licz¹cy zale¿nie od obliczonego sygna³u
-- na tej podstawie bedzie generowany dŸwiêk podczas jednego taktu zegara
counterValue: process(Clock, Data)
variable i : natural range 0 to 1494;
begin
	i := 0;
	if(rising_edge(Clock)) then
	Counter <= Counter + 1;
	BeginInfo <= '0';
		if STD_LOGIC_VECTOR(Counter) = FrequencyValue then
			Counter <= X"000";
			Data <= Data + 1;
			BeginInfo <= '1';
		end if;
	end if;
	SoundSignal <= STD_LOGIC_VECTOR(Data)&"0000000";
end process;

-- proces generuj¹cy dŸwiêk - sygnal pilokszta³tny
soundGenerator: process(Cnt)
variable i : integer := 0;
begin
	i := 0;
	if(rising_edge(Cnt)) then
		if(counter = 31) then
			i := 0;
		else
			i := i + 1;
		end if;
	end if;
end process;

end Behavioral;

