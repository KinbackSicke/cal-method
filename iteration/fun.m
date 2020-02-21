function f = fun(x)
syms x y z
f1 = 6 * x - 2 * cos(y * z) - 1;
f2 = sqrt(x * x + sin(z + 1.06)) - 9 * (y + 0.1);
f3 = 3 * exp(-x * y) + 60 * z + 10 * pi - 3;
f = [f1 f2 f3];
end