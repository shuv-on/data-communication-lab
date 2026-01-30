f = 5;                  % Frequency (Hz)
duty = 10;              % Duty cycle in percent
duration = 1;           % seconds
fs = 1000;              % Sampling rate
t = 0:1/fs:duration;

% Generate a pulse wave (10% duty cycle)
x = square(2 * pi * f * t, duty);

% Make the wave range from 0 to 1 instead of -1 to 1
x = (x + 1) / 2;

% Plot
plot(t, x, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Pulse Wave (10% Duty Cycle)');
