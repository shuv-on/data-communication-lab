% --- The Master Way to Frequency Domain ---

N = length(x);              % ১. সিগন্যালের দৈর্ঘ্য মাপা
X_fft = fft(x);             % ২. ফ্রিকোয়েন্সি ডোমেইনে কনভার্ট করা (জটিল সংখ্যা)
f_axis = (0:N-1)*(Fs/N);    % ৩. ফ্রিকোয়েন্সি এক্সিস (Hz) তৈরি করা
amplitude = abs(X_fft)/N;   % ৪. অ্যাম্প্লিচিউড ঠিক করা (Magnitude বের করে N দিয়ে ভাগ)

% --- Plotting ---
figure;
plot(f_axis, amplitude);
title('Frequency Spectrum');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
xlim([0 Fs/2]);             % ৫. জুম করা: শুধু পজিটিভ সাইড (অর্ধেক) দেখব