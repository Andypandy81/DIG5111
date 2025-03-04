% Task 1: Create a sinewave and apply clipping distortion.
% The thresholds should be 0.5 and -0.5. To ensure the signal is not too quiet,
% normalise it after the distortion has been applied.

% Parameters for the sine wave
frequency = 0.25;         % Frequency of the sine wave (Hz) - changed for visual
duration = 4;            % Duration of the sine wave (seconds) - changed for visual
samplingRate = 25;    % Sampling rate (samples per second) - changed for visual

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

% Plot the original and clipped signal on the same plot
plot(1:100,sineWave(1:100)); %plot the sinewave
hold on; % hold the plot
plot(1:100,clip(1:100)); %plot the clipped sinewave
axis([1, 100, -1, 1]);
grid on;
title('Clipped Sine Wave');
xlabel('Sample');
ylabel('Amplitude');
legend('Original Sine Wave', 'Clipped Sine Wave'); % add a legend
hold off; %release the plot

% Optional: Play the audio
% sound(clip, samplingRate);
 