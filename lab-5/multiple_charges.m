clear all; close all; clc;
syms x y z ;
r = [x y 0];  % coordinate of field point at point P

Q1 = 1;
r1 = [1 3 0];
    
Q2 = 2;
r2 = [4 2 0];
    
Q3 = -3;
r3 = [0 0 1];


E1 = pointcharge(r,Q1,r1);

E2 = pointcharge(r,Q2,r2);
E3 = pointcharge(r,Q3,r3);

disp('The total electric field at P')
E = E1 + E2 +E3
norm_E = sqrt(E(1)^2 + E(2)^2 + E(3)^2)
ezsurf(norm_E)

disp('If a charge q = 2C located at P, the force on it is:')
q = 2;
F = q*E



