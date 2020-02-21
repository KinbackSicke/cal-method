clear;clc
format long
syms x;
f(x) = x * exp(x) * (1 + exp(x));
f4 = diff(f(x), 4);
y = subs(f4, x, 1.06);
vpa(y)
