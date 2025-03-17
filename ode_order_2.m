clear all;
close all;
syms y(x) R(x) % function D2y + 4y = sec(x) 

R = sec(x);

% Declaring Constants
c1= 'C1';
c2= 'C2';

%equn= m^2+4=0, m=+-2i
%c.f. = C1sin2x + C2cos2x;
syms y1(x) y2(x)
y1 = sin(2*x);
y2 = cos(2*x);
yconst=[y1 y2];

%finding Wronskain
W_matrix(x)=[yconst; diff(yconst)];
W(x)= det(W_matrix);

%function u,v such that yp= ucosx + vsinx
syms u(x) v(x) 

u = int(-1*y2*R/W);
v = int(y1*R/W);

%solution
ySolution = c1*sin(2*x) + c2*cos(2*x) + u*cos(x) + v*sin(x)


