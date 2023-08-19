**Experiment No:** 03

**Experiment Name:** Study of Auto Correlation & Cross Correlation

**Experiment Date:** 07.05.2023

<br>

**Code:**

**Auto Correlation:**
```
clc;
clear all;
close all;
	 
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
```
<br>

**Cross Correlation:**
```
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
```
<br>

**Output :**

**Auto Correlation:**

![](media/image1.png)

<br>

**Cross Correlation:**

![](media/image2.png)

<br>

**Discussion :** In this experiment, we learned how to use 'xcorr'
function to implement auto correlation and cross correlation in MATLAB.
Also, we implemented auto correlation and cross correlation without
using the 'xcorr' function; hence, we coded manually.

<br>

**Conclusion :** The graphs we got were as expected. The codes worked as
intended and were executed without any errors. So, we can come to a
conclusion that the experiments were done successfully.
