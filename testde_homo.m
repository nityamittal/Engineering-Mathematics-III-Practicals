clear all;
close all;
syms e1(t) e2(t)
a=[1,2;2,1]

eigenval=eig(a);
[eval,evect]=eig(a);

disp("The eigenvalues are:")
disp(eigenval)
e1=eigenval(1)*t;
e2=eigenval(2)*t;

disp("Solution of the equation:")
disp("(y1,y2)= ")
disp("C1*(")
disp(evect(:,1))
disp(")*e^")
disp(e1)
disp("  +  C2*(")
disp(evect(:,2))
disp(")*e^")
disp(e2)

syms c1 c2

eq1= c1*evect(1,1)+c2*evect(1,2) == 1;
eq2 = c1*evect(2,1)+c2*evect(2,2) == -1;

sol = solve([eq1, eq2], [c1, c2]);
disp("[C1,C2]=")
disp(sol.c1)
disp(sol.c2)

disp("Solution of the equation:")
disp("(y1,y2)= ")
disp(sol.c1)
disp("*(")
disp(evect(:,1))
disp(")*e^")
disp(e1)
disp("  +  ")
disp(sol.c2)
disp("*(")
disp(evect(:,2))
disp(")*e^")
disp(e2)

syms y1(t) y2(t)
y1= (sol.c1*evect(1,1)*exp(e1))+ (sol.c2*evect(1,2)*exp(e2))
y2= (sol.c1*evect(2,1)*exp(e1))+ (sol.c2*evect(2,2)*exp(e2))

fplot(y1,[-20,20])
hold on
fplot(y2,[-20,20])
grid on
legend('y1Sol','y2Sol')


