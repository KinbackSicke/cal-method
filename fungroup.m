function f=fungroup(x);

syms x1 x2 x3
f1 = 6 * x1 - 2 * cos(x2 * x3) - 1;
f2 = sqrt(x1^2 + sin(x3) + 1.06) - 9 * (x2 + 0.1);
f3 = 3 * exp(- x1 * x2) + 60 * x3 + 10 * pi - 3;
f=[f1 f2 f3];