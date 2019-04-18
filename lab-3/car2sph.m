function S = car2sph(R)

x = R(1);
y = R(2);
z = R(3);
r = norm(R);
rho = sqrt(x^2+y^2);
theta = acos(z/r);
phi = atan2(y,x);
S = [r,theta,phi];