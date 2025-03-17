clear all;
close all;
syms y(x) roc(x)

%initializing y
y=sqrt(4*x);

%differentiating y
Dy = diff(y);
D2y = diff(y,x,2);

%finding the radius of curvature
roc(x) = ((1+Dy^2)^1.5)/D2y

%radius of curvature for P(4,4)
disp("The Radius of Curvature at P(4,4): ")
disp(roc(4))

%initializing x and y for focus (1,0)
xfoc=1;
yfoc=0;

disp("The Ratio for Varying P(i,j) :")
for j=1:6
    i=j*j/4;
    dist3 = ((xfoc-i)^2 + (yfoc-j)^2)^1.5;
    roc2 = (roc(i))^2;
    disp(dist3/roc2)
end

%plotting function declaration
y=2*(x^.5);


fplot(y,[-1,10],'blue')
hold on
fplot(-y,[-1,10],'blue')

%value of x for Tangent
xtgt=4;

Dy(x)= diff(y);

%tangent=slope*x+offset
%slope=Dy
slope=Dy(xtgt);

%value of y for Tangent
ytgt=sqrt(4*xtgt);

hold on
%plotting the tangent point
plot(xtgt,ytgt,'r*');

syms ytangentline
%plotting the tangent line
ytangentline=slope*(x-xtgt)+ ytgt;
fplot(ytangentline)