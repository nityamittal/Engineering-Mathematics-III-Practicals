%plotting curves for f=constant
close all;
clear all;

syms rf(x) imf(y) z(x,y)

%z=x + i*y;
%f=z^3; f=u+iv

%let
c=.5;

%const = real(f) = sqrt((x*x*x - c)/(3*x))
rf = sqrt((x*x*x - c)/(3*x));
fplot(rf,'r')
hold on
fplot(-rf,'r')

%const = imag(f) = 
im(y) =sqrt((y*y*y + c)/(3*y));
fplot(im,'b')
hold on
fplot(-im,'b')
grid on
legend('Re(f)', 'Re(f)', 'Im(f)','Im(f)')




