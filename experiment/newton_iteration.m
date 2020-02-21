function x = newton_iteration(f, df, x0, tol)
%Newton迭代法
%f为所求方程的函数矩阵，df为Jacob矩阵，x0为初始迭代值，tol所需为精度
%输出x为迭代结果，I为迭代次数
x = x0 - df(x0) \ f(x0); 
i = 1; 
while abs(x - x0) >= tol 
    x0 = x;
    x = x0 - df(x0) \ f(x0);
    i = i + 1;
    if i >= 1000                                                                                                                
        disp('迭代次数太多，可能不收敛！');
        return;
    end      
end
x
i                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
end