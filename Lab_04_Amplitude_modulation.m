fs = 1000;
fm = 5;
fc = 50;
m_index = 1;
t = 0:1/fs:1;
msg = sin(2*pi*fm*t);
carreir = sin(2*pi*fc*t);
am_signal = (1+m_index*msg).*carreir;

subplot(3, 1, 1);
plot(t, msg, 'g', 'LineWidth', 2);
title('Message Signal');

subplot(3, 1, 2);
plot(t, carreir, 'b');
title('Carrier Signal');


subplot(3, 1, 3);
plot(t, am_signal, 'r', 'LineWidth', 1.5);
title('Amplitude Modulation');