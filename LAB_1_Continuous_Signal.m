clc;
clear all;
close all;

t=0:1:7;
u1 = [ones(1,1).*1 ones(1,2).*2 ones(1,1).*4 ones(1,1).*4 ones(1,2).*2 ones(1,1)];

subplot(2,1,1);
plot(t,u1);
xlabel('Time');
ylabel('Amplitude');
title('First Signal');
xlim=([0, 8]);
ylim([1, 5]);

t=0:1:6;
u2 = [zeros(1,1) ones(1,5) zeros(1,1)];

subplot(2,1,2);
plot(t,u2);
xlabel('Time');
ylabel('Amplitude');
title('Second Signal');
xlim=([0, 7]);
ylim([0, 2]);
