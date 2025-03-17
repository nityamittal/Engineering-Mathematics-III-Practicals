clear all;
close all;

%specifying limits of x and y
x = linspace(10,20);
y = linspace(10,20);

%matrix of x and y
[X,Y] = meshgrid(x,y);

%complex number z
z= X + (1i*Y);

%u= (cosy)e^x, v=(siny)e^x
%f=(cosy + isiny)e^x= e^(x+iy)
%f=e^z
%harmonic function f
f= exp(z);

%equipotential lines: contour plot
contour(X,Y,imag(f),'r');
hold on
contour(X,Y,real(f),'b');
grid on
legend("Red = Imaginary Part, Blue = Real Part")
