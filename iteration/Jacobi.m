function [x,n] = Jacobi(A,b,x0,tol)
%jocabi������
D = diag(diag(A));%��A�ĶԽǾ���
L = tril(A, -1);%��A�������Ǿ���
U = triu(A, 1);%��A�������Ǿ���
B = -D \ (L+U);
f = D \ b;
x = B * x0 + f;
n = 1;%��������
while norm(x-x0, inf) >= tol
    x0 = x;
    x = B * x0 + f;
    n = n + 1;
    if(n >= 100)
        disp('��������̫��,���ܲ�����!')
        return;
    end
end