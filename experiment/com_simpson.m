function m = com_simpson(f ,a, b, n)
%符合Simpson公式
%输入f为求积函数，a，b为积分上下限，n为步数
%输出m为积分结果
h = (b - a) / n;
m = f(a) - f(b);
N = n / 2;
for i = 1: N
    m  = m + 2 * (2 * f(a + (2 * i - 1) * h) + f(a + (2 * i * h)));
end
m =  h / 3 * m;
    
    
