clc;
clear all;
close all;

x = [1, 2, 3, 4];
h = [2 3 4 4];
y = zeros(1,length(x) + length(h)-1);

for n = 1:length(y)
    for k = 1:length(h)
        if n-k+1>0 && n-k+1 <= length(x)
            y(n) = y(n)+h(k)*x(n-k+1);
        end
    end
end

subplot(3,1,1);
stem(x);
title('Input Signal');

subplot(3,1,2);
stem(h);
title('Impulse Response Signal');

subplot(3,1,3);
stem(y);
title('Convolution');