clear all; close all; clc;


to_tikz = 1;

M_load = csvread('load_current.csv',2,0);
load_time = M_load(:,1);
load_current = M_load(:,2);

supply = csvread('supply_current.csv',2,0);
supply_time = supply(:,1);
supply_current = supply(:,2);


plot(supply_time, supply_current, load_time, load_current)

xlim([9.75e-3 10e-3])
ylim([-4 4])
xlabel('Time [s]')
ylabel('Current [A]')
title('Simulating System Currents')
legend('Supply','Load')

if to_tikz == 1
    cleanfigure()
    matlab2tikz('currents_simul_supp_load.tex');
end