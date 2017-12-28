clear all; close all; clc;

to_tikz = 0;

C1_s = csvread('C1controller-board2-supplycurrent-gate-22k-50d0d00000.txt',5,0);    %TEMP
C1_m = csvread('C1controller-board2-motorcurrent-gate-22k-50d0d00000.txt',5,0);    %TEMP

C2_s = csvread('C2controller-board2-supplycurrent-gate-22k-50d0d00000.txt',5,0);    %TEMP
C2_m = csvread('C2controller-board2-motorcurrent-gate-22k-50d0d00000.txt',5,0);    %TEMP

C4_supplycurrent = csvread('C4controller-board2-supplycurrent-gate-22k-50d0d00000.txt',5,0);

C4_motorcurrent = csvread('C4controller-board2-motorcurrent-gate-22k-50d0d00000.txt',5,0);

timeshift = 0.7e-4;
phase = -2.27e-5;
time_supplycurrent_C4 = C4_supplycurrent(:,1) + timeshift;
supplycurrent_C4 = C4_supplycurrent(:,2)*-1;

time_motorcurrent_C4 = C4_motorcurrent(:,1) + timeshift + phase;
motorcurrent_C4 = C4_motorcurrent(:,2)*-1;

%TEMP
time_C1_s = C1_s(:,1) + timeshift;
data_C1_s = C1_s(:,2);
%TEMP
time_C1_m = C1_m(:,1) + timeshift + phase;
data_C1_m = C1_m(:,2);
%TEMP
time_C2_s = C2_s(:,1) + timeshift;
data_C2_s = C2_s(:,2);
%TEMP
time_C2_m = C2_m(:,1) + timeshift + phase;
data_C2_m = C2_m(:,2);

figure(1)
plot(time_supplycurrent_C4, supplycurrent_C4, time_motorcurrent_C4, motorcurrent_C4,time_C1_m,data_C1_m,time_C1_s,data_C1_s,time_C2_m,data_C2_m,time_C2_s,data_C2_s)

figure(2)
plot(time_supplycurrent_C4, supplycurrent_C4, time_motorcurrent_C4, motorcurrent_C4)


 title('')
 xlabel('Time [s]')
 ylabel('Current [A]')
% 
  xlim([0 1.4e-4])
  ylim([-5 5])
% 
%  
legend('Supply','Motor')

if to_tikz == 1
    cleanfigure()
    matlab2tikz('controllerboardv2_current_motor_supply.tex');
end