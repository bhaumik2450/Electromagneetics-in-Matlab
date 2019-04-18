function Asph = Scar2sph(Acar)
syms r theta phi;
x = r*sin(theta)*cos(phi);
y = r*sin(theta)*sin(phi);
z = r*cos(theta);
Acar = subs(Acar);

[K L] = size(Acar);
if (K*L) == 1    % scalar field 
    T = 1;
else
    if L == 1
        Acar = Acar.';     % column vector field
    end
    T = [sin(theta)*cos(phi) cos(theta)*cos(phi) -sin(phi); ...
         sin(theta)*sin(phi) cos(theta)*sin(phi)  cos(phi); ...
          cos(theta)          -sin(theta)            0]; 
end
Asph = Acar*T;
Asph = simplify(Asph);
if L == 1 & K ~= 1
    Asph = Asph.';     % if the input is column vector field
end