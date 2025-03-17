clear all;
close all;
syms y(x) R(x) % function D2y + 4y = sec(x) 

R = sec(x);

c1= 'C1';
c2= 'C2';
%equn= m^2=0, m=0,0
%c.f. = C1 + C2x;
syms y1(x) y2(x)
y1 = 1;
y2 = x;
yconst=[y1 y2];
W_matrix(x)=[yconst; diff(yconst)];
W(x)= det(W_matrix);

syms u(x) v(x) 

u = int(-1*y2*R/W);
v = int(y1*R/W);

ySolution = c1 + c2*x + u*cos(x) + v*sin(x)


