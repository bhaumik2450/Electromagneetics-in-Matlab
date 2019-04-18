
clear all; close all; clc;

syms x y z_prime real
syms a I PI mu0 positive

a_z = [0 0 1];
r = [x y 0];
r_prime = [0 0 z_prime];
R = r-r_prime;
norm_R = sqrt(R(1)^2+R(2)^2+R(3)^2);
a_R = R/norm_R;
dH = cross(a_z,a_R)/norm_R^2

disp('Magnetic field Intensity in Cartesian system')
HH = int(dH,z_prime);   % The integration int(dB,z_prime,-a, a) is difficult 
                        % to run in MatLab 2009b. Therefore, I split it
                        % into two steps. 
I = 1;

H = (subs(HH,z_prime,1) - subs(HH,z_prime,-1))*I/4/pi
ezsurf(H);
