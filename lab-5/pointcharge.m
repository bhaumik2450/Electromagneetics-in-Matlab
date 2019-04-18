function E = pointcharge(r,Q,r_prime)
% This function is to find the electrical field at r from a point charge Q
% at r_prime. 



eps0 = 8.854e-12;
R = r - r_prime;
norm_R = norm(R);
a_R = R/norm_R;
E = (1/4/pi/eps0)*Q/norm_R^2*a_R;