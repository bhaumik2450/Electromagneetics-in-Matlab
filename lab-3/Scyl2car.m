function Acar = Scyl2car(Acyl)
syms x y z;
rho = sqrt(x^2+y^2);
phi = atan(y,x);
Acyl = subs(Acyl);

[K L] = size(Acyl);
if (K*L) == 1    % scalar field 
    T = 1;
else
    if L == 1    % column vector field
       Acyl = Acyl.';  
    end
       T = [cos(phi) -sin(phi) 0; ...
            sin(phi) cos(phi)  0; ...
             0          0      1]; 
end
Acar = Acyl*T.';
Acar = simplify(Acar);
if L == 1 & K ~= 1     % if the input is column vector field
   Acar = Acar.';
end

% add the following sentences when using 2008b and after
% Acar = subs(Acar, abs(x+i*y), sqrt(x^2+y^2));
% Acar = simplify(Acar);