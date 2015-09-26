% Condiciones iniciales:
%
d=1;
beta=-1/2;
alfa=2;
x=0;

%Funci�n
[min,fracasos,iteraciones]=rosenbrock(x,d,beta,alfa,@funcion);
fprintf('El minimo de la funcion es %f. \n el n�mero de fracasos es %d. \n el n�mero de iteraciones %d. \n',min,fracasos,iteraciones);


% Para visualizar la funci�n a hallar graficamente el m�nimo.
vector=0:0.1:100;
y=funcion(vector);
plot(y,'r');