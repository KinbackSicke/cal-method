function m = com_trapezium(f, a, b, n)
%�������ι�ʽ
%����fΪ���������a��bΪ���������ޣ�nΪ����
%���mΪ���ֽ��
h = (b - a) / n;
m = f(a) + f(b);
for i = 1: n - 1
    m = m + f(a + i * h) * 2;
end
m  = h / 2 * m;
end
