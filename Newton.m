clear;clc
format long;
x0=[0 0 0];   % 迭代初始值
eps = 0.00000001;  % 定位精度要求
for i = 1:10
    f = double(subs(fungroup(x0),{'x1' 'x2' 'x3'},{x0(1) x0(2) x0(3)}));
    df = double(subs(dfun(x0),{'x1' 'x2' 'x3'},{x0(1) x0(2) x0(3)}));  % 得到雅克比矩阵
    x = x0 - f/df;
    if(abs(x-x0) < eps)
        break;
    end
    x0 = x; % 更新迭代结果
end
disp('定位坐标：');
x
disp('迭代次数：');
i