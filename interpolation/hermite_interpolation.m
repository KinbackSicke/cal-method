function y = hermite_interpolation(x0, y0, y1, x)
n = length(x0); m = length(x);
for k = 1:m
    yk = 0;
    for i = 1:n
        a = 1; b = 0;
        for j = 1:n
            if j ~= i
                a = a * ((x(k) - x0(j)) / (x0(i) - x0(j)))^2; b = 1 / (x0(i) - x0(j)) + b;
            end
        end
        yk = yk + a * ((x0(i) - x(k)) * (2 * b * y0(i) - y1(i)) + y0(i));
    end
    y(k) = yk;
end