%Secante
clear all
clc  
format long 
syms x;
f(x)=input("Ingrese la funcion : ");
a=input("Ingrese el limite a la izquierda: ");
b=input("Ingrese el limite a la derecha: ");
e=input("Ingrese el maximo error posible: ");
if f(a)*f(b)<0
    while true
        i=i+1;
        fa=f(a);
        fb=f(b);
        xn=double(b-((fb*(b-a))/(fb-fa)));
        if abs(xn-b)<e
            break;
        end
        a=b;
        b=xn;
    end
    fprintf('Se encontro en %i iteraciones \n',i)
    fprintf('La raiz se encuentra cerca de %c \n',a)
else
    fprintf('No existe una raiz entre los limites ingresados \n')
end
