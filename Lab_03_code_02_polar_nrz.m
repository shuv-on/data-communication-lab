bits = [1 0 1 1 0 0 1 0];
n = 100;
x = [];
 for b = bits
    if b == 1
    shape = -1*ones(1, n);
    else 
    shape = ones(1, n);
    end
    x = [x shape];
end
plot (x, 'LineWidth', 2);
axis ([0 length(x) -2 2]);
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
title('Polar NRZ');