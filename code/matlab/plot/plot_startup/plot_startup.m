clear all; close all; clc;

to_tikz = 0;


C1 = csvread('C1controller-board2-microzed-startup00000.txt',5,0);
C2 = csvread('C2controller-board2-microzed-startup00000.txt',5,0);
C3 = csvread('C3controller-board2-microzed-startup00000.txt',5,0);
C4 = csvread('C4controller-board2-microzed-startup00000.txt',5,0);


timeshift = 5e-3;
time_C1 = C1(:,1) + timeshift;
data_C1 = C1(:,2);

time_C2 = C2(:,1) + timeshift;
data_C2 = C2(:,2);

time_C3 = C3(:,1) + timeshift;
data_C3 = C3(:,2);

time_C4 = C4(:,1) + timeshift;
data_C4 = C4(:,2);

plot(time_C1, data_C1,time_C2, data_C2,time_C3, data_C3,time_C4, data_C4)
title('Startup Sequence')
xlabel('Time [s]')
ylabel('Voltage [V]')

%xlim([0 9e-3])
%ylim([-0.1 7.5])

legend('5V','3.3V','2.5V','VCCIO_{EN}')

if to_tikz == 1
    cleanfigure()
    matlab2tikz('controllerboardv2_startup.tex');
end