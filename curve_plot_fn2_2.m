%plotting curves for f=constant
close all;
clear all;

syms md z(x,y)

z=x + i*y;
%f=1/z; f=u+iv
%const = abs(f) = x^6 + y^6 + 3*x*x*y^4 + 3*y*y*x^4

%let
c=1;

md = solve(x^6 + y^6 + 3*x*x*y^4 + 3*y*y*x^4 == c, [x y])
md.x
md.y
fplot(md.x,'r')
hold on
fplot(md.y,'r')
hold on
