function E = linecharge(r,rho_L,A,a_L)
% Find the electric field at r from an infinitely long line charge assuming that
% the charge distribution is uniform. 
% A is a point that the line charge is passing and a_L is the direction of the
% line charge. 



eps0 = 8.854e-12;
a_l = a_L/norm(a_L);  % can work even if a_L has not been normalized
R_AP = r - A;         % vector pointing from A to P which is the field point at r
Rperp = cross(R_AP,a_l); 
a_Rperp = Rperp/norm(Rperp); % The direction that is perpedicular to the plane spanned by the line and P.   
a_E = cross(a_l,a_Rperp);    % find the direction of electric field which is in local z direction

d = dot(R_AP,a_E);
E = 1/2*rho_L/eps0/pi/d*a_E;
