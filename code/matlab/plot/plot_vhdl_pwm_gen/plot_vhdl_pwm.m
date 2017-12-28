clear all; close all; clc;

to_tikz = 1;

data1 = csvread('TEK0029.CSV',0,3);
time = data1(:,1) + 1e-4;
C1_data = data1(:,2);

plot(time, C1_data)

title('PWM, external signal')
xlabel('Time [s]')
ylabel('Voltage [V]')

xlim([0 2e-4])
ylim([0 6])




if to_tikz == 1
   cleanfigure();
   matlab2tikz('vhdl_pwm_gen.tex'); 
end