%NewtonRaphsonModificado
clear all
clc  
format long 
syms x;
f(x)=input("Ingrese la funcion : ");
p0=input("Ingrese punto inicial: ");
e=input("Ingrese el maximo error: ");
i=1;
devf(x)=diff(f);
dev2f(x)=diff(f,2);
rf=double(f(p0));
rfd=double(devf(p0));
rfd2=double(dev2f(p0));
xn=p0-((rf*rfd)/(rfd)^2-rf*rfd2);
p0=xn;
while true
    i=i+1;
    rf=double(f(p0));
    rfd=double(devf(p0));
    rfd2=double(dev2f(p0));
    xn=p0-((rf*rfd)/(((rfd)^2)-(rf*rfd2)));
    if abs(xn-p0)<e
        break;
    end
    p0=xn;
end
fprintf('Se encontro en %i iteraciones \n',i)
fprintf('La raiz se encuentra cerca de %c \n',xn)