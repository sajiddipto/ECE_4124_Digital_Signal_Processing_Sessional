**Experiment No:** 04

**Experiment Name:**

1\. Detection of Time Delay Using Cross-Correlation

2\. Determination of Z-Transform

3\. Determination of Zeros & Poles

**Experiment Date:** 14.05.2023

<br>

**Code:**

**Time Delay of Two Signals Using Cross-Correlation:**
```
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
display = ['Time Delay is: ', num2str(temp), 'seconds'];
disp(display);
```
<br>

**Z-Transform:**
```
clc;
clear all;
close all;
	 
syms n z;
x = (1/5)^n + (1/9)^n;
X = ztrans(x, n, z);
disp(X);
```

<br>

**Zeros & Poles:**
```
clc;
clear all;
close all;
	 
zeros = -0.2; 
poles = 0.5*exp(j*2*pi*[-0.2 0.2]');
zplane(zeros,poles);
```
<br>

**Output:**

**Time Delay of Two Signals Using Cross-Correlation:**

![](media/image1.png)

![](media/image2.png)

<br>


 **Z-Transform:**

![](media/image3.png)

<br>

**Zeros & Poles:**

![](media/image4.png)



<br>

**Discussion :** In this experiment, we learned how to use 'xcorr'
function to determine the time delay between a signal and it's delayed
version (using cross correlation) in MATLAB. Also, we observed
Z-Transform and Zeros, Poles.

<br>

**Conclusion :** The graphs and results we got were as expected. The
codes worked as intended and were executed without any errors. So, we
can come to a conclusion that the experiments were done successfully.
