clear all; 
close all;
%if the function is f=1/z
%for f=u+iv, u=real(f)/(abs(f)^2)

syms re(x,y) im(x,y) md(x,y)
z=x +i*y

%real part of w
re=x/(abs(z)^2)

%imaginary part of w
im=-y/(abs(z)^2)

%absolute f
md=abs(z)

%plotting the surfaces
ezsurf(re,im,md)
hold on
grid on
legend('Re(f)','Im(f)','Abs(f)')

