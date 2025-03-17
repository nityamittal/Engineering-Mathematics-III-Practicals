%% sturm_liouville: Calculate the eigenvalues and eigenfunctions for a
%% Sturm Liouville problem with boundaries [0,L] and eigenvalue lambda 
%% such that X'(L)=X'(0)=0
function[e_value,e_function,non_zero] = sturm_liouville(L)
syms y(x)
syms lambda n
sprintf('solving for various condition...')
sprintf('when lambda > 0')
assume(lambda > 0)
solution = dsolve(diff(y, 2) + lambda*y == 0);
e_function = solution;
diff_sol = diff(solution, x);
vals = solve(subs(diff_sol,0) == 0, subs(diff_sol,L) == 0,lambda);
non_zero = vals;
sprintf('Non-zero values in the solution')
vals
%% Eigenvalues for this problem
e_value = [(n*pi) / L].^2;
sprintf('when lambda = 0')
try
    solution = dsolve(subs(diff(y, 2) + lambda*y == 0), lambda, 0);
catch
    sprintf('No non-trivial solution')
end
sprintf('When lambda < 0')
assume(lambda < 0);
solution = dsolve(diff(y, 2) + lambda*y == 0);
diff_sol = diff(solution, x);
%% No Explicit non-trivial solution possible
vals = vpasolve(subs(diff_sol, 0) == 0, subs(diff_sol,L) == 0);
end