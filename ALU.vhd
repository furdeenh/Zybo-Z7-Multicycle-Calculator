----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2024 01:39:47 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port (
        operand1 : in STD_LOGIC_VECTOR (7 downto 0);
        operand2 : in STD_LOGIC_VECTOR (7 downto 0);
        operation : in STD_LOGIC_VECTOR (1 downto 0);
        result : inout STD_LOGIC_VECTOR (7 downto 0);
        zero_flag : out STD_LOGIC
    );
end ALU;

architecture Behavioral of ALU is
begin
    process (operand1, operand2, operation)
    begin
        case operation is
            when "00" =>
                result <= std_logic_vector(unsigned(operand1) + unsigned(operand2));
            when "01" =>
                result <= std_logic_vector(-signed(operand2));
            when others =>
                result <= (others => '0');
        end case;

        if result = "00000000" then
            zero_flag <= '1';
        else
            zero_flag <= '0';
        end if;
    end process;
end Behavioral;



