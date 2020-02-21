function m = com_trapezium(f, a, b, n)
%复合梯形公式
%输入f为求积函数，a，b为积分上下限，n为步数
%输出m为积分结果
h = (b - a) / n;
m = f(a) + f(b);
for i = 1: n - 1
    m = m + f(a + i * h) * 2;
end
m  = h / 2 * m;
end
