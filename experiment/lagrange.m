 function y = lagrange(x0, y0, x)
 %输入x0，y0为插值节点和插值结点的函数值，x为待求节点
 %输出y为待求节点的函数值
n = length(x0); m = length(x);
for i = 1:m
    z = x(i); s = 0.0;
    for k = 1:n
        p = 1.0;
        for j = 1:n
            if j~= k
                p = p * (z - x0(j)) / (x0(k) - x0(j));
            end
        end
        s = p * y0(k) + s;
    end
    y(i) = s;
end
end