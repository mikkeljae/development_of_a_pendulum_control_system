

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity pwm_led_full is
  Port ( 
  		clk :		in STD_LOGIC;
  		r_comp :	in STD_LOGIC_VECTOR(15 downto 0);
  		g_comp : 	in STD_LOGIC_VECTOR(15 downto 0);
  		b_comp : 	in STD_LOGIC_VECTOR(15 downto 0);
  		r_pwm :		out STD_LOGIC;
  		g_pwm :		out STD_LOGIC;
		b_pwm :		out STD_LOGIC
  );
end pwm_led_full;

architecture Behavioral of pwm_led_full is
	
	component pwm_led
		port(
			clk : in STD_LOGIC;
			comp_value : STD_LOGIC_VECTOR(15 downto 0);
			pwm : out STD_LOGIC
			);
	end component;
	
	signal clk_i 	: STD_LOGIC;
	signal r_pwm_i 	: STD_LOGIC;
	signal g_pwm_i 	: STD_LOGIC;
	signal b_pwm_i 	: STD_LOGIC;
	signal r_comp_i : STD_LOGIC_VECTOR(15 downto 0);
	signal g_comp_i : STD_LOGIC_VECTOR(15 downto 0);
	signal b_comp_i : STD_LOGIC_VECTOR(15 downto 0);

begin
	clk_i <= clk;
	r_pwm <= r_pwm_i;
	g_pwm <= g_pwm_i;
	b_pwm <= b_pwm_i;
	r_comp_i <= r_comp;	
	g_comp_i <= g_comp;	
	b_comp_i <= b_comp;	

R_LED: pwm_led
	port map(
		clk => clk_i,
		comp_value => r_comp_i,
		pwm => r_pwm_i
	);
	
G_LED: pwm_led
	port map(
		clk => clk_i,
		comp_value => g_comp_i,
		pwm => g_pwm_i
	);	
B_LED: pwm_led
	port map(
		clk => clk_i,
		comp_value => b_comp_i,
		pwm => b_pwm_i
	);	
end Behavioral;