% Find potential U at r from finite line charge located on z axis
% The line charge is from za to zb with line charge density rhoL(z). 



clear all; close all; clc;

syms z_prime;
syms x y;
eps0 = 8.854e-12;
r = [x y 0];
za = 1;
zb = 3;
r_prime = [0 0 z_prime];
rhoL = 20e-9;  % Note: rhoL should be written as a function of z_prime rather than z!

R = r - r_prime;
norm_R = sqrt(R(1)^2 + R(2)^2 + R(3)^2);   

dU = (1/4/pi/eps0)*rhoL/norm_R;
disp('Symbolically find the potential of line charge in rectangular system')
U_sym = int(dU,z_prime,za,zb)

ezsurf(U_sym);
