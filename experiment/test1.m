clear; clc;
format long 
syms x
%�㷨A��I(n) = -5 * I(n - 1) + 1 / n
Ia = zeros(21, 1);
%�����I��0����ֵ
Ia(1) = log(6 / 5);
%����
for n = 2: 21
    Ia(n) = -5 * Ia(n - 1) + 1 / (n - 1);
end
Ia
%�㷨B��I(n - 1) = 1 / 5 * (1 / n - I(n))
%f2 = x^20 / (x + 5);
Ib = zeros(21, 1);
%�����I��20����ֵ
Ib(21) = 1 / 2 * (1 / (6 * 21) + 1 / (5 * 21));
%����
for n = 21: -1: 2
    Ib(n - 1) = 1 / 5 * (1 / (n - 1) - Ib(n));
end
Ib
