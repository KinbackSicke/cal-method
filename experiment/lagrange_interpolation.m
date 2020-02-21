function f = lagrange_interpolation(x0, y0)
%输入x0，y0为插值节点和节点的函数值
%输出为g为每个y(i)l(i)多项式, f为插值多项式系数，p为插值多项式
n = length(x0); l = zeros(n, n);

for i = 1: n
    m = conv(1, 1);
    for j = 1: n
        if j ~= i
            s = poly(x0(j));
            m = conv(m, s / (x0(i) - x0(j)));
        end
    end
    l(i, :) = m;
    g(i, :) =vpa(poly2sym(y0(i) * l(i, :)), 9);
end
f = y0 * l;
p = vpa(poly2sym(f), 9);

g
f
p
end