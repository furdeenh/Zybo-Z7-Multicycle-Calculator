----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2024 02:38:37 PM
-- Design Name: 
-- Module Name: Testbench - Behavioral
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

entity ALU_tb is
-- Testbench has no ports
end ALU_tb;

architecture Behavioral of ALU_tb is
    -- Signal declarations
    signal tb_operand1, tb_operand2 : STD_LOGIC_VECTOR(7 downto 0);
    signal tb_operation : STD_LOGIC_VECTOR(1 downto 0);
    signal tb_result : STD_LOGIC_VECTOR(7 downto 0);
    signal tb_zero_flag : STD_LOGIC;

    -- Component instantiation of the ALU
    component ALU
        port(
            operand1 : in STD_LOGIC_VECTOR (7 downto 0);
            operand2 : in STD_LOGIC_VECTOR (7 downto 0);
            operation : in STD_LOGIC_VECTOR (1 downto 0);
            result : out STD_LOGIC_VECTOR (7 downto 0);
            zero_flag : out STD_LOGIC
        );
    end component;

    -- Instantiate the ALU
    begin
        UUT: ALU
            port map(
                operand1 => tb_operand1,
                operand2 => tb_operand2,
                operation => tb_operation,
                result => tb_result,
                zero_flag => tb_zero_flag
            );

    -- Test process
    process
    begin
        -- Test case 1: Addition
        tb_operand1 <= "00000010"; -- Operand1 = 2
        tb_operand2 <= "00000011"; -- Operand2 = 3
        tb_operation <= "00";      -- Operation code for addition
        wait for 10 ns;

        -- Test case 2: Negation
        tb_operand1 <= "00000000"; -- Operand1 = 0 (not used in negation)
        tb_operand2 <= "00000001"; -- Operand2 = 1
        tb_operation <= "01";      -- Operation code for negation
        wait for 10 ns;

        -- Additional test cases can be added here

        wait;  -- Wait forever; this will stop the simulation
    end process;
end Behavioral;

