clear all; close all; clc;

to_tikz = 1;


C1 = csvread('C1controller-board2-inrush-charge00000.txt',5,0);

timeshift = +0.3;
time_C1 = C1(:,1) + timeshift;
data_C1 = C1(:,2);

plot(time_C1, data_C1)
% 
title('Charging of Capacitor Bank')
xlabel('Time [s]')
ylabel('Voltage [V]')
 
xlim([0 1.3])
%  ylim([0 3])

 
if to_tikz == 1
    cleanfigure()
    matlab2tikz('controllerboardv2_inrushcurrent.tex');
end