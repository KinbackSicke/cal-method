function x = newton_iteration(f, df, x0, tol)
%Newton������
%fΪ���󷽳̵ĺ�������dfΪJacob����x0Ϊ��ʼ����ֵ��tol����Ϊ����
x1 = x0 - df(x0) \ f(x0); 
i = 1; 
while abs(x1 - x0) >= tol 
    x0 = x1;
    x1 = x0 - df(x0) \ f(x0);
    i = i + 1;
    if i >= 1000                                                                                                                
        disp('��������̫�࣬���ܲ�������');
        return;
    end      
end
disp('������Ľ⣺')
x1
disp('Newton����������')
i                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
end
