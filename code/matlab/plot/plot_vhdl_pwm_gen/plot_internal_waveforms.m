clear all; close all; clc;

to_tikz = 1;
max_val = 2273;

y = linspace(0,max_val,max_val);
y1 = linspace(max_val,0,max_val);
x = linspace(0,max_val*2*6,max_val*2*6);

y = [y, y1];
y = [y,y,y,y,y,y];

pwm = linspace(0,(max_val*2*6),(max_val*2*6));
top = linspace(0,(max_val*2*6),(max_val*2*6));
comp = 1136;

for v = 1:1:max(x)
    if y(v) > comp 
        pwm(v) = 2000;
    else
        pwm(v) = 0;
    end
    if y(v) == max_val 
        top(v) = 2000;
    else
        top(v) = 0;
    end
    
end




plot(x,y,x,pwm,x,top)


title('Internal Signals')
xlabel('Clocks')
ylabel('Value')

xlim([0 2e4])
ylim([0 3500])

hline = refline([0 comp]);
hline.Color = 'k';
hline.LineStyle = '--';
legend('Counter','PWM','TOP','Compare')

if to_tikz == 1
   cleanfigure();
   matlab2tikz('vhdl_pwm_gen_int.tex'); 
end

