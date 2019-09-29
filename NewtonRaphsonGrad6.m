%Metodo de Newton-Raphson para soloucion de funciones no lineales
clear
clc
%ecuation = @(x0) 2*x0^2-2*x0-12; %anon function
i = 1; % contador de iteraciones
c0= input("Introduzca el valor de coeficiente ind= ");
c1= input("Introduzca el valor de coeficiente 1= ");
c2= input("Introduzca el valor de coeficiente 2= ");
c3= input("Introduzca el valor de coeficiente 3= ");
c4= input("Introduzca el valor de coeficiente 4= ");
c5= input("Introduzca el valor de coeficiente 5= ");
c6= input("Introduzca el valor de coeficiente 6= ");
ecuation = @(x0) c6*x0^6+c5*x0^5+c4*x0^4+c3*x0^3+c2*x0^2+c1*x0+c0; %anon function

x0= input("Introduzca el valor de x0= ");
error = 20;
tol = 1e-6;%;tolerancia
dx = tol;
fprintf("iteraciones\t\t x1 \t\t x0 \t\t error \n");
while error>tol
    f = ecuation(x0);
    derivada = (ecuation(x0+dx)-ecuation(x0))/dx;
    x1 = x0 -(f/derivada);
    error = abs((x1-x0)/x1);
    fprintf("%d\t\t %d \t\t %d \t\t %d \n",i,x1,x0,error);
    x0=x1;
    i=i+1;
end
fprintf("La raiz buscada es: %f",x1);