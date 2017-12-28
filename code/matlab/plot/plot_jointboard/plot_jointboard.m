clear all; close all; clc;

to_tikz = 1;

% NO CURRENT LIMIT DATA
C1_nolimit = csvread('C1joint-board-startup-no-limit00000.txt',5,0);
C3_nolimit = csvread('C3joint-board-startup-no-limit00000.txt',5,0);


time_C1_nolimit = C1_nolimit(:,1);
data_C1_nolimit = C1_nolimit(:,2);

time_C3_nolimit = C3_nolimit(:,1);
data_C3_nolimit = C3_nolimit(:,2);


% CURRENT LIMIT DATA
C1_limit = csvread('C1joint-board-startup-w-limit00000.txt',5,0);
C3_limit = csvread('C3joint-board-startup-w-limit00000.txt',5,0);

timeshift = 4e-3;
time_C1_limit = C1_limit(:,1)+timeshift;
data_C1_limit = C1_limit(:,2);

time_C3_limit = C3_limit(:,1)+timeshift;
data_C3_limit = C3_limit(:,2);

figure(1)
[fig1,hLine1,hLine2] = plotyy(time_C1_limit, data_C1_limit, time_C3_limit, data_C3_limit)
title('With Current Limit')

xlabel('Time (s)')

ylabel(fig1(1),'Output Voltage [V]') % left y-axis 
ylabel(fig1(2),'Current Draw [A]') % right y-axis


set(fig1(1),'XLim',[0 8*10^(-3)])
set(fig1(2),'XLim',[0 8*10^(-3)])
set(fig1(1),'YLim',[-0.1 4])
set(fig1(2),'YLim',[-0.025 1])
set(fig1(1),'YTick',0:0.5:4)
set(fig1(2),'YTick',0:0.25:1)

if to_tikz == 1
    cleanfigure();
   matlab2tikz('joint_board_test_fig1.tex'); 
end

figure(2)
[fig2,hLine1,hLine2] = plotyy(time_C1_nolimit, data_C1_nolimit, time_C3_nolimit, data_C3_nolimit)
title('No Current Limit')

xlabel('Time (s)')

ylabel(fig2(1),'Output Voltage [V]') % left y-axis 
ylabel(fig2(2),'Current Draw [A]') % right y-axis


%set(fig2(1),'XLim',[-5*10^(-3) 13*10^(-3)])
%set(fig2(2),'XLim',[-5*10^(-3) 13*10^(-3)])
set(fig2(1),'XLim',[-5*10^(-3) 25*10^(-3)])
set(fig2(2),'XLim',[-5*10^(-3) 25*10^(-3)])
set(fig2(1),'YLim',[-0.1 4])
set(fig2(2),'YLim',[-0.025 1])
set(fig2(1),'YTick',0:0.5:4)
set(fig2(2),'YTick',0:0.25:1)

%TEST!!
figure(3)
plot(time_C1_nolimit,data_C1_nolimit)

if to_tikz == 1
    cleanfigure();
   matlab2tikz('joint_board_test_fig2.tex'); 
end
