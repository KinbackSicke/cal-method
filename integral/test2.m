clear; clc;
format long

syms x

%y = x / log(x + 1);
y = sqrt(1 + cos(x)^2);
s = int(y, 0, 48);
vpa(s)