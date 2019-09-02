%Metodo Gauss - Row Echeclon Form
%Programa para resolver sistemas de ecuaciones lineales 3x3
%Roberto Alejandro Gutierrez Guillen A01019608
clc
clear

fprintf('Introducir los valores del sistema de ecuaciones en una matriz entre corchete [], usar ; para separar fila y un espacio para columna\n');
fprintf('\tEj. [2 3 1 0; 1 1 2 1; 1 -1 -1 -1]\n\n');
%matrix = input("Introduzca valores de matriz de 3x4: ");
%matrix = [2 3 1 0; 1 1 2 1; 1 -1 -1 -1];
matrix = [2 -1 1 2; 3 1 -2 9; -1 2 5 -5];

    %Version 0 - Directo
%Checar que el determinante no sea 0 para poder resolver, sin contar
%valores independientes
% if det(matrix(:, [1 2 3])) == 0
%     fprintf("No se puede resolver el sistema porque el determinante es cero");
% else
%     disp(linsolve(matrix(:, [1 2 3]) , matrix(:, 4)));
% end

    %Version 1 - Dummy solo 3x4
%Checar que el determinante no sea 0 para poder resolver, sin contar
%valores independientes
% if det(matrix(:, [1 2 3])) == 0
%     fprintf("No se puede resolver el sistema porque el determinante es cero");
% else
%     %Ceros en la primer columna
%     matrix(2,:) = matrix(2,:) - matrix(1,:)/matrix(1,1)*matrix(2,1);
%     matrix(3,:) = matrix(3,:) - matrix(1,:)/matrix(1,1)*matrix(3,1);
%     %Mover a la segunda columna
%     matrix(3,:) = matrix(3,:) - matrix(2,:)/matrix(2,2)*matrix(3,2);
%     %Substitucion
%     matrixSol(1,3)= matrix(3,4)/matrix(3,3);
%     matrixSol(1,2)= (matrix(2,4) - matrix(2,3)*matrixSol(1,3))/matrix(2,2);
%     matrixSol(1,1)= (matrix(1,4)-matrix(1,3)*matrixSol(1,3)-matrix(1,2)*matrixSol(1,2))/matrix(1,1);
% end
% disp(matrixSol);

 %Version 2 - Con For's
%Checar que el determinante no sea 0 para poder resolver, sin contar
%valores independientes
% if det(matrix(:, [1 2 3])) == 0
%     fprintf("No se puede resolver el sistema porque el determinante es cero");
% else    %matrix(r,c) = (vertical, horizontal)
%     for c = 1:2
%         for r = 2:3
%             if(c == 2)
%                 r = 3; %Solo se trabaja con ultimo renglon por que en el segundo solo encitamos un 0
%             end
%             
%             if matrix(1,c) ~= 0 %comprobar que no sea 0
%                 matrix(r,:) = matrix(r,:) - matrix(c,:)/matrix(c,c)*matrix(r,c);
%                 disp(matrix);
%             end
%         end % Ceros en la primer columna
%     end    %Mover a la segunda columna
%     %Substitucion
%     matrixSol(1,3)= matrix(3,4)/matrix(3,3);
%     matrixSol(1,2)= (matrix(2,4) - matrix(2,3)*matrixSol(1,3))/matrix(2,2);
%     matrixSol(1,1)= (matrix(1,4)-matrix(1,3)*matrixSol(1,3)-matrix(1,2)*matrixSol(1,2))/matrix(1,1);
% 
% end
% disp(matrixSol);
% 

    %Version 3 - Mas generica
if det(matrix(:, [1 2 3])) ~= 0 %Checar que el determinante no sea 0 para poder resolver, sin contar valores independientes
    for i=1:(size(matrix,1)) %Iterar por los coeficientes de la primera columna
            if matrix(i,1) ~= 0 %Checar que primer coeficiente no sea 0
                matrix([1 i],:)=matrix([i 1],:); %Intercambiar donde el coeficiente no es 0
                % Se usa el renglon uno para sacar 0
                %matrix(r,c) = (vertical, horizontal)
                %Iterar columnas de matriz
                for c=1:(size(matrix,2)-2)      %num de columnas, menos columna de coeficientes ind y una columna
                    for r=c+1:(size(matrix,1))    %numero de renglones, Iterar renglones de matrix
                        matrix(r,:) = matrix(r,:) - matrix(c,:)/matrix(c,c)*matrix(r,c);
                    end
                end
                break %Se sale del loop
            end
    end
    
   %Realizar substituciones

else
    fprintf("No se puede resolver el sistema porque el determinante es cero");
end


disp(matrix);