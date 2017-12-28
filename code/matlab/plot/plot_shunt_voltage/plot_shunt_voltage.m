clear all; close all; clc;

to_tikz = 1;

C1 = csvread('C1controller-board2-resistordc-current-ina286-gate00001.txt',5,0);
C2 = csvread('C2controller-board2-resistordc-current-ina286-gate00001.txt',5,0);
C3 = csvread('C3controller-board2-resistordc-current-ina286-gate00001.txt',5,0);
C4 = csvread('C4controller-board2-resistordc-current-ina286-gate00001.txt',5,0);

C1_m = csvread('C1controller-board2-motorcurrent-ina286-gate-22k-50d0d00000.txt',5,0);

timeshift = 2e-4;
time_C1_m = C1_m(:,1) + timeshift;
data_C1_m = C1_m(:,2);

time_C1 = C1(:,1) + timeshift;
data_C1 = C1(:,2);

time_C2 = C2(:,1) + timeshift;
data_C2 = C2(:,2);

time_C3 = C3(:,1) + timeshift;
data_C3 = C3(:,2);

time_C4 = C4(:,1) + timeshift;
data_C4 = C4(:,2);


figure(1)
plot(time_C1_m, data_C1_m)

figure(2)
plot(time_C1, data_C1)
% 
 title('Output of Current Sense Amplifier')
 xlabel('Time [s]')
 ylabel('Voltage [V]')
% 
  xlim([0 4e-4])
  ylim([0 0.5])
% 
%  
%  legend('POWER_{EN}','DCDC_{EN}','VCCIO_{EN}')

if to_tikz == 1
    cleanfigure()
    matlab2tikz('controllerboardv2_current_sense.tex');
end