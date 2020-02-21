clear; clc;
format long
x1 = 0.35; x2 = 0.50; x3 = 0.65; x4 = 0.80; x5 = 0.95;
x0 = [x1 x2 x3 x4 x5];
f = @(x)sqrt(1 + cosh(x) ^ 2);
y1 = f(x1); y2 = f(x2); y3 = f(x3); y4 = f(x4); y5 = f(x5);
y0 = [y1 y2 y3 y4 y5]
y = newton_interpolation(x0, y0, 0.7);
r = y - f(0.596)