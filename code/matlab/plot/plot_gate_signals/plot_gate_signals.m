clear all; close all; clc;

to_tikz = 0;

C1 = csvread('C1controller-board2-gate-b-load00000.txt',5,0);
C2 = csvread('C2controller-board2-gate-b-load00000.txt',5,0);
C3 = csvread('C3controller-board2-gate-b-load00000.txt',5,0);
C4 = csvread('C4controller-board2-gate-b-load00000.txt',5,0);


timeshift = 0.99e-4;
time_C1 = C1(:,1) + timeshift;
data_C1 = C1(:,2);

time_C2 = C2(:,1) + timeshift;
data_C2 = C2(:,2);

time_C3 = C3(:,1) + timeshift;
data_C3 = C3(:,2);

time_C4 = C4(:,1) + timeshift;
data_C4 = C4(:,2);

plot(time_C1, data_C1,time_C2, data_C2)


title('Gate Signals on Channel B')
xlabel('Time [s]')
ylabel('Voltage [V]')

xlim([0 2e-4])
ylim([0 45])

 
 legend('High side','Low side')

if to_tikz == 1
    cleanfigure()
    matlab2tikz('controllerboardv2_gate_b.tex');
end