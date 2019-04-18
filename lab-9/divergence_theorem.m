% ex116.m

clear all; close all; clc;

syms x y z
A = [5*x*y x*y^2 4*z];
v = [x, y, z];
h = [1, 1, 1];
divA = div(A, v, h)
% The above is equivalent to: 
% divA = diff(A(1),x) + diff(A(2),y) + diff(A(3),z)
volume_integral = int(int(int(divA, x, 1, 3), y, -2, 4), z, -1, 2)


xmin = 1;
xmax = 3;
ymin = -2;
ymax = 4;
zmin = -1;
zmax = 2;
front = subs(A(1),x,xmax);
intFront = int(int(front,y,ymin,ymax),z,zmin,zmax);
back = - subs(A(1),x,xmin);
intBack = int(int(back,y,ymin,ymax),z,zmin,zmax);
right = subs(A(2),y,ymax);
intRight = int(int(right,x,xmin,xmax),z,zmin,zmax);
left = - subs(A(2),y,ymin);
intLeft = int(int(left,x,xmin,xmax),z,zmin,zmax);
top = subs(A(3),z,zmax);
intTop = int(int(top,x,xmin,xmax),y,ymin,ymax);
bottom = - subs(A(3),z,zmin);
intBottom = int(int(bottom,x,xmin,xmax),y,ymin,ymax);
SurfaceIntegral = intFront + intBack + intRight + intLeft + intTop + intBottom

