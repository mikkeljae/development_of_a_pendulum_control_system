----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2017 04:13:19 PM
-- Design Name: 
-- Module Name: incremental_quadrature - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity incremental_quadrature is
    Port ( clk : in std_logic;
           A : in std_logic;
           B : in std_logic;
           Z : in std_logic;
           D : out std_logic := '0';
           T : out std_logic := '0';
           I : out std_logic := '0');
end incremental_quadrature;

architecture Behavioral of incremental_quadrature is
    type state_type is (st1_idle, st2_edge, st3_dir, st4_cw, st5_ccw, st6_index);
    signal state, next_state : state_type;

    type phase_type is (p0, p1, p2, p3, p4);
    signal phase : phase_type := p1;
    signal last_phase, next_last_phase : phase_type := p0;
    
    signal D_i : std_logic := '0';
    signal T_i : std_logic := '0';
    signal I_i : std_logic := '0';
    
    signal A_i, B_i, Z_i, last_A_i, last_B_i, last_Z_i : std_logic := '0';
    --signal D_i, T_i, I_i : std_logic;  -- example output signal
   --other outputs
begin
    
    D <= D_i;
    T <= T_i;
    I <= I_i;
   
--Insert the following in the architecture after the begin keyword
   SYNC_PROC: process (clk)
    begin
        if rising_edge(clk) then
            state <= next_state;
            last_phase <= next_last_phase;
            last_A_i <= A_i;
            A_i <= A;
            last_B_i <= B_i;
            B_i <= B;
            last_Z_i <= Z_i;
            Z_i <= Z;
        end if;
   end process;

   --MEALY State-Machine - Outputs based on state and inputs
   OUTPUT_DECODE: process (state, A, B, Z)
   begin
    if state = st1_idle then
        --D_i <= '0';
        T_i <= '0';
        I_i <= '0';
    end if;
      
    if state = st3_dir then
        --D_i <= '0';
        T_i <= '0';
        I_i <= '0';
    end if;

    if state = st4_cw then
        D_i <= '1';
        T_i <= '1';
        I_i <= '0';
    end if;
    
    if state = st5_ccw then
        D_i <= '0';
        T_i <= '1';
        I_i <= '0';    
    end if;
    
    if state = st6_index then
        --D_i <= '0';
        T_i <= '0';
        I_i <= '1';
    end if;
      
   end process;

   NEXT_STATE_DECODE: process (state, A_i, B_i, Z_i, phase, last_phase, next_state)
   begin
      next_state <= state;  
      case (state) is
         when st1_idle =>
            if A_i /= last_A_i then
                next_state <= st2_edge;
            end if;
            if B_i /= last_B_i then
                next_state <= st2_edge;
            end if;
            if Z_i /= last_Z_i then
                next_state <= st2_edge;
            end if;
         when st2_edge =>
            if A = '1' then
                if B = '1' then
                    phase <= p4;
                else
                    phase <= p3;
                end if;
                next_state <= st3_dir;
            else
                if B = '1' then
                    phase <= p1;
                else
                    phase <= p2;
                end if;
                next_state <= st3_dir;
            end if;
            
            if Z = '1' then
                next_state <= st6_index;
            end if;   
         when st3_dir =>
            if last_phase /= p0 then
                if phase = p1 then
                    if last_phase = p4 then
                        next_state <= st5_ccw;
                    end if;
                    if last_phase = p2 then
                        next_state <= st4_cw;
                    end if;
                    next_last_phase <= p1;
                end if;
                if phase = p2 then
                    if last_phase = p1 then
                        next_state <= st5_ccw;
                    end if;
                    if last_phase = p3 then
                        next_state <= st4_cw;
                    end if;
                    next_last_phase <= p2;          
                end if;
                if phase = p3 then
                    if last_phase = p2 then
                        next_state <= st5_ccw;
                    end if;
                    if last_phase = p4 then
                        next_state <= st4_cw;
                    end if;
                    next_last_phase <= p3;
                end if;
                if phase = p4 then
                    if last_phase = p3 then
                        next_state <= st5_ccw;
                    end if;
                    if last_phase = p1 then
                        next_state <= st4_cw;
                    end if;
                    next_last_phase <= p4;
                end if;
            else
                next_last_phase <= phase;
                next_state <= st1_idle;
            end if;                       
         when st4_cw =>
            next_state <= st1_idle;
         when st5_ccw =>
            next_state <= st1_idle;
         when st6_index =>
            next_state <= st1_idle;   
         when others =>
            next_state <= st1_idle;
      end case;
   end process;
end Behavioral;
