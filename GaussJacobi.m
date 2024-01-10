%Metodo Gauss-Jacobi
clear all;
A=input("Entre la matriz: ");
[f,c]=size(A); 
while f~=c
    cls;
    A=input("Por favor entre una matriz nxn: ");
    [f,c]=size(A);
end
V=input("Entre el vector: ");
B=input("Entre el vector de constantes: ");
Max=input("Entre el maximo numero de iteraciones: ");
D=zeros(f);
L=zeros(f);
U=zeros(f);
for i=1:f 
    D(i,i)=A(i,i);
end
for i=1:f 
    for j=1:f
        if i>j
            L(i,j)=-A(i,j);
        end
        if j>i
            U(i,j)=-A(i,j);
        end
    end
end
for i=1:Max
    Vx=(inv(D)*(L+U)*V)+(inv(D)*B)
    Z=V-Vx;
    Y=norm(Z,"inf");
    V=Vx;
end
D
L
U
V
Y