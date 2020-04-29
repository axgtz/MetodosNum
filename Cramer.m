%Programa para resolver sistemas de ecuaciones lineales de cualquier tamaño
%Metodo de Cramer
%Roberto Alejandro Gutierrez Guillen A01019608
clc
clear

matrix = [-1 1 1 -1 ; 1 -1 1 3 ; 1 1 2 -2];

numRows = size(matrix, 1);%number of rows
numCols = size(matrix, 2);%number of columns

%Calculate general determinant, excluding the indpendent values
detG = det(matrix(:,1:numCols-1)); 
matrixSol = zeros(numRows,1); %Start solution matrix in zeros

for i = 1:numRows  %loop from 1 to the number of rows in the matrix, numRows = number of unknowns
    %Create a temporal matrix to store current matrix being replaced by independent
    %The middle matrix is the value of independents, so at the beggining
    %theres nothing to be inserted in the first part, then the independents
    %at the end all the other cols except the independents and the current
    %column being replaced by independents
    tempMat = [matrix(:,1:i-1),matrix(:,numCols),matrix(:,i+1:numCols-1)]; 
    matrixSol(i) = det(tempMat) / detG;%add solution to the sol matrix
end
fprintf('Det Gen %f\n', detG);

fprintf('Solution Matrix\n');
disp(matrixSol);