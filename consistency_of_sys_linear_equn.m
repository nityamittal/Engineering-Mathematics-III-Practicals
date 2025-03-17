clear all;
close all;

%Input the Coefficient Matrix
a = input("Enter the coefficient matrix A: ")

%Input the RHS Vector
d = input("Enter the RHS Vector B: ")

%Augment the matrices
ad=[a,d];

%finding ranks of the matrices
rank_a = rank(a);
rank_ad=rank(ad);

if rank_a == rank_ad && rank_a < size(a,1)
    disp("The system of Equations is CONSISTENT and DEPENDANT.");
elseif rank_a == rank_ad && rank_a == size(a,1)
   disp("The system of Equations is CONSISTENT and UNIQUE.");
elseif rank_a ~= rank_ad 
    disp("THe system of equations is NOT CONSISTENT.")

end
