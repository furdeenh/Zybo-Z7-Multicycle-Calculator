----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2024 01:48:57 PM
-- Design Name: 
-- Module Name: interstageReg - Behavioral
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

entity Interstage_Registers is
    Port ( clk : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (15 downto 0);
           data_out : out STD_LOGIC_VECTOR (15 downto 0);
           load : in STD_LOGIC  -- Signal to load data into the register
         );
end Interstage_Registers;

architecture Behavioral of Interstage_Registers is
    signal internal_data : STD_LOGIC_VECTOR (15 downto 0);
begin
    -- Load data on rising edge of clk if load is enabled
    process (clk)
    begin
        if rising_edge(clk) and load = '1' then
            internal_data <= data_in;
        end if;
    end process;

    data_out <= internal_data;
end Behavioral;

