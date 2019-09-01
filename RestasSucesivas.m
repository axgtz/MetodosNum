%Programa para Divisón por restas sucesivas
clc
clear

dividendo = input("Introduzca valor del dividendo: ");
divisor = input("Introduzca valor del divisor: ");
contador = 0;
dividendo = dividendo - divisor;

if divisor == 0
    fprintf('El resultado final de la division es igual a: 0\n');
else 
    while(dividendo >=0)
        contador = contador + 1;
        dividendo = dividendo - divisor;
    end
end
fprintf('El cociente es igual a: %d\n', contador);
residuo = divisor + dividendo;
fprintf('El residuo es igual a: %d\n', residuo);
decimales = residuo / divisor;
Resultado = contador + decimales;
fprintf('El resultado final de la division es igual a: %3.4f\n', Resultado);
