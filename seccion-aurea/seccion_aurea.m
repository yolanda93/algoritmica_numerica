function [A,B]=seccion_aurea(f,a,b,iteraciones) 
r=(sqrt(5)-1)/2; %número áureo. 
k=0; 
for k=1:iteraciones 
x1=a+(1-r)*(b-a); 
x2=a+r*(b-a); 
if f(x1) <= f(x2) 
b=x2; 
else 
a=x1; 
end 
k=k+1; % incrementamos el contador de iteraciones y volvemos a iterar. 
end 
A=a; 
B=b; 
End
