----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2024 01:33:09 PM
-- Design Name: 
-- Module Name: Control_Unit - Behavioral
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

-- Entity definition with inputs and outputs
entity Control_Unit is
    Port (
        clk : in STD_LOGIC;             -- Clock input
        reset : in STD_LOGIC;           -- Reset input
        control_signals : out STD_LOGIC_VECTOR (4 downto 0) -- Output control signals
    );
end Control_Unit;

-- Behavioral architecture with a state machine for instruction processing
architecture Behavioral of Control_Unit is
    -- Define the state type for the FSM
    type State_Type is (ID, EXE, WB);
    signal current_state, next_state : State_Type;  -- Signals to hold current and next state

begin
    -- Process for state transitions
    process (clk, reset)
    begin
        if reset = '1' then
            current_state <= ID;  -- Reset to ID state
        elsif rising_edge(clk) then
            current_state <= next_state;  -- Transition to next state on clock edge
        end if;
    end process;

    -- Process to control outputs and manage state logic
    process (current_state)
    begin
        case current_state is
            when ID =>
                -- Generate control signals for ID stage
                control_signals <= "00001";  -- Example control signal for ID stage
                next_state <= EXE;  -- Move to Execute stage after ID
            when EXE =>
                -- Generate control signals for EXE stage
                control_signals <= "00010";  -- Example control signal for EXE stage
                next_state <= WB;  -- Move to Write Back stage after EXE
            when WB =>
                -- Generate control signals for WB stage
                control_signals <= "00100";  -- Example control signal for WB stage
                next_state <= ID;  -- Loop back to ID for the next instruction cycle
        end case;
    end process;
end Behavioral;
