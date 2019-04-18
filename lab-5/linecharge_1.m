

clear all; close all; clc;

syms z_prime real;

eps0 = 8.854e-12;
syms x y;
r = [x y 0];
za = 1;
zb = 3;
r_prime = [0 0 z_prime];
rho_L = 20e-9;  % Note: rho_L should be written as a function of z_prime rather than z!

R = r - r_prime;
norm_R = sqrt(R(1)^2 + R(2)^2 + R(3)^2)   % Note: (1) MatLab norm(R) cannot be used for symbolic variables. 
                                           %       (2) Position vector R is always real! 
a_R = R/norm_R

dE = (1/4/pi/eps0)*rho_L/norm_R^2*a_R
disp('Find the electric field E of line charge in rectangular system')
E = int(dE,z_prime,za,zb)
norm_E = sqrt(E(1)^2 + E(2)^2 + E(3)^2)
ezsurf(norm_E)




