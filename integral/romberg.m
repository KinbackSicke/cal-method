function z = romberg(f, a, b, tol)
h = b - a; t(1, 1) = h * (f(a) + f(b)) / 2; m = 1; l = 0; err = 1;
while err >= tol
    l = l + 1; h = h / 2;
    for n = 1:m
        g(n) = f(a + h * (2 * n - 1));
    end
    s = sum(g); 
    t(l + 1, 1) = t(l, 1) / 2 + s * h;
    m = 2 * m;
    for k = 1:l
        t(l + 1, k + 1) = (4^k * t(l + 1, k) - t(l, k)) / (4^k - 1);
    end
    err = abs(t(l + 1, l + 1) - t(l, l));
end
z = t(l + 1, l + 1)
l
    