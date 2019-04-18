clear all; close all; clc;

syms x y z a l 
func  = 40*x*y*z;
V = int(int(int(func, x, 0, 2), y, 0, 2), z, 0, 2) 