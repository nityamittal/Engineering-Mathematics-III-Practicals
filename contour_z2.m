close all;
clear all;
%specifying limits of x and y
x = linspace(-15,20);
y = linspace(-15,20);

%matrix of x and y
[X,Y] = meshgrid(x,y);

%complex number z
z= X + (1i*Y);

%u= x^2-y^2, v=2xy
%f=x^2 + (iy)^2 + 2xyi
%f=z^2
%harmonic function f
f= z^2;

%equipotential lines: contour plot
contour(X,Y,imag(f),'r');
hold on
contour(X,Y,real(f),'b');
grid on
legend("Red = Imaginary Part, Blue = Real Part")
