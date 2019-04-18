function Pcyl = car2cyl(Pcar)
    x = Pcar(1);  
    y = Pcar(2);
    z = Pcar(3);
    rho  =  sqrt(x^2+y^2);
    phi  =  atan2(y, x) ;   
    Pcyl = [rho, phi, z];
end