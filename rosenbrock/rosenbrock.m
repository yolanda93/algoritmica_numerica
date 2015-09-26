function [ xk,a,iteraciones ] = rosenbrock( x,d,beta,alfa,funcion )

% d es la distancia
% x0  punto inicial.
% xk  será el punto más el paso.

iteraciones=0;
error=(1/2)*(abs(funcion(x)-funcion(x+d)));
a=1; %número de fracasos
while(iteraciones<50 )&(error>=0.01)  % Puede que el método no converja por eso ponemos un número máx de iteraciones.

     
im0=funcion(x);% Evaluamos la función en el punto inicial
im1=funcion(x+d);% Evaluamos la funcion en el punto más una distancia d

if(im0>im1) % Vemos si la imagen es menor -> éxito.
x=x+d;
d=d*alfa; % Aumentamos el paso
else
d=d*beta;
x=x+d;
a=a+1;
end

 % Sumamos iteraciones y volvemos a evaluar las condiciones de parada.
iteraciones=iteraciones+1;
error=(1/2)*(abs(funcion(x)-funcion(x+d)));
end
xk=((x+1)+x)/2; %solución aproximada.

end

