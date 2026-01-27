% x(t)=A*e-alpha*t signal
A = 5;
alpha = 2;
duration = 2;
samplingRate = 20;

t = 0 : 1/samplingRate : duration;
x = A* exp(-alpha*t);

plot(t, x);
xlabel('Time(s)');
ylabel('Amplitude');
title('Exponential Decay: : x(t) = A · exp(-a·t)');