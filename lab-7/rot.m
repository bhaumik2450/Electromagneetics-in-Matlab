function G = rot(F,v,h)


[K L] = size(F);
E = F.*h;
G1 = (diff(E(3),v(2)) - diff(E(2),v(3)))/h(2)/h(3);
G2 = (diff(E(1),v(3)) - diff(E(3),v(1)))/h(1)/h(3);
G3 = (diff(E(2),v(1)) - diff(E(1),v(2)))/h(2)/h(1);
% Gs are symbolic type vector field
if K == 1
    G = [G1 G2 G3];
elseif L == 1
    G = [G1; G2; G3];
end
G = simplify(G);
