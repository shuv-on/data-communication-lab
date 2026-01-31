f = 1;
amp = 2;
d = 10;
fs = 100;

t = 0:1/fs:d;
x = 4*amp*abs(t*f-floor(t*f+0.5)) - amp;

plot(t, x, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Manual Triangualr Wave');