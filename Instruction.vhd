----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2024 01:35:37 PM
-- Design Name: 
-- Module Name: Instruction - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

entity Instruction_Memory is
    Port ( address : in STD_LOGIC_VECTOR (4 downto 0);  -- Memory address input
           instruction : out STD_LOGIC_VECTOR (15 downto 0)  -- Instruction output
    );
end Instruction_Memory;

architecture Behavioral of Instruction_Memory is
    -- Define memory array, adjust size as needed
    type Memory_Array is array (0 to 31) of STD_LOGIC_VECTOR(15 downto 0);
    signal memory : Memory_Array := (others => (others => '0'));  -- Memory initialization

begin
    -- Output the instruction at the given address
    instruction <= memory(to_integer(unsigned(address)));
end Behavioral;

