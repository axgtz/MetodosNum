%Metodo de la Secante para soloucion de funciones no lineales
clear
clc
%ecuation = @(x0) 2*x0^2-2*x0-12; %anon function 
%disp(roots([1,2,1,4,2,5,7]));
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
x1= input("Introduzca el valor de x1= ");
ogx0 = x0;
ogx1 = x1;

fx0 = ecuation(x0);
fx1 = ecuation(x1);
fp = (fx1-fx0)/(x1-x0);
x2 = x0-(fx0/fp);

error = abs(x2-x1);
tol = 1e-6;%;tolerancia

fprintf("iteraciones\t\t x0 \t\t x1 \t\t error \n");
fprintf("%d\t\t %d \t\t %d \t\t %d \n",i,x0,x1,error);

while error>tol
    i = i+1;
    x0 = x1;
    x1 = x2;
    fx0 = ecuation(x0);
    fx1 = ecuation(x1);
    fp = (fx1-fx0)/(x1-x0);
    x2 = x0-(fx0/fp);
    error = abs(x2-x1);

    fprintf("%d\t\t %d \t\t %d \t\t %d \n",i,x0,x1,error);
end
fprintf("La raiz buscada es: %f",x2);
fprintf("\nEcuacion");
disp(ecuation);
fprintf("\nIntervalos de busqueda %d %d",ogx0,ogx1);
 

