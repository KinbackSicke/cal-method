clear; clc;
format long
x0 = [0 0 0];
tol = 0.00000001;
f = double(subs(fun(x0), {'x', 'y', 'z'}, {x0(1), x0(2), x0(3)}));
df = double(subs(dfun(x0),{'x' 'y' 'z'},{x0(1) x0(2) x0(3)}));
x = x0 - f / df;
n = 1;
while abs(x - x0) >= tol
    x0 = x;
    f = double(subs(fun(x0), {'x', 'y', 'z'}, {x0(1), x0(2), x0(3)}));
    df = double(subs(dfun(x0),{'x' 'y' 'z'},{x0(1) x0(2) x0(3)}));
    x = x0 - f / df;
    n = n + 1; 
    if n >= 100
        disp('迭代次数太多，可能不收敛！');
        return;
    end
end
x
n
