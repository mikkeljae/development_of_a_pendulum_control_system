clear all; close all; clc;

to_tikz = 0;

C1_mic = csvread('TEK0023.CSV',0,3);
C2_mic = csvread('TEK0024.CSV',0,3);
C3_mic = csvread('TEK0025.CSV',0,3);

C1_no = csvread('TEK0026.CSV',0,3);
C2_no = csvread('TEK0027.CSV',0,3);
C3_no = csvread('TEK0028.CSV',0,3);


timeshift = 0;
time_C1 = C1_mic(:,1) + timeshift;
data_C1 = C1_mic(:,2);

time_C2 = C2_mic(:,1) + timeshift;
data_C2 = C2_mic(:,2);

time_C3 = C3_mic(:,1) + timeshift;
data_C3 = C3_mic(:,2);

time_C1_no = C1_no(:,1) + timeshift;
data_C1_no = C1_no(:,2);

time_C2_no = C2_no(:,1) + timeshift;
data_C2_no = C2_no(:,2);

time_C3_no = C3_no(:,1) + timeshift;
data_C3_no = C3_no(:,2);


%time_C4 = C4(:,1) + timeshift;
%data_C4 = C4(:,2);

%plot(time_C1, data_C1,time_C2, data_C2,time_C3, data_C3)
plot(time_C1, data_C1,time_C2, data_C2,time_C3, data_C3,time_C1_no, data_C1_no,time_C2_no, data_C2_no,time_C3_no, data_C3_no)
%time_C1_no, data_C1_no,time_C2_no, data_C2_no,time_C3_no, data_C3_no


title('Startup Sequence')
xlabel('Time [s]')
ylabel('Voltage [V]')

%xlim([0 9e-3])
%ylim([-0.1 7.5])

legend('3.3V','2.5V','VCCIO_{EN}')

% OLD DATA:

C2_o = csvread('C2controller-board2-microzed-startup00000.txt',5,0);
C3_o = csvread('C3controller-board2-microzed-startup00000.txt',5,0);
C4_o = csvread('C4controller-board2-microzed-startup00000.txt',5,0);


timeshift_o = 3e-4;
time_C2_o = C2_o(:,1) + timeshift_o;
data_C2_o = C2_o(:,2);

time_C3_o = C3_o(:,1) + timeshift_o;
data_C3_o = C3_o(:,2);

time_C4_o = C4_o(:,1) + timeshift_o;
data_C4_o = C4_o(:,2);

figure(2)
plot(time_C1, data_C1,time_C2, data_C2,time_C3, data_C3,time_C2_o, data_C2_o,time_C3_o, data_C3_o,time_C4_o, data_C4_o)



if to_tikz == 1
    cleanfigure()
    matlab2tikz('controllerboardv2_startup.tex');
end