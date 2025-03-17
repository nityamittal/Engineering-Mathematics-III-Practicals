%plotting curves for f=constant
close all;
clear all;

syms md(x) z(x,y)

z=x + i*y;
%f=1/z; f=u+iv
%const = abs(f)= sqrt(x^2+y^2)

%let
c=1;

md(x) = sqrt(c*c - x*x);
fplot(md,'r')
hold on
fplot(-md,'r')
hold on
