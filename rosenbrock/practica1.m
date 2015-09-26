% Condiciones iniciales:
%
d=1;
beta=-1/2;
alfa=2;
x=0;

%Función
[min,fracasos,iteraciones]=rosenbrock(x,d,beta,alfa,@funcion);
fprintf('El minimo de la funcion es %f. \n el número de fracasos es %d. \n el número de iteraciones %d. \n',min,fracasos,iteraciones);


% Para visualizar la función a hallar graficamente el mínimo.
vector=0:0.1:100;
y=funcion(vector);
plot(y,'r');