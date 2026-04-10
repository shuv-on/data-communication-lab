amp = 4;
f = 50;
fs = 100;
t = 0:1/fs:1-1/fs;
x = amp*sin(2*pi*f*t);
msg = abs(fft(x));
plot(t, msg);
