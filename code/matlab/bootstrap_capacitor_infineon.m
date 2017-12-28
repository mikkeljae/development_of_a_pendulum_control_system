
%% Infineon article
% http://www.infineon.com/dgdl/Infineon-Using+Monolithci+Voltage+Gate+Drivers-UM-v01_00-EN.pdf?fileId=5546d462584d1d4a01585242c11947b1
clear all; close all; clc;

VCC = 15;               %Supply voltage
V_gemin = 10.5;            %Minimum allowed gate-source voltage;
V_ceon = 3.1;
V_f = 1;              %Bootstrap diode forward voltage drop

V_bs = VCC - V_f - V_gemin - V_ceon

I_qbs = 800e-6       %Bootstrap circuit quiescent current
I_lk = 50e-6;        %Bootstrap circuit leakage current
Q_ls = 20e-9;        %Charge required by the internal level shifter
Q_gate = 160e-9;    %Total gate charge;
I_lkge = 100e-9;    %Switch gate-source leakage current
I_lkdiode = 100e-6;   %Diode leakage current 
I_lkcap = 0;            %Bootstrap capacitor leakage current. Zero if not electrolytic
I_ds =  150e-6;              % Desat diode bias when on
T_hon = 100e-6;


test = Q_gate +  Q_ls
Q_tot = test + (I_lkge + I_qbs + I_lk + I_lkdiode + I_lkcap + I_ds)*T_hon

C_boot = Q_tot / V_bs
