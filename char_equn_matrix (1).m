syms x
a=input("Enter a matrix: ")
poly_a = charpoly(a,x) == 0;
disp("Characteristic Equation of the matrix: ")
disp(poly_a)
sol_a=solve(poly_a);
disp("Characteristic roots (eigenvalues): ")
eig(a)
disp(sol_a)