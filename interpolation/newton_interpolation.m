function np = newton_interpolation(x0, y0, x)
n = length(x0); a(1) = y0(1);
for k = 1:n - 1
    d(k, 1) = (y0(k + 1) - y0(k)) / (x0(k + 1) - x0(k));
end
for j = 2:n - 1
    for k = 1:n - j
        d(k, j) = (d(k + 1, j - 1) - d(k, j - 1)) / (x0(k + j) - x0(k));
    end
end
d
for j = 2:n
    a(j) = d(1, j - 1);
end
b(1) = 1; c(1) = a(1);
for j = 2:n
    b(j) = (x - x0(j - 1)).* b(j - 1);
    c(j) = a(j).* b(j);
end
np = sum(c)