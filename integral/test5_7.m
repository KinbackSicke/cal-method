clear; clc;
format long
f = @(x) sqrt(2) / ((1 + sin(x)^2) * (sqrt(2 - sin(x)^2)));
a = 0; b = pi; tol = 1e-12;
vstrapezoid(f, a, b, tol);
romberg(f, a, b, tol);