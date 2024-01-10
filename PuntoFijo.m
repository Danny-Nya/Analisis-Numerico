%PuntoFijo
clear all
clc  
format long 
syms x;
g(x)=input("Ingrese la funcion : ");
p0=input("Ingrese punto inicial: ");
e=input("Ingrese el maximo error posible: ");
i=0;
while true
    i=i+1;
    p=double(g(p0));
    if abs(g(p0)-p0)<e
        break;
    end
    p0=p;
end
fprintf('Se encontro en %i iteraciones \n',i)
fprintf('La raiz se encuentra cerca de %c \n',p0)