clc;
clear all;
close all;

t=-5:0.001:5;
signal_1= t>= 0;
signal_2= t==0;
signal_3= (t>=0).*t;

subplot(3,1,1);
plot(t,signal_1);
xlabel('Time');
ylabel('Amplitude');
title('Unit step');
ylim([-1, 2]);	 

subplot(3,1,2);
plot(t,signal_2);
xlabel('Time');
ylabel('Amplitude');
title('Unit Impluse');
ylim([-1, 2]);	 

subplot(3,1,3);
plot(t,signal_3);
xlabel('Time');
ylabel('Amplitude');
title('Unit ramp');
ylim([-1, 6]);
