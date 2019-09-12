%MetodoGaussSeidel
%Programa para resolver sistemas de ecuaciones lineales 2x2
%Roberto Alejandro Gutierrez Guillen A01019608
%no terminado
clc
clear

fprintf('Introducir los valores del sistema de ecuaciones en una matriz entre corchete [], usar ; para separar fila y un espacio para columna\n');
fprintf('\tEj. [1 2 3; 4 5 6; 7 8 9]\n\n');
%matrix1 = input("Introduzca valores de la primera matriz de 2x2: ");
matrix1 = [3 2 18; -1 2 2];
matrixSol = [0 0];
fprintf('Introducir tolerancia\n');
%tol = input('Introducir tolerancia');
tol = 0.5;

x1 = (matrix1(1,3) - (matrix1(1,2)*matrixSol(2)))/matrix1(1,1);
y1 = (matrix1(2,3) - (matrix1(2,1)*matrixSol(1)))/matrix1(2,2);

disp(x1);
disp(y1);