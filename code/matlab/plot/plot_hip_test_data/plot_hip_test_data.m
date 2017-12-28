clear all; close all; clc;

to_tikz = 0;

%data1 = load('C1hbridge00000.dat');
%time = data1(:,1);
%C1_data = data1(:,2);

data2 = load('C2hbridge00000.dat');
time = data2(:,1);
C2_data = data2(:,2);

data3 = load('C3hbridge00000.dat');
time = data3(:,1);
C3_data = data3(:,2);

data4 = load('C4hbridge00000.dat');
time = data4(:,1);
C4_data = data4(:,2);


figure
plot (time,C4_data,time,C2_data,time,C3_data)
title('Motor Driver Signals')
xlabel('Time [S]')
ylabel('Voltage [V]')

legend('LOW-side input signal','HIGH-side gate signal','LOW-side gate signal')
xlim([1.1*10^(-3) 2.8*10^(-3)])
ylim([-2 35])
if to_tikz == 1
    cleanfigure()
    matlab2tikz('test_motor_drive_signals.tex');
    matlab2tikz( 'test.tikz', 'height', '\fheight', 'width', '\fwidth' )
end