clear; clc;
format long

f = @(x) sqrt(1 + cos(x)^2);
a = 0; b = 48; n = (b - a) /  (1e-4);
ComTrapezium(f, n, a, b);

(sqrt(2 - 1 / sqrt(3)) + sqrt(2 + 1 / sqrt(3))) / 2
