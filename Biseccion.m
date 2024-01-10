%Biseccion
clear all
clc  
format long 
syms x;
f(x)=input("Ingrese la funcion: ");
a=input("Ingrese el limite a la izquierda: ");
b=input("Ingrese el limite a la derecha: ");
e=input("Ingrese el maximo error posible: ");
i=0;
if f(a)*f(b)<0
    while true
        i=i+1;
        c=(a+b)/2;
        if abs(c-b)<e||abs(c-a)<e
            break
        end
        if f(a)*f(c)<0
            b=c;
        elseif f(c)*f(b)<0
            a=c;
        end
    end
    fprintf('Se encontro en %i iteraciones \n',i)
    fprintf('La raiz se encuentra cerca de %c \n',c)
else
    fprintf('No existe una raiz entre los limites ingresados \n')
end
