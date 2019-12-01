%Metodo de Biseccion para soloucion de funciones no lineales
clear
clc
tol = 1e-6;%;tolerancia
x1=0;
x2=2;
ecuation = @(x0) 4*(x0^3)+20*(x0^2)-2*x0-10; %anon function

for i=1:2
    xr = (x1+x2)/2;
    fx1 = ecuation(x1);
    fxr = ecuation(xr);
    fxrfx1 = fx1 * fxr;
    error = abs(x2-x1);

    while error > tol
        if fxrfx1 > 0
            x1=xr;
        else
            x2=xr;
        end

        xr = (x1+x2)/2;
        fx1 = ecuation(x1);
        fxr = ecuation(xr);
        fxrfx1 = fx1 * fxr;
        error = abs(x2-x1);
    end
    if i == 1
        x1=-2;
        x2=0;
        xr2= xr;
    end
end

fprintf("\nLas raices buscada es: %f y %f",xr, xr2);

