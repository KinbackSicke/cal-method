clear; clc;
format long
f = @(x) sqrt(1 + cos(x)^2);
a = 0; b = 48; n = (b - a) / (1e-4);
%�������ι�ʽ������
m = com_trapezium(f, 0, 48, n)
%����Simpson��ʽ������
k = com_simpson(f, a, b, n)
