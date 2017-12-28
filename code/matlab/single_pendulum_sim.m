clear all; close all; clc;
g = 9.82;
l = 0.28;
initialangle1 = pi/2+0.25;  % Initial angle 1
initialangle2 = 0;   % Initial angle 2
runtime = 50;  % Runs simulations for this time

deq1=@(t,x) [x(2); -g/l * sin(x(1))]; % Pendulum equations uncoupled
[t,sol] = ode45(deq1,[0 runtime],[initialangle1 initialangle2]);  % uses a numerical ode solver
sol1 = sol(:,1)'; % takes the transpose for plots

data = csvread('test1',3,1);
data_overflow = data(find(data(:,1)==max(data(:,1)))+1:end,:);
data_overflow(:,1) = data_overflow(:,1)+65535;
data_underflow = data(1:find(data(:,1)==max(data(:,1))),:);

data = [data_underflow ; data_overflow];

figure();
hold on
plot(t+0.108,(sol1/(2*pi))*7200+4600)
scatter(data(:,1)/1000,data(:,2),'.');
axis([0 50 0 7000])


figure
Fs = 720;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 81500;             % Length of signal
Y = fft(data(:,2));
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
axis([0 10 0 1000])



T1 = runtime/1257;
Fs1 = 1/T1
L_1 = 1256
sol1_gain = (sol1/(2*pi))*7200+4600;
Y1 = fft(sol1_gain);
P2_1 = abs(Y1/L_1);
P1_1 = P2_1(1:L_1/2+1);
P1_1(2:end-1) = 2*P1_1(2:end-1);
f1 = Fs1*(0:(L_1/2))/L_1;
hold on
plot(f1,P1_1)