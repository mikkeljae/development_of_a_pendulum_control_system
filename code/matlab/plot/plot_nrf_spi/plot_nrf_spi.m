clear all; close all; clc;

to_tikz = 1;

C1 = csvread('TEK0000.CSV',0,3);
C2 = csvread('TEK0001.CSV',0,3);
C3 = csvread('TEK0002.CSV',0,3);
C4 = csvread('TEK0003.CSV',0,3);

timeshift = 6.5e-6;
time_C1 = C1(:,1) + timeshift;
data_C1 = C1(:,2);

time_C2 = C2(:,1) + timeshift;
data_C2 = C2(:,2);

time_C3 = C3(:,1) + timeshift;
data_C3 = C3(:,2);

time_C4 = C4(:,1) + timeshift;
data_C4 = C4(:,2);


figure(1)
plot(time_C2, data_C2,time_C1, data_C1,time_C3, data_C3,time_C4, data_C4,'LineWidth',2)

 title('SPI Communication on nRF24')
 xlabel('Time [s]')
 ylabel('Voltage [V]')
% 
  xlim([0 3.5e-5])
 ylim([-1 6])
% 
%  
legend('CLK','SS','MOSI','MISO')

if to_tikz == 1
    cleanfigure()
    matlab2tikz('nrf24_spi.tex');
end