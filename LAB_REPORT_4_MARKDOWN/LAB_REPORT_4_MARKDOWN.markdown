**Experiment No:** 04

**Experiment Name:**

1\. Detection of Time Delay Using Cross-Correlation

2\. Determination of Z-Transform

3\. Determination of Zeros & Poles

**Experiment Date:** 14.05.2023

<br>

**Code:**

**Time Delay of Two Signals Using Cross-Correlation:**

1.  clc;

2.  clear all;

3.  close all;

4.   

5.  t = 0:0.01:20;

6.  a_1 = t\>=10 & t\<=15;

7.  a_2 = t\>=12 & t\<=15;

8.  signal_1 = a_1 + a_2;

9.  a_3 = t\>=5 & t\<=10;

10. a_4 = t\>=7 & t\<=10;

11. signal_2 = a_3 + a_4;

12.  

13. \[z,delay\] = xcorr(signal_1, signal_2);

14. cross_correlation =
    z/max([abs](http://www.opengroup.org/onlinepubs/009695399/functions/abs.html)(z(:)));

15.  

16. subplot(3, 1, 1);

17. plot(t, signal_1);

18. title(\'Default Signal\');

19.  

20. subplot(3, 1, 2);

21. plot(t, signal_2);

22. title(\'Delayed Signal\');

23.  

24. subplot(3, 1, 3);

25. plot(delay\*0.01, cross_correlation);

26. title(\'Cross Correlation\');

27.  

28. maximum = max(cross_correlation);

29. indexesOfMax = find(cross_correlation == maximum);

30. find_delay = delay(indexesOfMax);

31. temp = find_delay\*0.01;

32. display = \[\'Time Delay is: \', num2str(temp), \' seconds\'\];

33. disp(display);

<br>

**Z-Transform:**

1.  clc;

2.  clear all;

3.  close all;

4.   

5.  syms n z;

6.  x = (1/5)\^n + (1/9)\^n;

7.  X = ztrans(x, n, z);

8.  disp(X);

<br>

**Zeros & Poles:**

1.  clc;

2.  clear all;

3.  close all;

4.   

5.  zeros = -0.2;

6.  poles =
    0.5\*[exp](http://www.opengroup.org/onlinepubs/009695399/functions/exp.html)(j\*2\*pi\*\[-0.2
    0.2\]\');

7.  zplane(zeros,poles);

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
