clear all; close all; clc;

to_tikz = 0;

C1_mic = csvread('test5.csv',3,0);

time = C1_mic(:,2)* 10^(-3);
data = C1_mic(:,3);

plot(time, data)

xlim([0 35])
ylim([-500 1500])

figure(1)
scatter(time,data,'.')