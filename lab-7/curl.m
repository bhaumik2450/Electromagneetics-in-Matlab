
clear all; close all; clc;

% Symbolically calculate curl of a vector field
syms rho phi z omega alpha
A = [0 0 rho*phi*z];
v = [rho, phi, z];
h = [1, rho, 1];
curlA = rot(A, v, h)
curlA = subs (curlA, {rho,phi,z}, {2, 30*pi/180 , 3})
% The above is equivalent to: 
% curlA = [diff(A(3),phi)/rho-diff(A(2),z) ...
%               diff(A(1),z)-diff(A(3),rho) ...
%               (diff(A(1),phi)-diff(rho*A(2),rho))/rho];
% curlA = simplify(curlA)
syms x y z;

B = [x*y*z x*y*z 0]
v = [x y z]
h = [1 1 1]
curlB = rot(B,v,h);
curlB = subs(curlB , {x,y,z},{3,2,1})

syms r theta phi  
C = [sin(theta) sin(theta) sin(theta)];
v = [r, theta , phi];
h = [1, r, r*sin(theta)];
curlC = rot(C, v, h)
curlC = subs (curlC, {r,theta,phi}, {4, 30*pi/180 , 45*pi/180})
curlC = double(curlC)


