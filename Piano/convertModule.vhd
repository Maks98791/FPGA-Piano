----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:24:54 05/03/2020 
-- Design Name: 
-- Module Name:    convertModule - Behavioral 
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

entity convertModule is
    Port ( Frequency(3:0) : out  STD_LOGIC; -- wartosc przypisana kodowi klawisza
           IfExtended : in  STD_LOGIC; -- sygnalizuje czy kod z klawiatury by³ poprzedzony kodem rozszerzonym
           ButtonFree : in  STD_LOGIC; -- sygnalizuje zwolnienie klawisza 
           Ready : in  STD_LOGIC; -- sygnalizuje zakoñczenie wysy³ania kodu
           Clock : in  STD_LOGIC; -- zegar
           Code(7:0) : in  STD_LOGIC); -- oœmiobitowy kod klawisza
end convertModule;

architecture Behavioral of convertModule is

begin

convert_process: process ( Code, ButtonFree, IfExtended, Ready, Clock )
begin

      if rising_edge( Clock ) and Ready = '1' then
	  
		case (IfExtended & ButtonFree & Code) is 
			when ( "00" & X"1C" ) => frequency <="0001"; -- C
			when ( "00" & X"1D" ) => frequency <="0010"; -- C#
			when ( "00" & X"1B" ) => frequency <="0011"; -- D
			when ( "00" & X"24" ) => frequency <="0100"; -- D#
			when ( "00" & X"23" ) => frequency <="0101"; -- E
			when ( "00" & X"2B" ) => frequency <="0110"; -- F
			when ( "00" & X"2C" ) => frequency <="0111"; -- F#
			when ( "00" & X"34" ) => frequency <="1000"; -- G
			when ( "00" & X"35" ) => frequency <="1001"; -- G#
			when ( "00" & X"33" ) => frequency <="1010"; -- A
			when ( "00" & X"3C" ) => frequency <="1011"; -- A# 
			when ( "00" & X"3B" ) => frequency <="1100"; -- B 
			when ( "00" & X"42" ) => frequency <="1101"; -- C
			when others => frequency <="0000";
		end case; 
      
      end if;
      
end process;

end Behavioral;

