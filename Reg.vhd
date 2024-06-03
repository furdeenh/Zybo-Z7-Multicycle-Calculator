----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/22/2024 01:39:02 PM
-- Design Name: 
-- Module Name: Reg - Behavioral
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

entity Register_File is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           read_addr1 : in STD_LOGIC_VECTOR (3 downto 0);
           read_addr2 : in STD_LOGIC_VECTOR (3 downto 0);
           write_addr : in STD_LOGIC_VECTOR (3 downto 0);
           write_data : in STD_LOGIC_VECTOR (7 downto 0);
           write_enable : in STD_LOGIC;
           read_data1 : out STD_LOGIC_VECTOR (7 downto 0);
           read_data2 : out STD_LOGIC_VECTOR (7 downto 0)
         );
end Register_File;

architecture Behavioral of Register_File is
    -- Define a 16 x 8-bit register array
    type Reg_Array is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    signal registers : Reg_Array := (others => (others => '0'));

begin
    -- Reading data
    read_data1 <= registers(to_integer(unsigned(read_addr1)));
    read_data2 <= registers(to_integer(unsigned(read_addr2)));

    -- Writing data
    process (clk)
    begin
        if rising_edge(clk) then
            if write_enable = '1' then
                registers(to_integer(unsigned(write_addr))) <= write_data;
            end if;
        end if;
    end process;
end Behavioral;

