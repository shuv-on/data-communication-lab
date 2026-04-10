fs = 100;
f = 50;
t = 0:1/fs:1;
saw = sawtooth(2*pi*f*t, 0.1);
plot(t, saw);