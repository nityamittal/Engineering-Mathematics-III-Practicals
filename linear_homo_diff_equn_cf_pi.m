syms w x y z f1 f2 

%DE= (aD^2) + (bDD')+ (cD'^2) = 0
%Auxiliary Equation: a*m^2 + b*m +c =0;
disp("For Differential Equation: (aD^2) + (bDD')+ (cD'^2) = (2x+3y) + tan(x+y)")
a=input("Enter a:");
b=input("Enter b:");
c=input("Enter c:");

%complemantary function
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
cf = cf1 + cf2;

%particular integral
int_pi = int(w,w);
int_pi = int(int_pi,w);

%F(D,D')=F(aplha,beta)= F(2,3) for (2x+3y)
denominator1 = a*2*2 + b*2*3 + c*3*3;

%F(D,D')=F(aplha,beta)= F(1,1) for tan(x+y)
denominator2 = a*1*1 + b*1*1 + c*1*1;

if denominator~=0
    pi1= (1/denominator1)*(int_pi);
    pi2= (1/denominator2)*(int_pi);
end

pi1 = subs(pi1, w, 2*x+3*y);
pi2 = subs(pi2, w, tan(x+y));

pi = pi1 + pi2;

%general solution
gen_soln = cf + pi;

disp("The general solution: z = CF + PI = ")
disp(gen_soln);

