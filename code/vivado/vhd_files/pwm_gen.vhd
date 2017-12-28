library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_gen is
	Port ( 
		clk : in STD_LOGIC;
		comp_value : in STD_LOGIC_VECTOR (11 downto 0);
		dir : in STD_LOGIC;
		top : out STD_LOGIC;
		pwm_a_l: out STD_LOGIC;
		pwm_b_l: out STD_LOGIC		
		);
end pwm_gen;

architecture Behavioral of pwm_gen is

	type state_type is (st1_count_up, st2_top, st3_count_down);
	signal state, next_state : state_type;
  	signal counter : unsigned(11 downto 0) := (others => '0');
	signal next_counter : unsigned(11 downto 0) := (others => '0');
begin

   SYNC_PROC: process (clk)
   begin
      if rising_edge(clk) then
      	 	state <= next_state;
	 	counter <= next_counter;
      end if;
   end process;

   OUTPUT_DECODE: process (state,counter)
   begin
	if (state = st1_count_up) then
		next_counter <= counter + 1;
		top <= '0';
	end if;
	if (state = st2_top) then 
		next_counter <= counter - 1;
		top <= '1';
	end if;
	if (state = st3_count_down) then
		next_counter <= counter - 1;
		top <= '0';
	end if;
	
	if (counter > unsigned(comp_value)) then
		pwm_a_l <= '1';
		pwm_b_l <= '1';
	else
		pwm_a_l <= '0';
		pwm_b_l <= '0';
	end if;	
	
	if( dir = '1') then 
		pwm_b_l <= '0';
	else 
		pwm_a_l <= '0';	
	end if;
	
end process;

   NEXT_STATE_DECODE: process (state,counter)
   begin
      next_state <= state;
      case (state) is
         when st1_count_up =>
            if counter = x"8E1" then		--2273
               next_state <= st2_top;
            end if;
         when st2_top => 
         		next_state <= st3_count_down;
         when st3_count_down =>
            if counter = "000000000001" then
               next_state <= st1_count_up;
         	end if;
         when others =>
            next_state <= st1_count_up;
      end case;
   end process;
end Behavioral;