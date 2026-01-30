clc; clear; close all;

f = 5;              % Frequency
duty = 10;          % Duty cycle (10%)
fs = 1000;          % Sampling frequency
d = 4;              % Duration

t = 0:1/fs:d;       % Time vector

% --- Manual Pulse Logic (No 'square' function needed) ---
T = 1/f;                            % ১টা সাইকেলের সময়কাল
on_time = (duty/100) * T;           % কতক্ষণ অন থাকবে
time_in_cycle = mod(t, T);          % ঘড়ি রিসেট করার লজিক
x = (time_in_cycle < on_time);      % যদি অন টাইমের মধ্যে থাকে তবে 1, না হলে 0
x = double(x);                      % True/False কে 1/0 সংখ্যায় রূপান্তর

% --- Plotting ---
plot(t, x, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Pulse wave with 10% duty cycle (Manual Logic)');
ylim([-0.2 1.2]);   % দেখার সৌন্দর্যের জন্য
grid on;