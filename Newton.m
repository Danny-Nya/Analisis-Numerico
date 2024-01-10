%NewtonRaphson
clear all
clc  
format long 
syms x;
f(x)=input("Ingrese la funcion : ");
p0=input("Ingrese punto inicial: ");
e=input("Ingrese el maximo error posible: ");
i=1;
devf(x)=diff(sym(f(x)));
rf=double(f(p0));
rfd=double(devf(p0));
while true
    i=i+1;
    a=p0-(rf/rfd);
    rf=double(f(a));
    rfd=double(devf(a));
    if abs(p0-a)<e
        break;
    end
    p0=a;
end
fprintf('Se encontro en %i iteraciones \n',i)
fprintf('La raiz se encuentra cerca de %c \n',a)