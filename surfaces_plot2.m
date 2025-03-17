clear all; 
close all;
%if the function is f=z^3
%for f=u+iv

syms re(x,y) im(x,y) md(x,y)
z=x +i*y

%real part of w
re = x^3 - (3*y*y*x);

%imaginary part of w
im = (3*x*x*y) - y^3;

%absolute f
md=abs(z)

%plotting the surfaces
ezsurf(re,im,md)
hold on
grid on
legend('Re(f)','Im(f)','Abs(f)')

