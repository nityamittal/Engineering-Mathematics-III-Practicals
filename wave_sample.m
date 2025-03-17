clear all;
close all;
syms U(x,t) X(x) T(t) l a A B C D n L 
disp("The Wave Equation: Uxx=(a^2)*(Utt)")
a=input('Enter a :');
L=input('Enter the length of the string:');

X=A*cos(l*x)+B*sin(l*x)
T=C*cos(l*a*t)+D*sin(l*a*t)
%satisfying boundary value conditions
X=subs(X,A,0);
X=subs(X,l,(n*pi/L));

%susbstituting boundary conditions for T
T=subs(T,l,(n*pi)/L);
%bc1=0, bc2=0

C_sol=solve(subs(T,t,0)==0,C);
D_sol=solve(subs(diff(T,t),t,a)==0,D);
disp("After substituting for constants, the solution u =")
U=X*T