function R = cyl2car(P)

rho = P(1);
phi = P(2);
z = P(3);
x = rho*cos(phi);
y = rho*sin(phi);
R = [x,y,z];