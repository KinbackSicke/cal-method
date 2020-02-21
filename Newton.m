clear;clc
format long;
x0=[0 0 0];   % ������ʼֵ
eps = 0.00000001;  % ��λ����Ҫ��
for i = 1:10
    f = double(subs(fungroup(x0),{'x1' 'x2' 'x3'},{x0(1) x0(2) x0(3)}));
    df = double(subs(dfun(x0),{'x1' 'x2' 'x3'},{x0(1) x0(2) x0(3)}));  % �õ��ſ˱Ⱦ���
    x = x0 - f/df;
    if(abs(x-x0) < eps)
        break;
    end
    x0 = x; % ���µ������
end
disp('��λ���꣺');
x
disp('����������');
i