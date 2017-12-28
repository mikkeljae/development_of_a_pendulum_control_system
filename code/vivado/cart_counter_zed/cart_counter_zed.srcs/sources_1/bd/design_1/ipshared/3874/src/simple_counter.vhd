----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2017 09:37:28 AM
-- Design Name: 
-- Module Name: simple_counter - Behavioral
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

entity cart_counter is
    port (
        clk : in std_logic;
        A : in std_logic;
        B : in std_logic;
        Z : in std_logic;
        emend : in std_logic;
        cal : out std_logic;
        dir : out std_logic;
        pos : out std_logic_vector (31 downto 0)
    );
end cart_counter;

architecture Behavioral of cart_counter is

signal counter_i, next_counter_i : unsigned(31 downto 0) := (others => '0');
signal last_t : std_logic := '0';

    component incremental_quadrature is
        port(
            clk : in std_logic;
            A : in std_logic;
            B : in std_logic;
            Z : in std_logic;
            D : out std_logic := '0';
            T : out std_logic := '0';
            I : out std_logic := '0'
        );
    end component;

type state_type is (st1_idle, st2_cw, st3_ccw);
signal state, next_state : state_type := st1_idle;


signal Z_i, D_i, T_i, last_T_i, I_i, cal_i : std_logic := '0';

begin
    
    dir <= D_i;
    cal <= cal_i;
    
    incr_quad_inst : incremental_quadrature
        port map(
            clk => clk,
            A => A,
            B => B,
            Z => Z_i,
            D => D_i,
            T => T_i,
            I => I_i
        ); 
    
    pos <= std_logic_vector(counter_i);
    
    process(clk)
        begin
            if rising_edge(clk) then
                if emend = '0' then
                    counter_i <= (others => '0');
                    state <= st1_idle;
                    cal_i <= '1';
                else
                    state <= next_state;
                    counter_i <= next_counter_i;
                    last_T_i <= T_i;
                end if;
            end if;
        end process;
    
    process(state)
        begin
            if state = st1_idle then 
                next_counter_i <= counter_i;
            end if;
            if state = st2_cw then 
                next_counter_i <= counter_i + 1;
            end if;
            if state = st3_ccw then 
                next_counter_i <= counter_i - 1;
            end if;
        end process;
    
    process(state,T_i)
        begin
            next_state <= state;
            case (state) is
                when st1_idle =>
                    if last_T_i = '0' then
                        if T_i = '1' then                  
                            if D_i = '1' then
                                next_state <= st2_cw;
                            else
                                next_state <= st3_ccw;
                            end if;
                        end if;
                    end if;
                when st2_cw =>
                    next_state <= st1_idle;
                when st3_ccw =>
                    next_state <= st1_idle;
                when others =>
                    next_state <= st1_idle;
                end case;
        end process;

end Behavioral;
