clc; clear; close all;

bits = [1 1 0 0 0 1 1 1 1 0];  % ইনপুট (অবশ্যই জোড় সংখ্যার বিট হতে হবে)
n = 100;                   % রেজোলিউশন
x = [];

% --- মেইন লজিক (2 Bit করে লাফ দিব) ---
for i = 1 : 2 : length(bits)
    
    % বর্তমান বিট এবং তার পরের বিট ধরা
    b1 = bits(i);
    b2 = bits(i+1);
    
    % লজিক টেবিল চেক করা
    if b1 == 0 && b2 == 0
        lvl = -3;
    elseif b1 == 0 && b2 == 1
        lvl = -1;
    elseif b1 == 1 && b2 == 0
        lvl = 3;
    elseif b1 == 1 && b2 == 1
        lvl = 1;
    end
    
    % সেই লেভেল অনুযায়ী সিগন্যাল বানানো
    shape = lvl * ones(1, n);
    x = [x shape];
end

% --- প্লটিং ---
plot(x, 'LineWidth', 2);
axis([0 length(x) -4 4]); % ভোল্টেজ -3 থেকে +3, তাই লিমিট বাড়ালাম
grid on;
title('2B1Q Line Coding');
xlabel('Time (Samples)');
ylabel('Voltage Level');

% y-axis এ দাগগুলো ফিক্স করার জন্য (Optional)
yticks([-3 -1 1 3]);