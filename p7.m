syms  x  y  u(x,y)  v(x,y)  %declaring  the  functions  and  variables u  =  input('Input  u  :  ')
v  =  input('Input  v  :  ')
const  =  input('Enter  the  constant:  ');  %  input  constant  from  user
% equipotential  lines u = u - const;
v  =  v - const;
%  partial  differentiation  of  u  and  v  with  respect  to  x  and  y ux = diff(u,x);
uy  =  diff(u,y);
vx  =  diff(v,x);
vy  =  diff(v,y);
slope_u  =  -(ux/uy);  %  slope  of  tangent  to  u slope_v  =  -(vx/vy);  %  slope  of  tangent  to  v slope  =  slope_u  *  slope_v;  %  product  of  slopes
disp('u  and  v  are  orthogonal  since  product  of  slopes  is:  '); disp(slope);
hold  on;  %  retains  plot
% plotting u and v
plot1  =  ezplot(u,  [-10  10  -10  10]);
plot2  =  ezplot(v,  [-10  10  -10  10]); set(plot1,  'Color',  'b');
set(plot2,  'Color',  'r'); xlabel('z');  %  x  label  of  graph ylabel('f(z)');  %  y  label  of  graph
title('Plot  of  u  and  v');  %  title  of  graph
