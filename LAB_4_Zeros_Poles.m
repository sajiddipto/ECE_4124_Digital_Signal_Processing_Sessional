clc;
clear all;
close all;

zeros = -0.2; 
poles = 0.5*exp(j*2*pi*[-0.2 0.2]');
zplane(zeros,poles);