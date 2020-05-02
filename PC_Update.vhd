----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:04 03/23/2020 
-- Design Name: 
-- Module Name:    PC_Update - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_Update is
    Port ( Zero : in STD_LOGIC;
			  Offset : in STD_LOGIC_VECTOR (15 downto 0);
			  Branch : in STD_LOGIC;
			  PC : in  STD_LOGIC_VECTOR (31 downto 0);
           New_PC : out  STD_LOGIC_VECTOR (31 downto 0));
end PC_Update;

architecture Behavioral of PC_Update is
	 signal PC_p4 : STD_LOGIC_VECTOR (31 downto 0);
	 signal depl : STD_LOGIC_VECTOR (31 downto 0);
begin

	PC_p4 <= PC + 4;
	--31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
	---------------------semn------------------ ------------------offset--------------- 0 0
	depl(1 downto 0) <= "00";
	depl(17 downto 2) <= Offset;
	depl(31 downto 18) <= (others => '0') when Offset(15) = '0' else (others => '1');
	
	New_PC <= PC_p4 + depl when Branch = '1' and Zero = '1' else PC_p4;
	
end Behavioral;

