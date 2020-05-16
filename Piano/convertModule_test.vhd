--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:01:40 05/16/2020
-- Design Name:   
-- Module Name:   
-- Project Name:  Piano
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: convertModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY convertModule_test IS
END convertModule_test;
 
ARCHITECTURE behavior OF convertModule_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT convertModule
    PORT(
         Code : IN  std_logic_vector(7 downto 0);
         IfExtended : IN  std_logic;
         ButtonRelase : IN  std_logic;
         Ready : IN  std_logic;
         Clock : IN  std_logic;
         Frequency : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Code : std_logic_vector(7 downto 0) := (others => '0');
   signal IfExtended : std_logic := '0';
   signal ButtonRelase : std_logic := '0';
   signal Ready : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal Frequency : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: convertModule PORT MAP (
          Code => Code,
          IfExtended => IfExtended,
          ButtonRelase => ButtonRelase,
          Ready => Ready,
          Clock => Clock,
          Frequency => Frequency
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
		type hexarray is array (0 to 16) of STD_LOGIC_VECTOR(7 downto 0);
		variable arrayBytes: hexarray := (X"1C", X"1D", X"1B", X"F0", X"23", X"2B", X"2C", X"34", X"F0", X"4D", X"4D", X"F0", X"4D", X"3A", X"F0", X"3A", X"3A");
	begin		
		for i in arrayBytes'RANGE loop
		Code <= arrayBytes(i);
		wait for 4 * Clock_period;
		end loop;
		wait;
   end process;
   
	rdy_process: process
	begin
		 for i in 0 to 16 loop
		 Ready <= '1';
		 wait for Clock_period;
		 Ready <= '0';
		 wait for Clock_period * 3;
		end loop;
	  wait;
	end process;

END;
