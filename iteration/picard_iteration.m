function f = picard_iteration(x0, tol)
%Picard������
%x0Ϊ��ʼ����ֵ��tol����Ϊ����
x1 = [(cos(x0(2) * x0(3))) / 3 + 1 / 6;
      sqrt(x0(1) * x0(1) + sin(x0(3) + 1.06)) / 9 - 0.1;
      -exp(-x0(1) * x0(2)) / 30 - pi / 6 + 1 / 20];
n = 1;
while norm(x1 - x0) >= tol
    x0 = x1;
    x1 = [(cos(x0(2) * x0(3))) / 3 + 1 / 6;
      sqrt(x0(1)* x0(1) + sin(x0(3) + 1.06)) / 9 - 0.1;
      -exp(-x0(1) * x0(2)) / 30 - pi / 6 + 1 / 20];
    n = n + 1;
    if n >= 1000
        disp('��������̫�࣬���ܲ�������');
        return;
    end
end
disp('������Ľ⣺');
x1
disp('Picard����������');
n
end

