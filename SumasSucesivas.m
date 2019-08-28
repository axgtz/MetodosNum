%Programa para Multiplicación por sumas sucesivas
%No sirve si el multiplicador tiene decimales
clc
clear

multiplicando = input("Introduzca valor del multiplicando: ");
multiplicador = input("Introduzca valor del multiplicador: ");
producto = 0;

if multiplicador < 0
    multiplicando = multiplicando * -1;
    multiplicador = multiplicador * -1;
end

while multiplicador > 0
    producto = producto + multiplicando;
    multiplicador = multiplicador - 1;
end
    
fprintf('El resultado final de la multiplicacion es igual a: %d\n', producto);