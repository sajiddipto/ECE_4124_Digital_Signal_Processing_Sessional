clc;
clear all;
close all;

n = 0:5;
x = [1 1 3 4 5 7];
x_flipped = fliplr(x);

syms z;
X = sum(x_flipped .* z.^n);
disp('Z-transform of the flipped signal:');
disp(X);

syms k;
x_inverse = iztrans(X, z, k);
disp('Inverse Z-transform of the Z-transform:');
disp(x_inverse);