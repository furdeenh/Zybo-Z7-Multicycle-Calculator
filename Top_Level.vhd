----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2024 01:47:41 PM
-- Design Name: 
-- Module Name: Top_Level - Behavioral
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
use IEEE.NUMERIC_STD.ALL;  -- For numeric operations and conversions

-- Entity definition with external interfaces
entity MulticycleCalculator is
    Port (
        clk : in STD_LOGIC;                       -- Clock signal
        reset : in STD_LOGIC;                     -- Reset signal
        start : in STD_LOGIC;                     -- Start processing signal
        output_data : out STD_LOGIC_VECTOR (7 downto 0) -- Output data port for demonstration
    );
end MulticycleCalculator;

-- Architecture declaration integrating all components
architecture Behavioral of MulticycleCalculator is
    -- Internal signals for interconnecting components
    signal control_signals : STD_LOGIC_VECTOR (4 downto 0);
    signal instruction : STD_LOGIC_VECTOR (15 downto 0);
    signal address : STD_LOGIC_VECTOR (4 downto 0);
    signal read_data1, read_data2, write_data, alu_result : STD_LOGIC_VECTOR (7 downto 0);
    signal write_enable, alu_op_done : STD_LOGIC;
    signal operation : STD_LOGIC_VECTOR (1 downto 0);

begin
    -- Instantiate Instruction Memory
    InstMem : entity work.Instruction_Memory
        port map (
            address => address,                  -- Instruction address
            instruction => instruction           -- Output instruction
        );

    -- Instantiate Control Unit
    CtrlUnit : entity work.Control_Unit
        port map (
            clk => clk,
            reset => reset,
            control_signals => control_signals  -- Control signals for other components
        );

    -- Instantiate Register File
    RegFile : entity work.Register_File
        port map (
            clk => clk,
            reset => reset,
            read_addr1 => instruction(7 downto 4),  -- Example slicing, adjust as needed
            read_addr2 => instruction(3 downto 0),
            write_addr => instruction(11 downto 8),
            write_data => alu_result,
            write_enable => write_enable,
            read_data1 => read_data1,
            read_data2 => read_data2
        );

    -- Instantiate ALU
    ALU : entity work.ALU
        port map (
            operand1 => read_data1,
            operand2 => read_data2,
            operation => instruction(15 downto 14), -- Top bits for operation code
            result => alu_result,
            zero_flag => open   -- If not used
        );

    -- Output connection, e.g., showing ALU result
    output_data <= alu_result;

    -- Logic to control the address for instruction fetch
    address <= "00000";  -- Example static address, implement program counter logic as needed

    -- Additional logic for start signal, write enable and other controls based on your design
    process(clk, reset)
    begin
        if reset = '1' then
            -- Reset logic, possibly resetting registers or program counter
            write_enable <= '0';
        elsif rising_edge(clk) then
            if start = '1' then
                -- Example: Start execution logic
                write_enable <= '1';  -- Enable writing back to register file
            else
                write_enable <= '0';
            end if;
        end if;
    end process;

end Behavioral;

