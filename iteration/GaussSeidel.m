function [x, n] = GaussSeidel(A, b, x0, tol)

D = diag(diag(A));
L = tril(A, -1);
U = triu(A,1);%��A�������Ǿ���
G = -(D + L) \ U;
f = (D + L) \ b;
x = G * x0 + f;
n = 1;
while norm(x-x0, inf) >= tol
    x0 = x;
    x = G * x0 + f;
    n = n + 1;
    if(n >= 100)
        disp('��������̫��,���ܲ�����');
        return;
    end
end
