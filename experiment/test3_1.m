clear; clc
format long
syms x
f = exp(x) * (3 * x - exp(x));
x0=1.00; x1=1.02; x2=1.04; x3=1.06;
y0 = double(subs(f, x, x0));
y1 = double(subs(f, x, x1));
y2 = double(subs(f, x, x2)); 
y3 = double(subs(f, x, x3));
x00 = [x0 x1 x2 x3];
y00 = [y0 y1 y2 y3];
lagrange_interpolation(x00, y00);
y = lagrange(x00, y00, 1.03)
yy = double(subs(f, x, 1.03));
%rÎª¾ø¶ÔÎó²î
r = abs(y - yy)