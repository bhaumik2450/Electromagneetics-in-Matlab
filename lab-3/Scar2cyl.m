function Acyl = Scar2cyl(Acar)
syms rho phi z;
x = rho*cos(phi);
y = rho*sin(phi);
theta = atan(rho,z);  % In case the input has theta. 
Acar = subs(Acar); 

[K L] = size(Acar);
if (K*L) == 1    % scalar field 
    T = 1;
else
    if L == 1    % column vector field
        Acar = Acar.';   
    end
    T = [cos(phi) -sin(phi) 0; ...
         sin(phi) cos(phi)  0; ...
           0       0        1]; 
end
Acyl = Acar*T;
Acyl = simplify(Acyl);
if L == 1 & K ~= 1
   Acyl = Acyl.';    % if the input is column vector field
end
