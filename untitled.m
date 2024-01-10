%Regla compuesta del trapecio
clear all;
syms x;
f(x)=input("Entre la funcion: ");
a=input("Entre la a: ");
b=input("Entre la b: ");
n=input("Entre la n: ");
h=(b-a)/n;
resp=f(a)+f(b);
for k=1:n-1
    resp=resp+2*f(a+k*h);
end
resp=(h/2)*resp;
vpa(resp)
