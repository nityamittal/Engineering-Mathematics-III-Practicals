clear all;
close all;
syms x y z p q f
%p = diff(f,x);
%q = diff(f,y);

%equn
f(x,y) = p^2 - (y^2)*q - y^2 + x^2;
disp("Equation: f(x,y,z,p,q) = ")
disp(f)

disp("Using Charpit's method we get, ")
disp("dp/(2x) = -dx/(2p)")
%integrating and multiplying with a constant 2
%C2 = 2*(int(p, p) + int(x,x))
syms C2

%substituting for p
p = sqrt(C2 - 2*int(x,x));
%substituting for q
q = C2/(y^2) -1;

disp("p=")
disp(p)
disp("On substituting in f: ")
disp("q=")
disp(q)

%dz= pdx + qdy
z= int(p,x) +int(q,y);
disp("Solution z = ")
disp(z)