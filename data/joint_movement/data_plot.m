clc;clear;close all;
to_tikz = 1;

data = csvread('error_free/test1',3,1);

data_overflow = data(find(data(:,1)==max(data(:,1)))+1:end,:);
data_overflow(:,1) = data_overflow(:,1)+65535;
data_underflow = data(1:find(data(:,1)==max(data(:,1))),:);

data = [data_underflow ; data_overflow];

figure();
scatter(data(:,1),data(:,2),'.');
xlabel('Time [us]')
ylabel('Angle [ticks]')
title('Joint Angle Transmission')
  xlim([6e4 10e4])
  ylim([4000 5200])
 if to_tikz == 1
    matlab2tikz('joint_angle_measured_full.tex');
 end
 
 
 figure();
scatter(data(:,1),data(:,2),'.');
xlabel('Time [us]')
ylabel('Angle [ticks]')
title('Joint Angle Transmission')
xlim([3e3 4.4e3])
ylim([2500 7000])

 if to_tikz == 1
    matlab2tikz('joint_angle_measured_zoom.tex');
 end
 



% 
% figure();
% scatter(data(:,1),zeros(size(data(:,1))),'filled','LineWidth',100)
% xlim([1.51*10^4 1.518*10^4])
% ylim([-0.1 0.2])
% yticks([0])
% xticks([1.51*10^4 1.512*10^4 1.514*10^4 1.516*10^4 1.518*10^4])
% title('Received Packets')
% xlabel('Time [us]')
% 
% 
% figure();
% scatter(data(:,1),ones(size(data(:,1))),'.')
% if to_tikz == 1
%    matlab2tikz('received_packets.tex');
% end
% 
% %figure
% %scatter(data(:,1),zeros(size(data(:,1))),'.')
