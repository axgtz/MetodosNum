%FORMULA FENERAL 
%Programa para resolver sistemas de ecuaciones lineales 3x3
%Roberto Alejandro Gutierrez Guillen A01019608
clc
clear

matrix = input("Introducir valores de a b c en el siguiente formato [a b c]\n");

if matrix(1) == 0
    fprintf("Es una ecuacion lineal, favor de introducir una cuadratica \n");
else
   disc = sqrt((matrix(2)*matrix(2))-(4*matrix(1)*matrix(3))); 
   if disc ~= 0
       if disc > 0
           fprintf("Las raices son: \n");
       else %Raices imaginarias
           fprintf("Las raices imaginarias son: \n");
       end
       fprintf("La raiz x1 es: %d\n", ((-matrix(2)+disc)/(2*matrix(1))));
       fprintf("La raiz x2 es: %d\n", ((-matrix(2)-disc)/(2*matrix(1))));
   else % Si el discriminante es 0
       fprintf("Las raices son reales e iguales: %d\n", ((-matrix(2)/(2*a))));
       
   end
end