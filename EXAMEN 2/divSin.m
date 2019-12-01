%Metodo de la División sintética para hallar las raíces de cualquier polinomio
clear 
clc

disp("1 Parte - Calcular con division sintetica los posibles valores de las raices")
%f(x)=4x^(3)+20x^(2)-2x-10
ecuation = @(x0) 4*(x0^3)+20*(x0^2)-2*x0-10;
a=1; 
for i=1:10 
    m=mod(10,i); 
    if m==0 
        f(a)=i; 
        a=a+1; 
    end
end

b=1; 
for i=1:4
    m=mod(4,i); 
    if m==0 
        g(b)=i; 
        b=b+1; 
    end
end

a = a-1;
b = b-1;
tam=a*b; % Tam matriz de posibles raizes
pr=zeros(1,tam); 

% Se obtienen los valores de las posibles raíces reales positivas de la ecuación:
w=1;
for s=1:a
    for t=1:b
         pr(w)=f(s)/g(t);
         t=t+1;
         w=w+1;
    end
    s=s+1;
end

prneg=-1*pr; % Se calculan las posibles raíces reales negativas

fprintf('Raices \n')
for i=1:tam
    ECpr = ecuation(pr(i)); % Se evalúan todos los valores de las posibles raíces reales positivas
    ECprneg = ecuation(prneg(i));% Se evalúan todos los valores de las posibles raíces reales positivas
    if ECprneg == 0
        fprintf('x = %3.2f raíz real de la ecuación\n', prneg(i))
    end    
    if ECpr == 0
        fprintf('x = %3.2f raíz real de la ecuación\n', pr(i))
    end
    i=i+1;
end
disp("2 Parte - Calcular con las raices si se acerca a 0")

if ecuation(-0.707107) <= 1^-6
    disp("-0.707107 es raiz")
end

if ecuation(0.707107) <= 1^-6
    disp("0.707107 es raiz")
end
