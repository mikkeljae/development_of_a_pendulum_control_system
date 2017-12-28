----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2017 03:01:27 PM
-- Design Name: 
-- Module Name: cart_counter - Behavioral
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
    Port ( clk : in std_logic;
           dir : out std_logic;
           cal : out std_logic;
           A   : in std_logic;
           B    : in std_logic;
           Z    : in std_logic;
           pos : out std_logic_vector (31 downto 0);
           emend : in std_logic);
end cart_counter;

architecture Behavioral of cart_counter is

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

signal tick_i, dir_i, emend_i, cal_i, last_tick_i : std_logic := '0';
signal A_i, B_i, Z_i, I_i : std_logic := '0';

signal pos_i, next_pos_i : unsigned(31 downto 0);

type state_type is (st1_idle, st2_cw, st3_ccw, st4_cal);
signal state, next_state : state_type;

begin
    
    A_i <= A;
    B_i <= B;
    Z_i <= Z;
    cal <= cal_i;
    dir <= dir_i; 
    pos <= std_logic_vector(pos_i);
    
    SYNC_PROC: process (clk)
    begin
        if rising_edge(clk) then
            if emend = '0' then
                pos_i <= (others => '0');
                state <= st1_idle;
                cal_i <= '1';
            else
                last_tick_i <= tick_i;
                state <= next_state;
                pos_i <= next_pos_i;
            end if;
        end if;
    end process;

    OUTPUT_DECODE: process (state)
    begin        
        if state = st1_idle then
            next_pos_i <= pos_i;
        end if;
        if state = st2_cw then
            next_pos_i <= pos_i + 1;
        end if;
        if state = st3_ccw then
            next_pos_i <= pos_i - 1;
        end if;
        if state = st4_cal then
            --cal_i <= '1';
        end if;      
    end process;

   NEXT_STATE_DECODE: process (state, tick_i)
   begin
      next_state <= state;
      case (state) is
         when st1_idle =>
            if tick_i = '1' then
                if last_tick_i = '0' then
                    if dir_i = '0' then
                        next_state <= st2_cw;
                    else
                        next_state <= st3_ccw;
                    end if;
                end if;
            end if;
            if emend = '0' then
                next_state <= st4_cal;
            end if;
         when st2_cw =>
            next_state <= st1_idle;
         when st3_ccw =>
            next_state <= st1_idle;
         when st4_cal =>
            next_state <= st1_idle;
         when others =>
            next_state <= st1_idle;
      end case;
   end process;

incr_quad_inst: incremental_quadrature
    port map(
        clk => clk,
        A => A_i,
        B => B_i,
        Z => Z_i,
        D => dir_i,
        T => tick_i,
        I => I_i
    );

end Behavioral;
