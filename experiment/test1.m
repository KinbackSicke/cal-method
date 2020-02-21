clear; clc;
format long 
syms x
%算法A：I(n) = -5 * I(n - 1) + 1 / n
Ia = zeros(21, 1);
%先算出I（0）的值
Ia(1) = log(6 / 5);
%迭代
for n = 2: 21
    Ia(n) = -5 * Ia(n - 1) + 1 / (n - 1);
end
Ia
%算法B：I(n - 1) = 1 / 5 * (1 / n - I(n))
%f2 = x^20 / (x + 5);
Ib = zeros(21, 1);
%先算出I（20）的值
Ib(21) = 1 / 2 * (1 / (6 * 21) + 1 / (5 * 21));
%迭代
for n = 21: -1: 2
    Ib(n - 1) = 1 / 5 * (1 / (n - 1) - Ib(n));
end
Ib
