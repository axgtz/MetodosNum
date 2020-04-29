
%Reglas de Simpson 3/8 para integrar
clear 
clc


nf=input('Numero de funciones a ingresar: ');

for i=0:nf-1
    func=input('Ingresa la función f(x) entre comillas: ');
    F = inline(func);
    
    n=input('Numero de subintervalos, tiene que ser multiplos de 3: ');

    a=input('Límite inferior de la integral: ');
    b=input('Límite superior de la integral: ');

    tic;
    h = (b - a ) / (3 * n);
    x = [a:h:b];
    np = size(x,2);

    acum=0;
    for i = 1: 3:np-1
        acum = acum + (3 / 8 * h * (F(x(i)) + 3 * F(x(i+1)) + 3 * F(x(i+2)) + F(x(i+3))));
    end
    
    toc;
    fprintf('\nEl resultado de la integral es %f \n', acum)
end