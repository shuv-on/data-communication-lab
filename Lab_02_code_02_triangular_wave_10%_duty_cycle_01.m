f = 1; amp = 2; d = 10; fs = 100; duty = 0.1;

t = 0:1/fs:d; T = 1/f;
u = mod(t, T)/T;

x = 2*amp * ( (u<duty).*(u/duty) + (u>=duty).*(1 - (u-duty)/(1-duty)) ) - amp;

plot(t, x, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Triangular Wave (10% Duty Cycle)');