
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_led is
	Port ( 
		clk : 			in STD_LOGIC;
		comp_value : 	in STD_LOGIC_VECTOR(15 downto 0);
		pwm : 			out STD_LOGIC
	);
end pwm_led;

architecture Behavioral of pwm_led is
	type state_type is (st1_count_up, st2_count_down);
	signal state, next_state : state_type;
	signal counter : 		unsigned(15 downto 0) := (others => '0');
	signal next_counter : 	unsigned(15 downto 0) := (others => '0');
	
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
	end if;
	if (state = st2_count_down) then
		next_counter <= counter - 1;
	end if;
	
	if (counter > unsigned(comp_value)) then
		pwm <= '1';
	else
		pwm <= '0';
	end if;	
	
end process;

   NEXT_STATE_DECODE: process (state,counter)
   begin
      next_state <= state;
      case (state) is
         when st1_count_up =>
            if counter = 	x"C350" then		--500000 MicroZed
               next_state <= st2_count_down;
            end if;
         when st2_count_down =>
            if counter = "0000000000000001" then
               next_state <= st1_count_up;
         	end if;
         when others =>
            next_state <= st1_count_up;
      end case;
   end process;

end Behavioral;
