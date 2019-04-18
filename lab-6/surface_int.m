clear all; close all; clc;

syms r theta phi A0
Ar = r/3;
integrand = subs(Ar*r^2*sin(theta), r, 0.3, 0);

SurfaceIntegral = int(int(integrand, theta, 0,pi), phi, 0, 2*pi)
double(SurfaceIntegral)