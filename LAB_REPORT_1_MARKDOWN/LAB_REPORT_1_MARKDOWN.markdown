**Experiment No:** 01

**Experiment Name:**

1.  Plotting A Discrete Signal in MATLAB

2.  Plotting Two Given Continuous Signal in MATLAB

3.  Plotting Two Discrete Signal, Their Addition and Subtraction in
    MATLAB

4.  Plotting Unit Step, Unit Impulse and Unit Ramp Signal Using
    Conditions in MATLAB

**Experiment Date:** 20.03.2023

<br>

**Code:**

**1. A Discrete Signal**
```
clc;
clear all;
close all;
 
x=[5, 3, 7, 3, 2, 3, 5];
y=[1 2 3 4 5 6 7];
 
stem(y,x);
xlim([0, 8]);
ylim([0, 8]);

```

<br>


**2. Two Given Continuous Signal**
```
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
```
<br>

**3. Two Discrete Signal, Their Addition and Subtraction**
```
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
```
<br>


**4. Unit Step, Unit Impulse and Unit Ramp Signal Using Conditions**
```
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
```
<br>

**Output :**

<br>

**1. A Discrete Signal**

![](media/image1.png)

<br>

**2. Two Given Continuous Signal**

![](media/image2.png)

<br>

**3. Two Discrete Signal, Their Addition and Subtraction**

![](media/image3.png)

<br>

**4. Unit Step, Unit Impulse and Unit Ramp Signal Using Conditions**

![](media/image4.png)

<br>

**Discussion :** In this experiment, we used stem to
create the discrete plot. Two separate signals were used, and we added
and subtracted them using steps. We plotted two continuous signals also.
We used conditions rather than the built-in functions to work with the
unit step, unit impulse, and unit ramp signals. Before time zero, all
values for a unit step are zero, and after time zero, all values are
one. Only one value at zero for impulse; all other values are zero.

<br>

**Conclusion :** All the graphs we got were as expected.
The codes worked as intended and were executed without any errors. So,
we can come to a conclusion that the experiments were done successfully.
