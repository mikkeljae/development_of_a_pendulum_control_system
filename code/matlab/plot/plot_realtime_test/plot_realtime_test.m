clear all; close all; clc;

to_tikz = 1;

timer_test = csvread('TEK0031.CSV',0,3);

real_timeC1 = csvread('TEK0032.CSV',0,3);
real_timeC2 = csvread('TEK0033.CSV',0,3);


timeshift = 3.5e-4;
time_real_time = real_timeC1(:,1) + timeshift;
data_real_time = real_timeC1(:,2);

time_real_time_C2 = real_timeC2(:,1) + timeshift;
data_real_time_C2 = real_timeC2(:,2);



plot(time_real_time, data_real_time,time_real_time_C2,data_real_time_C2)

 title('Runtime of Joint Software Loop')
 xlabel('Time [s]')
 ylabel('Voltage [V]')
 xlim([0 4.5e-4])
 ylim([0 5])
 
legend('Output pin','SPI CLK')

if to_tikz == 1
    cleanfigure()
    matlab2tikz('runtime_joint_software.tex');
end