clear all;
close all;

syms y(x)

%initialising function
y = sin(2*x);

%using in-built function defining taylor series of order 20
y_taylor = taylor(y,x ,'Order',20);

disp(y_taylor)

%plotting sin2x
fplot(y,'red')
hold on
%plotting taylor exp of sin2x
fplot(y_taylor,'blue')
grid on
legend('yFunction','yTaylorSeries')
