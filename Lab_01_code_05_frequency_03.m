Fs = 800;
t = 0:1/Fs:1-1/Fs;

x = sin(2* pi * 50* t) + 0.5* sin(2* pi * 150 * t)+ 0.25 * sin(2* pi* 300*t);
N = length(x);
X = fft(x);
f = (0:N-1)*(Fs/N);
amp = abs(X)/N;

%figure;
plot(f, amp);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency Domain Representation');
xlim([0 Fs/2]);
frequencies;
grid on;