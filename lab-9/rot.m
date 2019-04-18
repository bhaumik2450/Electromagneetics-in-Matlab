function G = rot(F,v,h)
% Symbolic rotor (curl) operation of vector field E with repect to variables
% defined in vector v with differential length coefficient defined in h
% Note: F, v and h must be symbolic type

% written by Prof. Thomas Wu 
% at the University of Central Florida

% first version finished on June 5, 2008

[K L] = size(F);
E = F.*h;
G1 = (diff(E(3),v(2)) - diff(E(2),v(3)))/h(2)/h(3);
G2 = (diff(E(1),v(3)) - diff(E(3),v(1)))/h(1)/h(3);
G3 = (diff(E(2),v(1)) - diff(E(1),v(2)))/h(2)/h(3);
% Gs are symbolic type vector field
if K == 1
    G = [G1 G2 G3];
elseif L == 1
    G = [G1; G2; G3];
end
G = simplify(G);
