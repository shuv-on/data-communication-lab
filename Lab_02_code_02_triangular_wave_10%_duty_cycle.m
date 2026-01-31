f = 1;
amp = 2;
d = 10;
fs = 100;
duty = 0.1; % 10% Duty Cycle (Rise time)

t = 0:1/fs:d;

% 1. Phase বের করা (0 থেকে 1 এর মধ্যে ঘুরবে)
% t*f - floor(t*f) মানেই হলো mod(t*f, 1), কিন্তু ম্যানুয়ালি করা
phi = t*f - floor(t*f); 

% 2. The Master Formula for Asymmetric Triangle
% প্রথম অংশ: যখন phi < duty (উপরে ওঠা)
% দ্বিতীয় অংশ: যখন phi >= duty (নিচে নামা)
x = (phi < duty) .* (-amp + (2*amp/duty) * phi) ...
  + (phi >= duty) .* (amp - (2*amp/(1-duty)) * (phi - duty));

% Plotting
plot(t, x, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title(['Manual Triangular Wave with ' num2str(duty*100) '% Duty Cycle']);
grid on;
ylim([-amp-0.5 amp+0.5]);