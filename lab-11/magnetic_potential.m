 
% Use magnetic vector potential to find magnetic flux density on xoy plane 
% (z=0) from a line current I on z axis from -a to a. 



clear all; close all; clc;

syms x y z z_prime rho phi real
syms a I PI mu0 positive
I = 1;
mu0 = 4*pi*(10^-7)
r = [3 2 5];
r_prime = [0 0 z_prime];
R = r-r_prime;
norm_R = sqrt(R(1)^2+R(2)^2+R(3)^2);
dA = 1/norm_R;
disp('Magnetic vector potential A in Cartesian system')
A = [0 0 int(dA,z_prime,-1,1)*mu0*I/4/pi]
double(A)
