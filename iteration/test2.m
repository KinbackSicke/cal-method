clear;clc;
%用于测试Jocabi迭代、Newton迭代和具有最佳松弛因子的JOR和SOR迭代
A = [1 2 3 4 5; -2 3 4 5 6; -3 -4 5 6 7; -4 -5 -6 7 8; -5 -6 -7 -8 9];
b = [55; 66; 63; 36; -25];
x0 = [0; 0; 0; 0; 0];
tol = 0.0001;
disp('Jocabi迭代:');
[x, n] = Jacobi(A, b, x0, tol)
disp('Gauss-Seidel迭代:');
[x, n] = GaussSeidel(A, b, x0, tol)
disp('JOR迭代:');
[x, n] = JOR(A, b, x0, tol)
disp('SOR迭代:');
[x, n] = SOR(A, b, x0, tol)