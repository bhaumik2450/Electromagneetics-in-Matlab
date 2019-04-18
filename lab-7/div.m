function U = div(F,v,h)


hhh = h(1)*h(2)*h(3);
hh = hhh./h;
E = F.*hh;
U = (diff(E(1),v(1)) + diff(E(2),v(2)) + diff(E(3),v(3)))/hhh;   % symbolic type scalar field
U = simplify(U);