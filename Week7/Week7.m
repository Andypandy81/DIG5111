clc;
clear;
close all;
% Parameters
fs = 4000;      % Sampling frequency (Hz)
T = 1;          % Duration of the signal (seconds)
t = 0:1/fs:T;   % Time vector
% Frequencies of the signal components
f1 = 150;       % Frequency component 1 (Hz)
f2 = 800;       % Frequency component 2 (Hz)
% Generate the signal
x = sin(2 * pi * f1 * t) + sin(2 * pi * f2 * t);
% Plot the signal in the time domain
figure;
plot(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Signal with 150 Hz and 800 Hz Components');
grid on;
xlim([0 0.05]);  % Zoom in for better visualization of waveform
% Frequency Spectrum
X = abs(fft(x));                 % Compute FFT
f = linspace(0, fs, length(X));  % Frequency vector
figure;
plot(f, X);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum of the Signal');
grid on;
xlim([0 fs/2]);  % Show only positive frequencies
 