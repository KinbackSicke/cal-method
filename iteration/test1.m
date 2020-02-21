clear;clc;
%用于测试Picard迭代和Newton迭代
format long
f = @(x)[6 * x(1) - 2 * cos(x(2) * x(3)) - 1;
    sqrt(x(1) * x(1) + sin(x(3) + 1.06)) - 9 * (x(2) + 0.1);
    3 * exp(-x(1) * x(2)) + 60 * x(3) + 10 * pi - 3];

df = @(x)[6, 2 * x(3) * sin(x(2) * x(3)), 2 * x(2) * sin(x(2) * x(3));
    x(1) / sqrt((x(1)^2 + sin(x(3)) + 53/50)),  -9, cos(x(3)) / (2 * sqrt((x(1) * x(1) + sin(x(3)) + 53/50)));
      -3 * x(2) * exp(-x(1) * x(2)), - 3 * x(1) * exp(-x(1) * x(2)),  60];

x0 = [0; 0; 0];
tol = 1e-8;
newton_iteration(f, df, x0, tol)
picard_iteration(x0, tol)