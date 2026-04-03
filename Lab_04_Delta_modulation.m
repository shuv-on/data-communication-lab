clc;
clear;

% Parameters
fs = 200;                    % Sampling frequency
t = 0:1/fs:1;                % Time vector
x = sin(2*pi*5*t);           % Input signal (sine wave)
delta = 0.2;                 % Step size

% Initialization
x_dm = zeros(size(x));       % Delta modulated signal (reconstructed)
bitstream = zeros(size(x));  % Output bitstream (0 or 1)

for i = 2:length(x)
    if x(i) > x_dm(i-1)
        bitstream(i) = 1;
        x_dm(i) = x_dm(i-1) + delta;
    else
        bitstream(i) = 0;
        x_dm(i) = x_dm(i-1) - delta;
    end
end

% Plot input and reconstructed signal
figure;
plot(t, x, 'b', 'LineWidth', 1.5); hold on;
stairs(t, x_dm, 'r', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Delta Modulation of a Sine Wave');
legend('Original Signal', 'Delta Modulated Reconstruction');
grid on;