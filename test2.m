x1 = 1.00; x2 = 1.02; x3 = 1.04; x4 = 1.06;
y1 = x1 * exp(x1) * (1 + exp(x1));
y2 = x2 * exp(x2) * (1 + exp(x2));
y3 = x3 * exp(x3) * (1 + exp(x3));
y4 = x4 * exp(x4) * (1 + exp(x4));
x0 = [x1, x2, x3, x4]; y0 = [y1, y2, y3, y4];
y = lagrange(x0, y0, 1.03)
syms x;
f(x) = x * exp(x) * (1 + exp(x));
p = abs(vpa(f(1.03)) - y)