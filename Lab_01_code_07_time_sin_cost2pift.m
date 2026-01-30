f = 2;
A = 3;
d = 4;
Fs = 100;

t = 0: 1/Fs:d;
y1 = A * sin(2*pi*f*t);
y2 = A * cos(2*pi*f*t);

plot(t, y1);
hold on;
plot(t, y2);
xlabel('Time (s)');
ylabel('AMplitude');
title('Sine Cosine combined Signal');
legend('Sine Wave', 'Cosine Wave');