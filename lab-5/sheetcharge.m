function E = sheetcharge(r,rho_S,A,a_S)
% Find the electric field at r from an infinitely long and wide sheet charge assuming that
% the charge distribution is uniform. 
% A is a point that the sheet charge passes, and a_S is the normal direction of the
% sheet. 


eps0 = 8.854e-12;
a_s = a_S/norm(a_S)  % can work even if U_S has not been normalized
R_AP = r - A         % vector pointing from A to P which is the field point at r
d = dot(R_AP,a_s)
E = 1/2*rho_S/eps0*sign(d)*a_s;  % only the sign of d contributes
