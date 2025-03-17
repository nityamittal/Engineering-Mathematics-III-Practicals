
clear all;
close all;
syms y1(t) y2(t)
ode1 = diff(y1) == 2*y2 + y1 + 2*exp(4*t);
ode2 = diff(y2) == y2 + 2*y1 + exp(4*t);
od = [ode1; ode2]

S = dsolve(od)

[y1Sol(t), y2Sol(t)] = dsolve(od)

constraint1 = y1(0) == 1;
constraint2 = y2(0) == -1;
constraints = [constraint1; constraint2];
[y1Sol(t), y2Sol(t)] = dsolve(od,constraints)

fplot(y1Sol,[0,30])
hold on
fplot(y2Sol,[0,30])
grid on
legend('y1Sol','y2Sol')
