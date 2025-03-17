syms y(x) C

Dy = diff(y);
D2y = diff(Dy);

%Case 1: C>0
disp("Case 1: C>0 ")
assume(C>0)
ysol = dsolve(D2y+(C*y) == 0) == 0;
disp("The solution equation y:")
disp(ysol)

ysol1= subs(ysol,0);
ysol2 = subs(diff(ysol),1);

disp("The two equation formed after applying Boundary Value Conditions: ")
disp(ysol1)
disp(ysol2)

%from ysol1 and ysol2, we get cos(C^1/2) = 0
equn(C) = cos(C^.5) == 0;

[solc,par,cond] = solve(equn, C, 'ReturnConditions',true);

disp("The non-trivial Solution: Eigenvalues ")
disp([solc])
disp([par,cond])
disp("Eigenvector")
disp(equn(solc))

%Case 2: C<0
disp("Case 2: C<0 ")
assume(C<0)
ysol = dsolve(D2y+(C*y) == 0) == 0;
disp("The solution equation y:")
disp(ysol)

ysol1= subs(ysol,0);
ysol2 = subs(diff(ysol),1);

disp("The two equation formed after applying Boundary Value Conditions: ")
disp(ysol1)
disp(ysol2)

%case 3: C=0
disp("Case 3: C=0 ")

C=0;
ysol = dsolve(D2y+(C*y) == 0) == 0;
disp("The solution equation y:")
disp(ysol)

ysol1= subs(ysol,0);
ysol2 = subs(diff(ysol),1);

disp("The two equation formed after applying Boundary Value Conditions: ")
disp(ysol1)
disp(ysol2)
%Since C1=C2=0
disp("No non-trivial Solution Exists")

