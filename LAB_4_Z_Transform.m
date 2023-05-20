clc;
clear all;
close all;

syms n z;
x = (1/5)^n + (1/9)^n;
X = ztrans(x, n, z);
disp(X);