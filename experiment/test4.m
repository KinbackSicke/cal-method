clear; clc;
format long
f = @(x) sqrt(1 + cos(x)^2);
a = 0; b = 48; n = (b - a) / (1e-4);
%复合梯形公式计算结果
m = com_trapezium(f, 0, 48, n)
%复合Simpson公式计算结果
k = com_simpson(f, a, b, n)
