function df = dfun(x)
f = fun(x);
df = [diff(f, 'x'); diff(f, 'y'); diff(f, 'z')];
