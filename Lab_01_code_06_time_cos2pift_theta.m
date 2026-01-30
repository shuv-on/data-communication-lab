A = 3;
f = 2;
duration = 4;
Fs = 100;
theta = pi;

t = 0: 1/Fs: duration;
x = A*cos(2*pi*f*t + theta);
plot(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Simple cosine Signal with theta');