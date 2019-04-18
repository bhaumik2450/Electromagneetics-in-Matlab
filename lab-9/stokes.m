% ex118.m

clear all; close all; clc;

syms x y z
A = [x*y -2*x 0];
v = [x, y, z];
h = [1, 1, 1];


curlA =  [diff(A(3),y)-diff(A(2),z) ...
           diff(A(1),z)-diff(A(3),x) ...  
           diff(A(2),x)-diff(A(1),y)] 
func = curlA(3);
surface_integral = int(int(func,x,0,sqrt(9-y^2)),y,0,3)
line_integral = int(subs(A(1),y,sqrt(9-x^2),0), x,3,0) + ...
                        int(subs(A(2),x,sqrt(9-y^2),0), y,0,3)
double(line_integral)