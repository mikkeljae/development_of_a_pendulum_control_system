clear all; close all; clc;

w = 55e-3;
l = 45e-3;
h = 105e-6;

t_w = 8e-3;
t_h = h;
t_l = 13e-3;
t_A = t_h*t_w;

rho = 1.7e-8;
R = rho*t_l/t_A
I = 5;

Voltage = R * I 



density = 8960;
V = t_w*t_h*t_l

m = V*density

C = 0.385;

deltaT = 60;
Q = m * C * deltaT

P = R*I^2

s = Q/P
