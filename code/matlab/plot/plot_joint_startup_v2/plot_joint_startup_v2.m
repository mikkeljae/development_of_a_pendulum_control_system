clear all; close all; clc;

to_tikz = 1;

% NO CURRENT LIMIT DATA
C1_nolimit = csvread('C2start-current-5rail-joint00000.txt',5,0);
C3_nolimit = csvread('C4start-current-5rail-joint00000.txt',5,0);

timeshift = 4e-3;
time_C1_nolimit = C1_nolimit(:,1)+timeshift;
data_C1_nolimit = C1_nolimit(:,2);

time_C3_nolimit = C3_nolimit(:,1)+timeshift;
data_C3_nolimit = C3_nolimit(:,2);

%plot(time_C1_nolimit, data_C1_nolimit,time_C3_nolimit,data_C3_nolimit)
%plot(time_C3_nolimit,data_C3_nolimit)


figure(2)
[fig2,hLine1,hLine2] = plotyy(time_C1_nolimit, data_C1_nolimit, time_C3_nolimit, data_C3_nolimit)
title('No Current Limit')

xlabel('Time (s)')

ylabel(fig2(1),'Output Voltage [V]') % left y-axis 
ylabel(fig2(2),'Current Draw [A]') % right y-axis


set(fig2(1),'XLim',[0 8*10^(-3)])
set(fig2(2),'XLim',[0 8*10^(-3)])
set(fig2(1),'YLim',[-0.1 6])
set(fig2(2),'YLim',[-0.025 1])
set(fig2(1),'YTick',0:1:6)
set(fig2(2),'YTick',0:0.25:1)


if to_tikz == 1
    cleanfigure();
   matlab2tikz('joint_board_test_fig2.tex'); 
end
