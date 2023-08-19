**Experiment No:** 03

**Experiment Name:** Study of Auto Correlation & Cross Correlation

**Experiment Date:** 07.05.2023

<br>

**Code:**

**Auto Correlation:**

1.  clc

2.  clear all

3.  close all

4.   

5.  x = \[1, 4, 1, 4, 2\];

6.  n = length(x);

7.  y = zeros(1, 2\*n-1);

8.  z = xcorr(x);

9.   

10. for delay = -n+1:n-1

11. if delay \<0

12. y(delay+n) = sum(x(1:n+delay) .\* x(-delay+1:n));

13. elseif delay == 0

14. y(delay+n) = sum(x.\^2);

15. else

16. y(delay+n) = sum(x(delay+1:n) .\* x(1:n-delay));

17. end

18. end

19.  

20. subplot(3,1,1)

21. stem(x);

22. title(\'General Function\');

23.  

24. subplot(3,1,2)

25. stem(z);

26. title(\'Auto Correlation with Correlation Function\');

27.  

28. subplot(3,1,3)

29. stem(y);

30. title(\'Auto Correlation without Correlation Function\');

<br>

**Cross Correlation:**

1.  clc

2.  clear all

3.  close all

4.   

5.  x1 = \[-3, 2, -1, 1\];

6.  x2 = \[-1, 0, -3, 2\];

7.  n = length(x1);

8.  y = zeros(1, 2\*n-1);

9.  z = xcorr(x1, x2);

10.  

11. for delay = -n+1:n-1

12. if delay \<0

13. y(delay+n) = sum(x1(1:n+delay) .\* x2(-delay+1:n));

14. elseif delay == 0

15. y(delay+n) = sum(x1.\^2);

16. else

17. y(delay+n) = sum(x1(delay+1:n) .\* x2(1:n-delay));

18. end

19. end

20.  

21. subplot(4,1,1)

22. stem(x1);

23. title(\'General Function 1\');

24.  

25. subplot(4,1,2)

26. stem(x2);

27. title(\'General Function 2\');

28.  

29. subplot(4,1,3)

30. stem(z);

31. title(\'Cross Correlation with Correlation Function\');

32.  

33. subplot(4,1,4)

34. stem(y);

35. title(\'Cross Correlation without Correlation Function\');

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
