% Step 01 --> parameters
frequency = 1;
amplitude = 3;
duration = 2;
samplingRate = 30;

% Step 02 --> time vector
t = 0:1/samplingRate:duration;

% Step 03 --> main logic
y = amplitude * cos (2 * pi * frequency * t);

% Step 04 --> Visualization
plot(t, y);
xlabel('Time(s)');
ylabel('Amplitude');
title('Simple Cosine Signal');
legend('Cosine Wave');
