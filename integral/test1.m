clear; clc;
format long

g = @(x)(x * sin(x)) / (sqrt(1 + x^2));
K = 2/3 * (g(-sqrt(2) / 2) * 2 + g(0));


f = @(x) x/log(x + 1);
I = f(1) - f(2) + 2 * (2 * (f(7/6) + f(9/6) + f(11/6)) + f(4/3) + f(5/3) + f(2))

I / 18
