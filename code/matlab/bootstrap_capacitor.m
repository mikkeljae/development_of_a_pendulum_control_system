clear all; close all; clc;

% Components: ISL83202IBZ, IPP045N10N3, Vishay US1M-E3/61T


VDD = 12;               %Supply voltage
fs = 22000;             %Switching
V_gsmin = 8             %Minimum allowed gate-source voltage;
D_min = 0.95;           %Minimum dutycycle
Q_gate = 116e-9;    %Total gate charge;
I_lkgs = 100e-9;    %Switch gate-source leakage current
I_lkcap = 0;            %Bootstrap capacitor leakage current. Zero if not electrolytic
I_qbs = -30e-6;       %Bootstrap circuit quiescent current
I_lk = 1e-6;        %Bootstrap circuit leakage current
Q_ls = 3e-9;        %Charge required by the internal level shifter
I_lkdiode = 10e-9;   %Diode leakage current 
t_on = 1/fs * D_min    %On time
V_f = 1.7;              %Bootstrap diode forward voltage drop


I_Q_test = (I_lkcap + I_lkgs + I_qbs + I_lk + I_lkdiode)*t_on
Q_total = Q_gate + (I_lkcap + I_lkgs + I_qbs + I_lk + I_lkdiode)*t_on + Q_ls

V_boot = VDD - V_f -V_gsmin

C_boot = Q_total / V_boot


%Possible caps:

C_boot1 = 56e-9;
C_boot2 = 68e-9;
C_boot3 = 82e-9;
C_boot4 = 100e-9;

V_boot1 = Q_total / C_boot1
V_boot2 = Q_total / C_boot2
V_boot3 = Q_total / C_boot3
V_boot4 = Q_total / C_boot4

% If C_4 is chosen

R = 4.7;
max_amp = VDD/R;                       % Calculate from bootstrap resistor 
tau = R*C_boot4;                       % time constant
init_charge_time  = tau *5              %It is usually considered that five time constants are enough to charge a capacitor.


tau_period = R * C_boot;
period_charge_time = 5*tau_period

period= 1/22000
percentage = period_charge_time/period * 100
max_duty = 100- percentage 