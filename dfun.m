function df = dfun(x);
f = fungroup(x);
df = [diff(f, 'x1'); diff(f, 'x2'); diff(f, 'x3')];