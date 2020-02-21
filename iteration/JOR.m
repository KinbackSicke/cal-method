function [x, n] = JOR(A, b, x0, tol)
%����ɳ�����JOR������
[m, ~] = size(A);
D = diag(diag(A));
L = tril(A, -1);%��A�������Ǿ���
U = triu(A, 1);%��A�������Ǿ���
B = -D \ (L + U);

[~, v] = eig(B);
ev = diag(v);
w = 2 / (2 - max(ev) - min(ev))

I = eye(m);
Bjor = I - w * (D \ A);
f = w * (D \ b);
x = Bjor * x0 + f;
n = 1;
while norm(x - x0, inf) >= tol
    x0 = x;
    x = Bjor * x0 + f;
    n = n + 1;
    if(n >= 100)
        disp('��������̫��,���ܲ�����!')
        return;
    end
end
end

    
    
    
    
