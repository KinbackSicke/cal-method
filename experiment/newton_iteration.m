function x = newton_iteration(f, df, x0, tol)
%Newton������
%fΪ���󷽳̵ĺ�������dfΪJacob����x0Ϊ��ʼ����ֵ��tol����Ϊ����
%���xΪ���������IΪ��������
x = x0 - df(x0) \ f(x0); 
i = 1; 
while abs(x - x0) >= tol 
    x0 = x;
    x = x0 - df(x0) \ f(x0);
    i = i + 1;
    if i >= 1000                                                                                                                
        disp('��������̫�࣬���ܲ�������');
        return;
    end      
end
x
i                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
end