function [x, n] = SOR(A, b, x0, tol)
%����ɳ����ӵ�SOR����
D = diag(diag(A));
L = tril(A, -1);%��A�������Ǿ���
U = triu(A, 1);%��A�������Ǿ���
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
        disp('��������̫��,���ܲ�����!')
        return;
    end
end
end
