function f = hermite_interpolation(x0, y0, y1)
%2n+1��hermite��ֵ
%����x0��y0��y1�ֱ�Ϊ����ڵ㣬����ڵ�ĺ���ֵ�͵���ֵ
%���fΪ��ֵ����ʽ��ϵ����HΪ��ֵ����ʽ
m = length(x0); n = length(y0);
if n ~= m
    return;
end
f = 0;
for i = 1: n
    a = 1; b = 0;
    for j = 1: n
        if j ~= i
            s = poly(x0(j));
            a = conv(a, s / (x0(i) - x0(j)));
            b = b + 1 / (x0(i) - x0(j));
        end
    end   
    c = conv(poly(x0(i)), y1(i) - 2 * y0(i) * b) + [0 y0(i)];
    d = conv(c, conv(a, a));
    f = f + d;
end
f
H = vpa(poly2sym(f), 9)


