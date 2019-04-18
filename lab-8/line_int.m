clear all; close all; clc;

% We can solve the problem in either Cartesian or cylindrical systems

% In Cartesian coordinates
syms x y real
Fx = 3*x*y;
Fy = 4*x;
Fx = subs(Fx,y,sqrt(16-x^2),0);
Fy = subs(Fy,x,sqrt(16-y^2),0);
dW = int(Fx,x,4,0) + int(Fy,y,0,4)

% In Cylindrical coordinates
syms x y z rho phi real
Fcar = [3*x*y, 4*x, 0];
Fcyl = Scar2cyl(Fcar)
Fphi = Fcyl(2);
Fphi_rho = subs(Fphi*rho, rho, 4, 0);
dW = int(Fphi_rho, phi, 0, pi/2)