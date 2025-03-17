clear all;
close all;
syms u(x,y) v(x,y)

[x,y]= meshgrid([1:5],[1:5]);
u= x^2 - y^2;
v= 2*x*y;
z=x + 1i*y;
w=z^2;
c=ones(size(real(w)));
contour(real(w),imag(w),c)
