%Metodo Crout

clear all
clc  
format long 

A=input('Entre la matriz A:');
fl = true;
[f,c]=size(A);
if f==c
    L = zeros(f);
    U = zeros(f);
    for i=1:f
        if(A(i,i) == 0)
            fl=false;
        end
    end
    if fl
        for k=1:f 
            u(k,k)=1; 
            suma=0;
            for p=1:k-1
                suma=suma+L(k,p)*u(p,k);
            end
            L(k,k)=(A(k,k)-suma); 
            
            for i=k+1:f
                suma=0;
                for r=1:k-1
                    suma=suma+L(i,r)*u(r,k);
                end
                L(i,k)=(A(i,k)-suma); %Matriz L
            end
            for j=k+1:f
                suma=0;
                for s=1:k-1
                    suma=suma+L(k,s)*u(s,j);
                end
                u(k,j)=(A(k,j)-suma)/L(k,k); %Matriz U
            end
        end
    else
        disp(['Los A(i,i) no pueden ser iguales a cero']);
    end
else
    disp(['No es posible la matriz no es de nxn']);
end
fprintf('\n Matriz L:\n')
disp(L)
fprintf('\n Matriz U:\n')
disp(u)
