function m = com_simpson(f ,a, b, n)
%����Simpson��ʽ
%����fΪ���������a��bΪ���������ޣ�nΪ����
%���mΪ���ֽ��
h = (b - a) / n;
m = f(a) - f(b);
N = n / 2;
for i = 1: N
    m  = m + 2 * (2 * f(a + (2 * i - 1) * h) + f(a + (2 * i * h)));
end
m =  h / 3 * m;
    
    
