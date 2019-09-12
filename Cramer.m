%Programa para resolver sistemas de ecuaciones lineales de cualquier tam
%Metodo de Cramer
%Roberto Alejandro Gutierrez Guillen A01019608
clc
clear

fprintf('Introducir los valores de las matrizes entre corchete [], usar ; para separar fila y un espacio para columna\n');
fprintf('\tEj. [1 2 3; 4 5 6; 7 8 9]\n\n');
matrix = [13.422 0 0 0 750.5; -13.422 12.252 0 0 300; 0 -12.252 12.377 0 102; 0 0 -12.377 11.797 30];

fprintf(height(matrix));
fprintf(width(matrix));
%Calculate determinant
det();


%Calcular determinante general
detGp1 = (matrix1(1,1) * matrix1(2,2) * matrix1(3,3)) + (matrix1(1,2) * matrix1(2,3) * matrix1(3,1)) + (matrix1(2,1) * matrix1(3,2) * matrix1(1,3));
detGp2 = (matrix1(1,3) * matrix1(2,2) * matrix1(3,1)) + (matrix1(1,1) * matrix1(3,2) * matrix1(2,3)) + (matrix1(2,1) * matrix1(1,2) * matrix1(3,3));
detG = detGp1 - detGp2;

%Calcular delta x
xp1 = (matrix2(1) * matrix1(2,2) * matrix1(3,3)) + (matrix1(1,2) * matrix1(2,3) * matrix2(3)) + (matrix2(2) * matrix1(3,2) * matrix1(1,3));
xp2 = (matrix1(1,3) * matrix1(2,2) * matrix2(3)) + (matrix2(1) * matrix1(3,2) * matrix1(2,3)) + (matrix2(2) * matrix1(1,2) * matrix1(3,3));
x = xp1 - xp2;

%Calcular delta y
yp1 = (matrix1(1,1) * matrix2(2) * matrix1(3,3)) + (matrix2(1) * matrix1(2,3) * matrix1(3,1)) + (matrix1(2,1) * matrix2(3) * matrix1(1,3));
yp2 = (matrix1(1,3) * matrix2(2) * matrix1(3,1)) + (matrix1(1,1) * matrix2(3) * matrix1(2,3)) + (matrix1(2,1) * matrix2(1) * matrix1(3,3));
y = yp1 - yp2;

%Calcular delta z
zp1 = (matrix1(1,1) * matrix1(2,2) * matrix2(3)) + (matrix1(1,2) * matrix2(2) * matrix1(3,1)) + (matrix1(2,1) * matrix1(3,2) * matrix2(1));
zp2 = (matrix2(1) * matrix1(2,2) * matrix1(3,1)) + (matrix1(1,1) * matrix1(3,2) * matrix2(2)) + (matrix1(2,1) * matrix1(1,2) * matrix2(3));
z = zp1 - zp2;

%Caluclar determinantes
matrizS(1) = x / detG;
matrizS(2) = y / detG;
matrizS(3) = z / detG;


fprintf('\nResultados: ');
fprintf('El resultado de la determinante general es: %d\n', detG);
fprintf('El vector o matriz de solución es: \n');
fprintf('X=%d\n', matrizS(1));
fprintf('Y=%d\n', matrizS(2));
fprintf('Z=%d\n', matrizS(3));
