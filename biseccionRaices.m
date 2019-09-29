%Metodo de Biseccion para soloucion de funciones no lineales
clear
clc
% Uncomment to test, result should be -1.732050
% tol = 1e-6;%;tolerancia
% c6=0;
% c5=0;
% c4=0;
% c3=0;
% c2=1;
% c1=0;
% c0=-3;
% x1=-2;
% x2=0;
c0= input("Introduzca el valor de coeficiente ind= ");
c1= input("Introduzca el valor de coeficiente 1= ");
c2= input("Introduzca el valor de coeficiente 2= ");
c3= input("Introduzca el valor de coeficiente 3= ");
c4= input("Introduzca el valor de coeficiente 4= ");
c5= input("Introduzca el valor de coeficiente 5= ");
c6= input("Introduzca el valor de coeficiente 6= ");
ecuation = @(x0) c6*(x0^6)+c5*(x0^5)+c4*(x0^4)+c3*(x0^3)+c2*(x0^2)+c1*x0+c0; %anon function

tol = input("Introduzca el valor de la tolerancia= ");

fprintf("\nIntroduzca los valores de referencia del intervalo de búsqueda");
x1= input("\nIntroduzca el valor de x1= ");
x2= input("Introduzca el valor de x2= ");


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

fprintf("\nLa raiz buscada es: %f",xr);
fprintf("\nIntervalos de la ecuacion: %f  /  %f",x1,x2);
fprintf("\nLa ecuacion evaluada es:");
disp(ecuation);
