%Reglas de Simpson 1/3 para integrar
clear 
clc

nf=input('Numero de funciones a ingresar: ');

for i=0:nf-1
    func=input('Ingresa la función f(x) entre comillas: ');
    f = inline(func);

    n=input('Numero de subintervalos, tiene que ser par: ');

    a=input('Límite inferior de la integral: ');
    b=input('Límite superior de la integral: ');

    tic;
    h=(b-a)/n;

    sumai=0;
    sumap=0;

    for i=1:2:n-1
        sumai=sumai+feval(f,h*i+a);
    end
    for i=2:2:n-2
        sumap=sumap+feval(f,h*i+a);
    end

    %Evaluar la ecuacion completa, con los limites y los subintervalos
    intAprox =(h/3)*(feval(f,a)+4*sumai+2*sumap+feval(f,b));
    toc;
    fprintf('El resultado de la integral es %f \n', intAprox)
end
