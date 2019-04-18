function G = grad(U,v,h)
% Symbolic gradient operation of scalar field U with repect to variables
% defined in vector v with differential length coefficient defined in h
% Note: U, v and h must be symbolic type

% written by Prof. Thomas Wu 
% at the University of Central Florida

% first version finished on June 5, 2008

G1 = diff(U,v(1))/h(1);
G2 = diff(U,v(2))/h(2);
G3 = diff(U,v(3))/h(3);
G = [G1 G2 G3];
% G is symbolic type vector field
G = simplify(G);