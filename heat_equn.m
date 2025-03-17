clear all;
close all;
%solving heat equation
% du/dt=k*(d2u/dx2)

xmesh = linspace(0,2*pi,20);
tspan = [linspace(0,0.05,10), linspace(.5,5,10)];
m=0;

%solution
sol = pdepe(m, @heatpde,@icfun,@bcfun, xmesh, tspan)
usol=sol(:,:,1)
surf(xmesh,tspan,usol)
grid on
%legend("Solution for Heat Equation")

%assuming k=.2
function [c, f, s] = heatpde(x,t,u,dudx)
c=1;
f=2*dudx;
s=0;
end

function u0 = icfun(x)
u0 = sin(x);
end

function [pl,ql,pr,qr] = bcfun(xl,ul,xr,ur,t)
pl=ul;
ql=0;
pr=ur;
qr=0;
end