clear all;
close all;

%specifying limits of x and y
x = linspace(-15,20);
y = linspace(-15,20);

%matrix of x and y
[X,Y] = meshgrid(x,y);

%defining u and v
u=(X^3) - 3*X*(Y^2);
v=3*Y*(X^2)- (Y^3);

%equipotential lines: contour plot
contour(X,Y,v,'r');
hold on
contour(X,Y,u,'b');
grid on
legend("Red = Imaginary Part, Blue = Real Part")
