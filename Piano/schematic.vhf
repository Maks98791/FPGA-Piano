--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schematic.vhf
-- /___/   /\     Timestamp : 05/16/2020 22:57:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl "E:/Studia/6 semestr/FPGA-Piano/Piano/schematic.vhf" -w "E:/Studia/6 semestr/FPGA-Piano/Piano/schematic.sch"
--Design Name: schematic
--Device: xc9500xl
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schematic is
   port ( Clock       : in    std_logic; 
          PS2_Clk     : in    std_logic; 
          PS2_Data    : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic);
end schematic;

architecture BEHAVIORAL of schematic is
   signal XLXN_1                    : std_logic;
   signal XLXN_2                    : std_logic;
   signal XLXN_3                    : std_logic;
   signal XLXN_4                    : std_logic_vector (3 downto 0);
   signal XLXN_5                    : std_logic_vector (11 downto 0);
   signal XLXN_6                    : std_logic;
   signal XLXN_9                    : std_logic_vector (3 downto 0);
   signal XLXN_10                   : std_logic_vector (3 downto 0);
   signal XLXN_19                   : std_logic_vector (7 downto 0);
   signal XLXI_3_Clk_Sys_openSignal : std_logic;
   component convertModule
      port ( IfExtended   : in    std_logic; 
             ButtonRelase : in    std_logic; 
             Ready        : in    std_logic; 
             Clock        : in    std_logic; 
             Code         : in    std_logic_vector (7 downto 0); 
             Frequency    : out   std_logic_vector (3 downto 0));
   end component;
   
   component soundGenerateModule
      port ( Clock             : in    std_logic; 
             ReceivedFrequency : in    std_logic_vector (3 downto 0); 
             BeginInfo         : out   std_logic; 
             SoundSignal       : out   std_logic_vector (11 downto 0));
   end component;
   
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
begin
   XLXN_9(3 downto 0) <= x"3";
   XLXN_10(3 downto 0) <= x"F";
   XLXI_1 : convertModule
      port map (ButtonRelase=>XLXN_2,
                Clock=>Clock,
                Code(7 downto 0)=>XLXN_19(7 downto 0),
                IfExtended=>XLXN_1,
                Ready=>XLXN_3,
                Frequency(3 downto 0)=>XLXN_4(3 downto 0));
   
   XLXI_2 : soundGenerateModule
      port map (Clock=>Clock,
                ReceivedFrequency(3 downto 0)=>XLXN_4(3 downto 0),
                BeginInfo=>XLXN_6,
                SoundSignal(11 downto 0)=>XLXN_5(11 downto 0));
   
   XLXI_3 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_10(3 downto 0),
                Clk_Sys=>XLXI_3_Clk_Sys_openSignal,
                Clk_50MHz=>Clock,
                Cmd(3 downto 0)=>XLXN_9(3 downto 0),
                DATA(11 downto 0)=>XLXN_5(11 downto 0),
                Reset=>Clock,
                SPI_MISO=>SPI_MISO,
                Start=>XLXN_6,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>open,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_4 : PS2_Kbd
      port map (Clk_Sys=>Clock,
                Clk_50MHz=>Clock,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_19(7 downto 0),
                DO_Rdy=>XLXN_3,
                E0=>XLXN_1,
                F0=>XLXN_2);
   
end BEHAVIORAL;


