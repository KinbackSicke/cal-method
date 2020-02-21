clear;clc;
%���ڲ���Jocabi������Newton�����;�������ɳ����ӵ�JOR��SOR����
A = [1 2 3 4 5; -2 3 4 5 6; -3 -4 5 6 7; -4 -5 -6 7 8; -5 -6 -7 -8 9];
b = [55; 66; 63; 36; -25];
x0 = [0; 0; 0; 0; 0];
tol = 0.0001;
disp('Jocabi����:');
[x, n] = Jacobi(A, b, x0, tol)
disp('Gauss-Seidel����:');
[x, n] = GaussSeidel(A, b, x0, tol)
disp('JOR����:');
[x, n] = JOR(A, b, x0, tol)
disp('SOR����:');
[x, n] = SOR(A, b, x0, tol)