f = 2;
amp = 3;
d = 4;
Fs = 100;

t = 0: 1/Fs : d-1/Fs;

square_wave = sign(sin(2*pi*f*t));
x = amp * square_wave;
plot(t, x, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine square Signal');