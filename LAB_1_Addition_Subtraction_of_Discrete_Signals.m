clc;
clear all;
close all;

t=-10:1:20;
signal_1= t>=0 & t<=10;
signal_2= t>=5 & t<=15;

subplot(4,1,1);
stem(t,signal_1);
title('Signal 1');	

subplot(4,1,2);
stem(t,signal_2);
title('Signal 2');

addition = signal_1+signal_2;
subplot(4,1,3);
stem(t,addition);
xlabel('Time');
ylabel('Amplitude');
title('Addition');	

subtraction = signal_1-signal_2;
subplot(4,1,4);
stem(t,subtraction);
xlabel('Time');
ylabel('Amplitude');
title('Subtraction');
