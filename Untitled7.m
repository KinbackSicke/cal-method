clear; clc
format long
syms x
f = exp(x) * (3 * x - exp(x)); g = diff(f, x);
x0 = [1 1.05];
y1 = double(subs(f, x, 1)); y2 = double(subs(f, x, 1.05));
y0 = [y1 y2];
yy1 =double(subs(g, x, 1)); yy2 = double(subs(g, x, 1.05));
yy = [yy1 yy2];
[y,R,Hc,Hk,wcgs,Cw] = hermite(x0, y0, yy, 1.03, 1)