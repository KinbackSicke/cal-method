clear; clc;
format long
%�����麯��
f = @(x)[5 * cos(x(1)) - x(1) * x(2) - 3;
            x(2)^2 + 8 * x(1) * x(2) - 7];
%Jacobi����
df = @(x)[-5 * sin(x(1)) - x(2), -x(1);
          8 * x(2), 2 * x(2) + 8 * x(1)];
%������ʼֵ
x0 = [1; 1];
%����
tol = 1e-10;
newton_iteration(f, df, x0, tol);