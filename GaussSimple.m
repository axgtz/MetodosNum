%Metodo Gauss - Row Echelon Form
%Programa para resolver sistemas de ecuaciones lineales 3x3
%Roberto Alejandro Gutierrez Guillen A01019608
clc
clear

fprintf('Introducir los valores del sistema de ecuaciones en una matriz entre corchete [], usar ; para separar fila y un espacio para columna\n');
fprintf('\tEj. [2 3 1 0; 1 1 2 1; 1 -1 -1 -1]\n\n');
%matrix = input("Introduzca valores de matriz de 3x4: ");
%matrix = [2 3 1 0; 1 1 2 1; 1 -1 -1 -1];   %Matriz prueba 1
%matrix = [2 -1 1 2; 3 1 -2 9; -1 2 5 -5];  %Matriz prueba 2
%matrix = [2 -1 3 5; 2 2 3 7; -2 3 0 -3];
%matrix = [0 1 3 4;1 1 1 3; 0 2 3 5];
matrix = [13.422 0 0 0 750.5; -13.422 12.252 0 0 300; 0 -12.252 12.377 0 102; 0 0 -12.377 11.797 30];

    %Version 3 - Mas generica
if det(matrix(:, 1:-1) ~= 0 %Checar que el determinante no sea 0 para poder resolver, sin contar valores independientes
    for i=1:(size(matrix,1)) %Iterar por los coeficientes de la primera columna
            if matrix(i,1) ~= 0 %Checar que primer coeficiente no sea 0
                matrix([1 i],:)=matrix([i 1],:); %Intercambiar donde el coeficiente no es 0
                % Se usa el renglon uno para sacar 0
                %matrix(r,c) = (vertical, horizontal)
                %Iterar columnas de matriz                
                for c=1:(size(matrix,2)-2)      %num de columnas, menos columna de coeficientes ind y una columna
                    for r=c+1:size(matrix,1)    %numero de renglones, Iterar renglones de matrix
                        matrix(r,:) = matrix(r,:) - matrix(c,:)/matrix(c,c)*matrix(r,c);
                    end
                end
                break %Se sale del loop
            end
    end
    %Inicializar matriz de soluciones
    matrixSol = zeros(size(matrix,1),1); %Numero de renglones igual a la matriz y una columna    
   %Realizar substituciones
   for r = (size(matrix,1)):-1:1 %Empieza hasta abajo,va a ir restando hasta llegar al 1
       for c = (size(matrix,2))-1:-1:(r+1) % Primer -1 excluir la columna de independientes, r+1 es donde para 
           matrix(r,size(matrix,2)) = matrix(r,size(matrix,2)) - matrixSol(c)*matrix(r,c);
       end
       matrixSol(r) = matrix(r,size(matrix,2))/matrix(r,r);  % en la primer iteracion solo corre este
   end
else
    fprintf("No se puede resolver el sistema porque el determinante es cero");
end


disp(matrixSol);
