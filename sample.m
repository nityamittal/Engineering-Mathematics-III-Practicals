clear all;
close all;
x = linspace(-15,20);
y = linspace(-15,20);
[X,Y] = meshgrid(x,y);
u=(X^3) - 3*X*(Y^2);
v=3*Y*(X^2)- (Y^3);
contour(X,Y,v,'r');
hold on
contour(X,Y,u,'b');
grid on
legend("Red = Imaginary Part, Blue = Real Part")


