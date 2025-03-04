% Task 1: Create a sinewave and apply clipping distortion.
% The thresholds should be 0.5 and -0.5. To ensure the signal is not too quiet,
% normalise it after the distortion has been applied.

% Parameters for the sine wave
frequency = 440;       % Frequency of the sine wave (Hz)
duration = 1;          % Duration of the sine wave (seconds)
samplingRate = 44100;  % Sampling rate (samples per second)

% Generate the time vector
t = 0:1/samplingRate:duration;

% Generate the sine wave
sineWave = sin(2*pi*frequency*t);

% Clipping thresholds
threshold = 0.5;

% Apply clipping distortion
clip = sineWave; % Initialize clipped signal
sineLength = length(sineWave);

for i = 1:sineLength
    if (sineWave(i) > threshold)
        clip(i) = threshold;
    elseif (sineWave(i) < -threshold)
        clip(i) = -threshold;
    end
end

% Normalize the clipped signal (to maximize its amplitude)
clip = clip / max(abs(clip));

% Plot the clipped signal
plot(clip);
axis([1, sineLength, -1, 1]);
grid on;
title('Clipped Sine Wave');
xlabel('Sample');
ylabel('Amplitude');

% Optional: Play the audio
sound(clip, samplingRate);
