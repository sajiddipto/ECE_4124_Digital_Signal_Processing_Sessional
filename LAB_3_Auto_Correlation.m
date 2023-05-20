x = [1, 4, 1, 4, 2];
n = length(x);
y = zeros(1, 2*n-1);
z = xcorr(x);
for delay = -n+1:n-1
    if delay <0
        y(delay+n) = sum(x(1:n+delay) .* x(-delay+1:n));
    elseif delay == 0
        y(delay+n) = sum(x.^2);
    else
        y(delay+n) = sum(x(delay+1:n) .* x(1:n-delay));
    end
end
subplot(3,1,1)
stem(x);
title('General Function');
subplot(3,1,2)
stem(z);
title('Auto Correlation with Correlation Function');
subplot(3,1,3)
stem(y);
title('Auto Correlation without Correlation Function');