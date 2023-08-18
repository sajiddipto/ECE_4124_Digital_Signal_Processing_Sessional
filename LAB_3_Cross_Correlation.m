clc;
clear all;
close all;

x1 = [-3, 2, -1, 1];
x2 = [-1, 0, -3, 2];
n = length(x1);
y = zeros(1, 2*n-1);
z = xcorr(x1, x2);

for delay = -n+1:n-1
    if delay <0
        y(delay+n) = sum(x1(1:n+delay) .* x2(-delay+1:n));
    elseif delay == 0
        y(delay+n) = sum(x1.^2);
    else
        y(delay+n) = sum(x1(delay+1:n) .* x2(1:n-delay));
    end
end

subplot(4,1,1)
stem(x1);
title('General Function 1');

subplot(4,1,2)
stem(x2);
title('General Function 2');

subplot(4,1,3)
stem(z);
title('Cross Correlation with Correlation Function');

subplot(4,1,4)
stem(y);
title('Cross Correlation without Correlation Function');