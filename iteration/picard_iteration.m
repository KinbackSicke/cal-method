function f = picard_iteration(x0, tol)
%Picard迭代法
%x0为初始迭代值，tol所需为精度
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
        disp('迭代次数太多，可能不收敛！');
        return;
    end
end
disp('方程组的解：');
x1
disp('Picard迭代次数：');
n
end

