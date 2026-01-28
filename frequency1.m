Fs = 100;
t = 0: 1/Fs: 1-1/Fs;
x = sin(2*pi*50*t);
N = length(x);
X = fft(x);
f = (0: N-1)* (Fs/N);
amplitude = abs(X)/N;
disp(amplitude);
figure;
plot(f, amplitude);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency vs Amplitude');
%xlim([0 Fs/2]);
frequencies
%grid on