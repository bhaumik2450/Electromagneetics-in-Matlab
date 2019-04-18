% ex112.m

clear all; close all; clc;

syms r theta phi 
rho_v = r*cos(phi);
rmin = 1;
rmax = 5;
thetamin = pi/6;
thetamax = pi/2;
phimin = pi/4;
phimax = 3*pi/5;
func = rho_v*r^2*sin(theta);
Q = int(int(int(func, r, rmin, rmax), theta, thetamin, thetamax), phi, phimin, phimax) 
