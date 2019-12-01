%Reglas de Simpson 3/8 para integrar
clear 
clc

func=input('Ingresa la función f(x) entre comillas: ');
f = inline(func);

n=input('Numero de subintervalos, tiene que ser multiplos de 3: ');

a=input('Límite inferior de la integral: ');
b=input('Límite superior de la integral: ');

tic;
h=(b-a)/n;

acum=0;

for i=0:n-2
    acum = acum + ((h/8)*(feval(f,h*i+a)+3*feval(f,h*(i+1)+a)+3*feval(f,h*(i+2)+a)+feval(f,h*(i+3)+a)));
end

toc;
fprintf('\nEl resultado de la integral es %f \n', acum)