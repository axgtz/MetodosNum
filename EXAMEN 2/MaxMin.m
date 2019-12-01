clear 
clc

%Se declara funcion 
syms f(x)
f(x) = 4*(x^3)+20*(x^2)-2*x-10;

% Diferencial de la funcion
df = diff(f,x);

%Se obtienen los coeficientes de la diferencial y se sacan las raices
%disp(df);
p = [12 40 -2];
r = roots(p);

dff = diff(df,x);

if dff(r(1)) > 0
    fprintf("Las mayores perdidas fueron %f millones de pesos en x = %f\n",f(r(1)), r(1));
else
    fprintf("Las ganancias maximas fueron %f millones de pesos en x = %f\n",f(r(1)), r(1));
end

if dff(r(2)) > 0
    fprintf("Las mayores perdidas fueron %f millones de pesos en x = %f\n",f(r(2)), r(2));
else
    fprintf("Las ganancias maximas fueron %f millones de pesos en x = %f\n",f(r(2)), r(2));
end