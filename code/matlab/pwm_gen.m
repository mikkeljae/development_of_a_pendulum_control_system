clear all; close all; clc;

low_limit = 0;
f_microzed = 100e6;
f_pwm = 22e3;

high_limit_zed = f_microzed/(f_pwm*2)

r = high_limit_zed - low_limit;
D = 0.5;
switching_limit = (1 - D)*r
 


%%ZYBO

low_limit = 0;
f_zybo = 125e6;
f_pwm = 22e3;

high_limit = low_limit + f_zybo/(f_pwm*2)

r = high_limit - low_limit;
D = 0.1;
switching_limit = (1 - D)*r

% 
% % LED PWM ZYBO
% 
% low_limit = 0;
% f_zybo = 125e6;
% f_pwm = 1e3;
% high_limit = low_limit + f_zybo/(f_pwm*2)
% 
% r = high_limit - low_limit;
% D = 0.2;
% switching_limit = (1 - D)*r
% 
% % LED PWM Microzed
% 
% low_limit = 0;
% f_zybo = 100e6;
% f_pwm = 1e3;
% high_limit = low_limit + f_zybo/(f_pwm*2)
% 
% r = high_limit - low_limit;
% D = 1;
% switching_limit = (1 - D)*r
%   
% 
