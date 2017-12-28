clear all; close all; clc;

format long

fs = 22000;
T_on = 0.5* 1/fs;
V = 24;
L = 0.082e-3;
dI = V/L * T_on
V_ripple = 1;

C_min = dI * T_on/V_ripple

C_chosen = 4* 330e-6;
R = 75;
U = 24;
inrush_current = U/R
tau = C_chosen * R
charge_time = 5*tau
%From datasheet:
ESL = 0.1/(2*pi*fs*330e-6)

%Parasitic inductance
L = 0.5;
r = 1.5e-3;
mu0 = 4*pi*1e-7; %Permebility of free air

Lp = mu0/(2*pi) * L *(log(2*L/r)-1)
Li = mu0/(8*pi)*L

Lwire = Lp + Li

%%Freewheling diode:
R_inrush_relay_coil = 1800;
inrush_relay_max_I  = U/R_inrush_relay_coil

%Maybe same diode shoulde also be used for main relay:
main_relay_max_I= 0.36; 