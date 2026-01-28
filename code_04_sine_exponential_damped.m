%x = A * exp(-alpha * t) .* sin(2* pi * f* t)
A = 1;
f = 5;
alpha = 2;
t = 0:0.01:2;
x = A * exp(-alpha*t) .* sin(2*pi*f*t);

plot(t, x);
title('Damped Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;