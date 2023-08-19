**Experiment No:** 05

**Experiment Name:**

1\. Z-Transform and Inverse Z-Transform of Causal Signal

2\. Z-Transform and Inverse Z-Transform of Anti Causal Signal

3\. Z-Transform and Inverse Z-Transform of Non Causal Signal

**Experiment Date:** 21.05.2023

<br>

**Code:**

**Z-Transform and Inverse Z-Transform of Causal Signal:**

clc;

clear all;

close all;

n = 0:5;

x = \[1 1 3 4 5 7\];

syms z;

X = sum(x .\* z.\^(-n));

disp(\'Z-transform of the signal:\');

disp(X);

syms k;

x_inverse = iztrans(X, z, k);

disp(\'Inverse Z-transform of the Z-transform:\');

disp(x_inverse);

<br>

**Z-Transform and Inverse Z-Transform of Anti Causal Signal:**

clc;

clear all;

close all;

n = 0:5;

x = \[1 1 3 4 5 7\];

x_flipped = fliplr(x);

syms z;

X = sum(x_flipped .\* z.\^n);

disp(\'Z-transform of the flipped signal:\');

disp(X);

syms k;

x_inverse = iztrans(X, z, k);

disp(\'Inverse Z-transform of the Z-transform:\');

disp(x_inverse);

<br>

**Z-Transform and Inverse Z-Transform of Non Causal Signal:**

clc;

clear all;

close all;

n = -3:3;

x = \[1 1 3 4 5 7 9\];

syms z;

X = sum(x .\* z.\^(-n));

disp(\'Z-transform of the non-causal signal:\');

disp(X);

syms k;

x_inverse = iztrans(X, z, k);

disp(\'Inverse Z-transform of the Z-transform:\');

disp(x_inverse);

<br>

**Output:**

**Z-Transform and Inverse Z-Transform of Causal Signal:**

Z-transform of the signal:

1/z + 3/z\^2 + 4/z\^3 + 5/z\^4 + 7/z\^5 + 1

Inverse Z-transform of the Z-transform:

kroneckerDelta(k - 1, 0) + 3\*kroneckerDelta(k - 2, 0) +
4\*kroneckerDelta(k - 3, 0) + 5\*kroneckerDelta(k - 4, 0) +
7\*kroneckerDelta(k - 5, 0) + kroneckerDelta(k, 0)

<br>

**Z-Transform and Inverse Z-Transform of Anti Causal Signal:**

Z-transform of the flipped signal:

z\^5 + z\^4 + 3\*z\^3 + 4\*z\^2 + 5\*z + 7

Inverse Z-transform of the Z-transform:

7\*kroneckerDelta(k, 0) + 4\*iztrans(z\^2, z, k) + 3\*iztrans(z\^3, z,
k) + iztrans(z\^4, z, k) + iztrans(z\^5, z, k) + 5\*iztrans(z, z, k)

<br>

**Z-Transform and Inverse Z-Transform of Non Causal Signal:**

Z-transform of the non-causal signal:

3\*z + 5/z + 7/z\^2 + z\^2 + 9/z\^3 + z\^3 + 4

Inverse Z-transform of the Z-transform:

5\*kroneckerDelta(k - 1, 0) + 7\*kroneckerDelta(k - 2, 0) +
9\*kroneckerDelta(k - 3, 0) + 4\*kroneckerDelta(k, 0) + iztrans(z\^2, z,
k) + iztrans(z\^3, z, k) + 3\*iztrans(z, z, k)

<br>

**Discussion :** In this experiment, we learned about
causal, anti causal and non causal signals. We also learnt how to apply
Z-transform to these signals. Also we have implemented inverse
Z-transform in this experiment. We have learnt that in causal signal
there are values only in the positive side; for anti causal the values
are only in the negative side. For non causal signal there are values
both in the positive and negative side.

<br>

**Conclusion :** The Z-trasnsform and inverse Z-transform
results we got were as expected. The codes worked as intended and were
executed without any errors. So, we can come to a conclusion that the
experiments were done successfully.
