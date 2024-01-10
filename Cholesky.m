%Metodo Cholasky

clear all
clc  
format long 

A=input('Entre la matriz A: ');
fl = true;
[f,c]=size(A);
% if F diferente de c no
if f==c
    L = zeros(f);
    U = zeros(f);
    for i=1:f
        if(A(i,i) == 0)
            fl=false;
        end
    end
    if fl
        for i=1:f
            L(i,i)=1;
            U(1,i)=A(1,i);
            for k=i:f
                U(i,k)=A(i,k)-L(i,1:i-1)*U(1:i-1,k)
            end
            for k=i+1:f
                L(k,i)=(A(k,i)-L(k,1:i-1)*U(1:i-1,i))/U(i,i);
            end
        end
        for i=1:f
            L(i,i)=sqrt(U(i,i));
        end
    else
        disp(['Los A(i,i) no pueden ser iguales a cero']);
    end
else
    disp(['No es posible la matriz no es de nxn']);
end
U=transpose(L);
fprintf('\n Matriz L:\n')
disp(L)
fprintf('\n Matriz Lt:\n')
disp(U)