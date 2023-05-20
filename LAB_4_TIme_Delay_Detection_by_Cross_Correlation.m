clc;
clear all;
close all;

t = 0:0.01:20;
a_1 = t>=10 & t<=15;
a_2 = t>=12 & t<=15;
signal_1 = a_1 + a_2;
a_3 = t>=5 & t<=10;
a_4 = t>=7 & t<=10;
signal_2 = a_3 + a_4;

[z,delay] = xcorr(signal_1, signal_2);
cross_correlation = z/max(abs(z(:)));

subplot(3, 1, 1);
plot(t, signal_1);
title('Default Signal');

subplot(3, 1, 2);
plot(t, signal_2);
title('Delayed Signal');

subplot(3, 1, 3);
plot(delay*0.01, cross_correlation);
title('Cross Correlation');

maximum = max(cross_correlation);
indexesOfMax = find(cross_correlation == maximum);
find_delay = delay(indexesOfMax);
temp = find_delay*0.01;
display = ['Time Delay is: ', num2str(temp), ' seconds'];
disp(display);
