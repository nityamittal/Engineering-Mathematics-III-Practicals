%plotting curves for f=constant
close all;
clear all;

syms rf(x) imf(y) z(x,y)

%z=x + i*y;
%f=1/z; f=u+iv

%let
c=.5;

%const = real(f) = x/(x^2+y^2)
rf = sqrt((-c*x*x + x)/c);
fplot(rf,'r')
hold on
fplot(-rf,'r')
hold on

%const = imag(f) = -y/(x^2+y^2)
im(y) =sqrt((c*y*y +y)/c);
fplot(im,'b')
hold on
fplot(-im,'b')
grid on
legend('Re(f)','Re(f)','Im(f)', 'Im(f)')




