clear; clc;
format long
%方程组函数
f = @(x)[5 * cos(x(1)) - x(1) * x(2) - 3;
            x(2)^2 + 8 * x(1) * x(2) - 7];
%Jacobi矩阵
df = @(x)[-5 * sin(x(1)) - x(2), -x(1);
          8 * x(2), 2 * x(2) + 8 * x(1)];
%迭代初始值
x0 = [1; 1];
%精度
tol = 1e-10;
newton_iteration(f, df, x0, tol);