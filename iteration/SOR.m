function [x, n] = SOR(A, b, x0, tol)
%最佳松弛因子的SOR迭代
D = diag(diag(A));
L = tril(A, -1);%求A的下三角矩阵
U = triu(A, 1);%求A的上三角矩阵
B = -D \ (L + U);

w = 2 / (1 + sqrt(1 - vrho(B)^2))
Bsor = (D + w * L) \ ((1 - w) * D - w * U);
f = w * ((D + w * L) \ b);
x = Bsor * x0 + f;
n = 1;
while norm(x - x0, inf) >= tol
    x0 = x;
    x = Bsor * x0 + f;
    n = n + 1;
    if(n >= 100)
        disp('迭代次数太多,可能不收敛!')
        return;
    end
end
end
