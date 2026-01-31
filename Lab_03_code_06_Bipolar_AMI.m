bits = [0 1 0 0 1 0];
n = 100;
x = [];
v = 1;
for b = bits
if b==0
shape = zeros(1, n);
else
shape = v*ones(1, n);
v = -v;
end
x = [x shape];
end
plot(x, 'LineWidth', 2);
axis([0 length(x) -2 2]);
grid on;