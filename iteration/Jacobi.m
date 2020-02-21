function [x,n] = Jacobi(A,b,x0,tol)
%jocabi迭代法
D = diag(diag(A));%求A的对角矩阵
L = tril(A, -1);%求A的下三角矩阵
U = triu(A, 1);%求A的上三角矩阵
B = -D \ (L+U);
f = D \ b;
x = B * x0 + f;
n = 1;%迭代次数
while norm(x-x0, inf) >= tol
    x0 = x;
    x = B * x0 + f;
    n = n + 1;
    if(n >= 100)
        disp('迭代次数太多,可能不收敛!')
        return;
    end
end