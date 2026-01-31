bits = [0 1 0 0 1];
n = 100;
x = [];
for b = bits
if b == 1
shape = [ones(1, n/2) zeros(1, n/2)];
else
shape = [-1*ones(1, n/2) zeros(1, n/2)];
end
x = [x shape];
end
plot(x, 'LineWidth', 2);
axis([0 length(x) -2 2]);
grid on;