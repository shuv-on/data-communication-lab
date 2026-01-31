bits = [0 1 0 0 1 1];
n = 100;
x = [];
for b = bits
if b == 1
shape = [-1*ones(1, n/2) ones(1, n/2)];

else
shape = [ones(1, n/2) -ones(1, n/2)];
end
x = [x shape];
end
plot(x, 'LineWidth', 2);
axis([0 length(x) -2 2]);
grid on;