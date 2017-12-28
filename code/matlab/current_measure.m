clear all; close all; clc;

I_stall = 80;
V_max_meas = 1;

R = 200e-6;
G = 100;
Vmax = G * I_stall * R


I_max_meas = V_max_meas/(R*G)
 
Ii = 8;
Vi = G *Ii * R



res = 2^12
res_volt = 1/res
res_amp = 50/res
