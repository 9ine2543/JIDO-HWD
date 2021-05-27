----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:59 05/24/2021 
-- Design Name: 
-- Module Name:    Instruction_Encoder_3_2 - Behavioral 
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

entity Instruction_Encoder_3_2 is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (1 downto 0));
end Instruction_Encoder_3_2;

architecture Behavioral of Instruction_Encoder_3_2 is
signal sel : std_logic_vector (2 downto 0);
begin
sel <= I1&I2&I3;

with sel select
	O <=	"00" when "001",
			"01" when "101",
			"10" when "110",
			"11" when others;
	
end Behavioral;

