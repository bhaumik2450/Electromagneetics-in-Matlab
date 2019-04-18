function Acar = Ssph2car(Asph)
syms x y z;
rho = sqrt(x^2+y^2);
r = sqrt(x^2+y^2+z^2);
theta = atan(rho,z);
phi = atan(y,x);
Asph = subs(Asph);

[K L] = size(Asph);
if (K*L) == 1    % scalar field 
    T = 1;
else 
    if L == 1
       Asph = Asph.';   % column vector field
    end
    T = [sin(theta)*cos(phi) cos(theta)*cos(phi) -sin(phi); ...
         sin(theta)*sin(phi) cos(theta)*sin(phi)  cos(phi); ...
          cos(theta)          -sin(theta)            0];
end
Acar = Asph*T.';
Acar = simplify(Acar);
if L == 1 & K ~= 1
    Acar = Acar.';   % if the input is column vector field
end

% add the following sentences when using 2008b and after
% Acar = subs(Acar, abs(x+i*y), sqrt(x^2+y^2));
% Acar = simplify(Acar);