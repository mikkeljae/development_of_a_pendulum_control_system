clear all; close all; clc;

to_tikz = 0;

C1_s = csvread('C1controller-board2-motorcurrent-gate-22k-50d50d00001.txt',5,0);    %TEMP
C1_m = csvread('C1controller-board2-supplycurrent-gate-22k-50d50d00001.txt',5,0);    %TEMP

C2_s = csvread('C2controller-board2-motorcurrent-gate-22k-50d50d00001.txt',5,0);    %TEMP
C2_m = csvread('C2controller-board2-supplycurrent-gate-22k-50d50d00001.txt',5,0);    %TEMP

C3_s = csvread('C3controller-board2-motorcurrent-gate-22k-50d50d00001.txt',5,0);    %TEMP
C3_m = csvread('C3controller-board2-supplycurrent-gate-22k-50d50d00001.txt',5,0);    %TEMP


C4_supplycurrent = csvread('C4controller-board2-supplycurrent-gate-22k-50d50d00001.txt',5,0);
C4_motorcurrent = csvread('C4controller-board2-motorcurrent-gate-22k-50d50d00001.txt',5,0);



timeshift = 0.7e-4;
phase = 10e-6;
time_supplycurrent_C4 = C4_supplycurrent(:,1) + timeshift;
supplycurrent_C4 = C4_supplycurrent(:,2);

time_motorcurrent_C4 = C4_motorcurrent(:,1) + timeshift + phase;
motorcurrent_C4 = C4_motorcurrent(:,2);

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

%TEMP
time_C3_s = C3_s(:,1) + timeshift;
data_C3_s = C3_s(:,2);
%TEMP
time_C3_m = C3_m(:,1) + timeshift + phase;
data_C3_m = C3_m(:,2);


figure(1)
%plot(time_supplycurrent_C4, supplycurrent_C4, time_motorcurrent_C4, motorcurrent_C4,time_C1_m,data_C1_m,time_C1_s,data_C1_s,time_C2_m,data_C2_m,time_C2_s,data_C2_s,time_C3_m,data_C3_m,time_C3_s,data_C3_s)
plot(time_C2_s,data_C2_s,time_C3_s,data_C3_s)


figure(2)
plot(time_supplycurrent_C4, supplycurrent_C4, time_motorcurrent_C4, motorcurrent_C4)

figure(3)
plot(time_C1_s,data_C1_s,time_C2_s,data_C2_s,time_C3_s,data_C3_s)
