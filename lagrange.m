syms x y u

Du=diff(u);
Dx=diff(x);
Dy=diff(y);

%equn: u(x+y)u_x + u(x-y)u_y = x^2 + y^2
disp("Equation : u(x+y)u_x + u(x-y)u_y = x^2 + y^2")

%applying langrange's method
Dx/(u*(x+y)) == Dy/(u*(x-y)) == Du/(x^2 + y^2);

%equns formed are: ydx + xdy -udu=0 and xdx-ydy-udu=0

C1 = (int(y*Dx,x) + int(x*Dy,y))/2 + int(u*Du,u);

C2 = 2*(int(x*Dx,x) - int(y*Dy,y) - int(u*Du,u));

disp("Function : f(C1,C2) = 0  where")
disp("C1=")
disp(C1)
disp("C2=")
disp(C2)



