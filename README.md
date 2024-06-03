# Multicycle Calculator

## Introduction & Background

The objective of this lab is to implement a multicycle calculator using VHDL. The calculator supports three instructions: load, add, and negate, each executed over three stages (ID, EXE, WB). This multicycle approach demonstrates the sequencing of instruction execution and inter-stage registers.

## Design Overview

The multicycle calculator design follows a systematic flow for each instruction, executed over three stages. The design is modular, comprising several components:
- **ALU**: Handles arithmetic operations.
- **Control Unit**: Manages the instruction cycle stages.
- **Instruction Register**: Holds the current instruction.
- **Inter-stage Registers**: Store intermediate results between stages.
- **Register File**: Stores operand values and results.

## Instruction Cycle

### Load Instruction:
- **ID**: The instruction word's value is read.
- **EXE**: The value is extended to 8 bits.
- **WB**: The value is stored in the destination register and displayed.

### Add Instruction:
- **ID**: Two operands are read from registers.
- **EXE**: The operands are added.
- **WB**: The result is stored in the destination register and displayed.

### Negate Instruction:
- **ID**: The operand is read.
- **EXE**: The operand is negated.
- **WB**: The result is stored in the destination register and displayed.

The flow of data through the stages is as follows:
- **Instruction Fetch (IF) Stage**: Fetches the instruction from memory.
- **Instruction Decode (ID) Stage**: Decodes the instruction and reads the necessary operands.
- **Execution (EXE) Stage**: Performs the arithmetic operation or extends the value.
- **Write Back (WB) Stage**: Writes the result back to the register file and updates the display.

## Schematic Design

The final gate-level RTL circuit schematic design demonstrates the single-cycle datapath adapted to multicycle execution. The schematic highlights the various components and data paths involved in the execution of load, add, and negate instructions over multiple cycles.

### Key Components:
- **Instruction Register (IR)**: Holds the instruction after it has been fetched from memory.
- **Memory Data Register (MDR)**: Temporarily holds data fetched from memory.
- **Registers A and B**: Temporarily hold the contents of the source registers.
- **ALUOut**: Temporarily holds the result from the ALU.
- **Control Unit**: Manages the state transitions and controls the data flow.

### Control Signals and Data Paths:
- **IorD, MemRead, MemWrite**: Control signals for memory operations.
- **IRWrite, RegDst, RegWrite**: Signals for writing to the instruction register and general-purpose registers.
- **ALUSrcA, ALUSrcB, ALUOp**: Control signals for the ALU inputs and operation selection.
- **MemtoReg**: Determines the source of the data to be written to the register file.

## Source Code Implementation

1. **Instruction Memory (`Instruction.vhd`)**: Stores the calculator instructions to be executed.
2. **Control Unit (`Control_Unit.vhd`)**: Reads the opcode of each instruction and generates control signals.
3. **Arithmetic Logic Unit (`ALU.vhd`)**: Executes operations specified by the instructions.
4. **Registers (`Reg.vhd`)**: Stores intermediate results and operands.
5. **Inter-stage Registers (`inter-stage.vhd`, `interstageReg.vhd`)**: Maintain data integrity between stages.
6. **Test Bench (`Testbench.vhd`)**: Simulates the calculator operation to verify functionality.
7. **Top Level Design (`Top_Level.vhd`)**: Integrates all components into a single unit.

## Testing Methodology

To ensure correctness, we devised a comprehensive testing approach:
- **Testbench**: Simulates the entire calculator operation.
- **Instruction Sequence**: Includes load, add, and negate operations.
- **Expected Output**: Displayed at the WB stage for each instruction.
- **Simulation Results**: Show correct execution of each instruction.

## Conclusion

In this lab, we successfully implemented a multicycle calculator using VHDL, designed to run on a functional Xilinx Zybo Z7 board. The calculator supports load, add, and negate instructions, each executed over three stages (ID, EXE, WB). The design was verified through simulation, demonstrating correct functionality. This project provided valuable experience in designing and testing multicycle processors, emphasizing the importance of inter-stage registers and sequential execution of instructions.
