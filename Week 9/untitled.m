clear; clc;
fs = 44100;
ts = 1/fs;
t = 0:ts:1-ts;
f = 1000;
A = 1;
sine = A * sin(2*pi*f*t);

