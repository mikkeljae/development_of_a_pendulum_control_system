clear all; close all; clc;
to_tikz = 0;

data = load('0_3w_850mah.csv');

time_min = (0:10:420);
time_min_T = transpose(time_min);


plot(time_min_T,data)
title('Discharge Curve of Li-Ion Battery')
xlabel('Time [Min]')
ylabel('Voltage [V]')

xlim([0 450])
%ylim([2.5 4.5])
ylim([0 4.5])

yticks(2.5:0.5:4.5)

hline = refline([0 3.3]);
hline.Color = 'r';
hline.LineStyle = '--';


if to_tikz == 1
    cleanfigure()
    matlab2tikz('discharge.tex');
    %matlab2tikz( 'discharge.tikz', 'height', '\fheight', 'width', '\fwidth' )
end