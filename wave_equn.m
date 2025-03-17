clear all;
close all;
%solving wave equation
% d2u/dt2=(k^2)*(d2u/dx2)
syms u(x,t) X(x) T(t) A B C D l n

%taking input
disp("The Wave Equation: Uxx=(k^2)*(Utt)")
k = input("Enter k:");
a = input("Enter the length of the string:");

%using method of variation of parameters
X=A*cos(l*x) + B*sin(l*x)
T=C*cos(l*k*t) + D*sin(l*k*t)

%susbstituting boundary conditions for X
X=subs(X,A,0);
X=subs(X,l,(n*pi)/a);

%susbstituting boundary conditions for T
T=subs(T,l,(n*pi)/a);
%bc1=0, bc2=0
C_sol=solve(subs(T,t,0)==0,C);
D_sol=solve(subs(diff(T,t),t,k)==0,D);

%substituting the constants in T
T=subs(subs(T,C,C_sol),D,D_sol);

%Solution
u=X*T;
disp("After substituting for constants, the solution u =")
disp(u)
