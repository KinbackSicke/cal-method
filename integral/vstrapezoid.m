function z = vstrapezoid(f, a, b, tol)
t0 = (b - a) * (f(a) + f(b)) / 2;
t1 = t0 / 2 + (b - a) * f(a + (b - a) / 2) / 2; k = 1;
while abs(t1 - t0) >= tol && k <= 1000
    k = k + 1;
    for n = 1:2^(k - 1)
        g(n) = f(a + (b - a) * (2 * n - 1) / 2^k);
    end
    s = sum(g); t0 = t1; t1 = t0 / 2 + s * (b - a) / 2^k;
end
t1
k