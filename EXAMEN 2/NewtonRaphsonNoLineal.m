%Metodo de Newton-Raphson para soloucion de funciones no lineales
clear
clc
ecuation = @(x0) 4*x0^3+20*x0^2-2*x0-10; %anon function
i = 1; % contador de iteraciones
x0= 5;
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