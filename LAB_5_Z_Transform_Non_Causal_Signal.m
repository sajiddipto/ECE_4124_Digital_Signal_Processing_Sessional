clc;
clear all;
close all;

n = -3:3;
x = [1 1 3 4 5 7 9];

syms z;
X = sum(x .* z.^(-n));
disp('Z-transform of the non-causal signal:');
disp(X);

syms k; 
x_inverse = iztrans(X, z, k);
disp('Inverse Z-transform of the Z-transform:');
disp(x_inverse);