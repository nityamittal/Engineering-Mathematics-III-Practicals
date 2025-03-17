
m = 0;
x = linspace(0,2*pi,10);
t = [linspace(0,1,10),linspace(1,5,10)];
    
u = pdepe(m, @pdex1pde,@pdex1ic,@pdex1bc,x,t);
usol=u(:,:,1);
surf(x,t,usol)

function [c,f,s] = pdex1pde(x,t,u,dudx)
c = 1;
f = 2*dudx;
s = 0;
end

function u0 = pdex1ic(x)
u0 = sin(x);
end

function [pl,ql,pr,qr] = pdex1bc(xl,ul,xr,ur,t)
pl = ul;
ql = 0;
pr = ur;
qr = 0;
end