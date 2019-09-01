%Metodo Gauss - Reduced Echeclon Form
%Programa para resolver sistemas de ecuaciones lineales 2x2
%Roberto Alejandro Gutierrez Guillen A01019608
clc
clear

fprintf('Introducir los valores del sistema de ecuaciones en una matriz entre corchete [], usar ; para separar fila y un espacio para columna\n');
fprintf('\tEj. [2 3 1 0; 1 1 2 1; 1 -1 -1 -1]\n\n');
%matrix1 = input("Introduzca valores de matriz de 3x4: ");
matrix = [2 3 1 0; 1 1 2 1; 1 -1 -1 -1];
%matrix = [1 1 1 3; 1 2 3 0; 1 3 4 -2];

    %Version 1 - Directo
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
if det(matrix(:, [1 2 3])) == 0
    fprintf("No se puede resolver el sistema porque el determinante es cero");
else
    %Ceros en la primer columna
    matrix(2,:) = matrix(2,:) - matrix(1,:)/matrix(1,1)*matrix(2,1);
    matrix(3,:) = matrix(3,:) - matrix(1,:)/matrix(1,1)*matrix(3,1);
    %Mover a la segunda columna
    matrix(3,:) = matrix(3,:) - matrix(2,:)/matrix(2,2)*matrix(3,2);

end
disp(matrix);


% 
% disp(matrix);
% 
% %Se usa el primer renglon para que el primer numero de los demas sea 0
% %Se encuentra el minimo comun multiplo
% 
% for i= 2:3  %Se itera desde la segunda columna hasta la ultima
%     if matrix(1,1) ~= 0 %comprobar que no sea 0
%         matrix(i,:) = matrix(i,:) - matrix(1,:)/matrix(1,1)*matrix(i,1);
%     end
%     disp(matrix);
% end
% 
% if matrix(2,1) == 0 && matrix(3,1) == 0 %ir a matrix 2x2
%     if(matrix(2,2)~= 0) %No es igual a cero
%        
%     else %Se inicia substitucion porque ya hay dos coeficientes con cero en una ecuacion
%         
%     end
% end

% % 
% % 
% % for i= 1:3  
% %     if matrix(i,1) == 0 
% %             %Pasar al siguiente renglon
% %         if matrix(i+1,1) == 0
% %             
% %         end
% %     else
% %         
% %     end
% % end
% % 
% % 
% % %Todo en la primera columna tiene que ser igual a 0
% % % Iterar por el numero de renglones
% % for i= 1:3  
% %     if matrix(i,1) == 0 
% %         
% %     else
% %         
% %     end
% % end

%Checar si el mismo coeficiente es igual a 0

%Sistema 2x2

%Print Results
