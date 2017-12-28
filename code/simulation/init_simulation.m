clear all; close all; clc;

fs = 22000;
ESL = 0.1/(2*pi*fs*330e-6)
C_elec = 4* 330e-6;
C_cera = 4e-6;




%Parasitic inductance
L = 0.5;
r = 1.5e-3;
mu0 = 4*pi*1e-7; %Permebility of free air

Lp = mu0/(2*pi) * L *(log(2*L/r)-1)
Li = mu0/(8*pi)*L

Lwire = Lp + Li