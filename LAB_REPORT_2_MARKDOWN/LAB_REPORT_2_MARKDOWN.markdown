**Experiment No:** 02

**Experiment Name:** Study of Linear Convolution

**Experiment Date:** 30.04.2023

<br>

**Code:**

1.  clc

2.  clear all

3.  x = \[1, 2, 3, 4\];

4.  h = \[2 3 4 4\];

5.  y = zeros(1,length(x) + length(h)-1);

6.  for n = 1:length(y)

7.  for k = 1:length(h)

8.  if n-k+1\>0 && n-k+1 \<= length(x)

9.  y(n) = y(n)+h(k)\*x(n-k+1);

10. end

11. end

12. end

13.  

14. subplot(3,1,1);

15. stem(x);

16. title(\'Input Signal\');

17.  

18. subplot(3,1,2);

19. stem(h);

20. title(\'Impulse Response Signal\');

21.  

22. subplot(3,1,3);

23. stem(y);

24. title(\'Convolution\');

<br>

**Output :**

![](media/image1.png)

<br>

**Discussion :** Without using the MATLAB convolution function, we
learned how to build linear convolution in MATLAB for digital signal
processing in this experiment.

<br>

**Conclusion :** The graph we got was as expected. The code worked as
intended and was executed without any errors. So, we can come to a
conclusion that the experiments were done successfully.
