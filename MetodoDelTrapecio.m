%Metodo de Trapecio para integrar
clear 
clc

func=input('Ingresa la función f(x) entre comillas: ');
f = inline(func);
%feval(f,x)

a=input('Límite inferior de la integral: ');
b=input('Límite superior de la integral: ');

n=input('Numero de subintervalos(iteraciones), tiene que ser par: ');

tic;
h = (b-a)/n;

sumaAreaTotal = 0;

for i=0:n-1
    sumaAreaTotal = sumaAreaTotal + (h/2*(f(a+(i)*h)+f(a+(i+1)*h)));
%     
%     fa  = feval(f,a);
%     fah = feval(f,a+h);
%     ai = (h * (fa + fah)) / 2;
%     sumaAreaTotal = sumaAreaTotal + ai;
end


toc;
fprintf('El resultado de la integral es %f \n', sumaAreaTotal)

x = linspace(a,b,100); % 100 points
y = 10-exp(x);
plot(x,y)

