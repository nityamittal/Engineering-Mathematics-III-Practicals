syms x y z f1 f2

%DE= (aD^2) + (bDD')+ (cD'^2) = 0
%Auxiliary Equation: a*m^2 + b*m +c =0;
disp("For Differential Equation: (aD^2) + (bDD')+ (cD'^2) = 0")
a=input("Enter a:");
b=input("Enter b:");
c=input("Enter c:");

%taking the coefficients in a matrix
poly_equn = [a,b,c];

%finding the roots
r= roots(poly_equn);

if r(1) ~= r(2) 
    cf1 = f1*(y + r(1)*x);
    cf2 = f2*(y + r(2)*x);
elseif r(1)==r(2)
    cf1 = f1*(y + r(1)*x);
    cf2 = x*f2*(y + r(2)*x);
end
gen_soln = cf1 + cf2;

disp("The general solution: z = ")
disp(gen_soln);

