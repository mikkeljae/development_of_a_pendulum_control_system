clear all; close all; clc;
M_load = csvread('load_current.csv');
load_time = M_load(:,1);
load_current = M_load(:,2);

M_motor = csvread('motor_current.csv');
motor_time = M_motor(:,1);
motor_current = M_motor(:,2);

figure 
subplot(2,1,1)
plot(motor_time,motor_current)
title('Motor')
%xlabel('Time [S]')
ylabel('Current [A]')
xlim([2e-3 2.25e-3])

subplot(2,1,2)
plot(load_time,load_current)
title('Total Load')
xlabel('Time [S]')
ylabel('Current [A]')
xlim([2e-3 2.25e-3])

%matlab2tikz('sim_currents.tex')



%% CAP PLOT

M_cap = csvread('cap_current.csv');
cap_time = M_cap(:,1);
cap_cera_current = M_cap(:,2);
cap_elec_current = M_cap(:,3);


figure
plot(cap_time,cap_cera_current,cap_time,cap_elec_current)
title('Capacitors')
xlabel('Time [S]')
ylabel('Current [A]')
xlim([4.999e-3 5.025e-3])
legend('Ceramic Capacitors','Electrolytic Capacitors')
matlab2tikz('cap_currents.tex')