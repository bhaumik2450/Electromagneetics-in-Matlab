

clear all; close all; clc;

syms x y z
A = [3*x x*y^2 -2*x*y*exp(-z)];
v = [x, y, z];
h = [1, 1, 1];
divA = div(A, v, h)
% The above is equivalent to: 
% divA = diff(A(1),x) + diff(A(2),y) + diff(A(3),z)
subs(divA, {x,y,z}, {1,-1,2}, 0) 
B = [y^2*z^3 2*x*y*z^3 3*x*y^2*z^2];
divB = div(B, v, h)
% The above is equivalent to: 
% divA = diff(A(1),x) + diff(A(2),y) + diff(A(3),z)
subs(divB, {x,y,z}, {3,2,1})

syms rho phi z alpha
A = [rho*exp(-(rho/alpha)^2) 0 0];
divA = (1/rho)*diff(rho*A(1), rho) + (1/rho)*diff(A(2), phi) + diff(A(3),z);
divA = simplify(divA)

