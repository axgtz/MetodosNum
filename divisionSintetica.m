%Metodo de la División sintética para hallar las raíces de cualquier polinomio
clear % limpia el Workspace
clc % limpia el Command Window
n = input("Diga cual es el grado máximo de la función n = "); % Grado de la función
M = input("Escriba los Coefs. hasta sexto grado en forma de matriz [], empezando por el término independiente y terminando con el término de sexto grado: ");
syms x; % se declara x como variable que puede tomar valores numericos
Ecuacion = M(7)*x^6 + M(6)*x^5 + M(5)*x^4 + M(4)*x^3 + M(3)*x^2 + M(2)*x^1 + M(1)*x^0; %se escribe la ecuación a resolver
fprintf('La ecuación a resolver es: ') % Se imprime la ecuación en pantalla
disp(Ecuacion); % Se imprime la ecuación en pantalla
f = [0];
% Obtención de los divisores del término independiente:
z = abs(M(1)); % Se toma el valor absoluto del termino independiente y se coloca en "z"
a=1; % Se inicializa un contador "a"
for i=1:z % Se inicia un ciclo for con valores desde 1 hasta el valor de "z"
    m=mod(z,i); % Se calcula el "módulo" dividiendo "z" entre "i"
    if m==0 % Si el "módulo" (residuo) de la división anterior es CERO, es RAIZ
        f(a)=i; % Si residuo = 0 se coloca el valor de "i" en la matriz "f" como divisor del termino independiente
        a=a+1; % Se aumenta el valor del contador "a"
    end
end

% Obtención de los divisores del término de mayor grado de la ecuación:
y = abs(M(n+1)); % Se toma el valor absoluto del termino de mayor grado de la ecuación y se coloca en "y"
b=1; % Se inicializa un contador "b"
for i=1:y % Se inicia un ciclo for con valores desde 1 hasta el valor de "y"
    m=mod(y,i); % Se calcula el "módulo" dividiendo "y" entre "i"
    if m==0 % Si el "módulo" (residuo) de la división anterior es CERO, es RAIZ
        g(b)=i; % Si residuo = 0 se coloca el valor de "i" en la matriz "g" como divisor del termino de mayor grado
        b=b+1; % Se aumenta el valor del contador "b"
    end
end
disp(length(g))
disp(b)
% Se calcula el tamaño de la matriz de posibles raíces:
ancho=length(g); % Se calcula el tamaño de la matriz "g"
largo=length(f); % Se calcula el tamaño de la matriz "f"
tam=ancho*largo; % Se calcula el tamaño total de la matriz de posibles raices
pr=zeros(1,tam); % Se crea una matriz de ceros de 1 fila y con "tam" numero de columnas

% Se obtienen los valores de las posibles raíces reales positivas de la ecuación:
w=1;
for s=1:largo
    for t=1:ancho
    % r=s*t;
         pr(w)=f(s)/g(t);
         t=t+1;
         w=w+1;
    end
    s=s+1;
end

prneg=-1*pr; % Se calculan las posibles raíces reales negativas
fprintf('Las posibles raíces reales positivas son:\n')
disp(pr);
fprintf('Las posibles raíces reales negativas son:\n')
disp(prneg);

EC = M(1)*x^0 + M(2)*x^1 + M(3)*x^2 + M(4)*x^3 + M(5)*x^4 + M(6)*x^5 + M(7)*x^6;
for h=1:tam
    ECpr = subs(EC,pr(h)); % Se evalúan todos los valores de las posibles raíces reales positivas
    if ECpr == 0
        fprintf('El valor x = %3.2f SI es una raíz real de la ecuación\n', pr(h))
    else
        fprintf('El valor x = %3.2f NO es una raíz real de la ecuación\n', pr(h))
    end
    h=h+1;
end

for h=1:tam
    ECprneg = subs(EC,prneg(h)); % Se evalúan todos los valores de las posibles raíces reales positivas
    if ECprneg == 0
        fprintf('El valor x = %3.2f SI es una raíz real de la ecuación\n', prneg(h))
    else
        fprintf('El valor x = %3.2f NO es una raíz real de la ecuación\n', prneg(h))
    end
    h=h+1;
end