function[y,R,Hc,Hk,wcgs,Cw] = hermite(X,Y,Y1,x,M)
n = length(X);
m = length(x);


for t = 1 : m    
z = x(t);
H = 0;
q = 1;
c1 = 1;

for k = 1 : n
    s = 0;
    V = 1;
    for i = 1 : n
        if k ~= i
            s = s + (1/(X(k)-X(i)));
            V = conv(V,poly(X(i)))/(X(k)-X(i));
        end
    end
    h = poly(X(k));
    g = ([0 1]-2 * h * s);%注意不要写成1-2*h*s，因为是多项式减法，低阶多项式前面必须用零填补，书上的错误，浪费我一晚上时间
    G = g * Y(k) + h * Y1(k);
    H = H + conv(G,conv(V,V));%hermite插值多项式
    b = poly(X(k));
    b2 = conv(b,b);
    q = conv(q,b2);
end
Hc = H;
Hk = poly2sym(H);
Q = poly2sym(q);
for i = 1 : 2*n 
    c1 = c1 * i;
end
wcgs = M * Q / c1;
Cw = M * q / c1;
y(t) = polyval(Hc,x(t));
R(t) = polyval(Cw,x(t));
end
