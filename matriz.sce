A = read("D:\scilab\a.txt", 4,4)
a = size(A(:)), a = sqrt(a(1,1))
c =0, b=a, y=0, v = 0, determinante=0
/*Laço de repetição que verifica qual linha tem o menor número de
elementos diferentes de 0*/
for i=1:a
    x =a
    for j=1:a
        if nnz(A(i,:)) <x then
            c = i
            y = nnz(A(i:i))
            if y < b then
                b = c
            end
        end
        if nnz(A(i,:)) == 0 then
            printf("\nO determinante é 0 pois a linha %g%s",i," é nula")
            printf("\nO determinante do scilab é %g", abs(det(A)))
            v = 1
            break
        end
        x = x-1  
    end
end

function determinante = myfun(e)
    b =e
    printf("A matriz principal é: ")
    disp(A)
    printf("Matrizes geradas por Laplace: ")
    if nnz(A(b,:)) ~= 0 then
        for i=1:a
            if A(b,i) ~= 0 then
                B = A, B(b,:) = B([]), B(:,i) = B([])
                if modulo(i+b,2) == 0 then 
                   disp(B)
                   determinante = determinante + (A(b,i) * det(B))
                else 
                   disp(B)
                   determinante = determinante - (A(b,i) * det(B))
                end
            end
        end
    end
    printf("\nO determinante é: %g",determinante)
    printf("\nO determinante do scilab é: %g",det(A))
endfunction
if v == 0 then
    funcprot(0)
    myfun(b)
end
/*No final, podemos ver que a função det() é uma função genérica 
do scilab que cálcula uma matriz que qualquer ordem por meio do 
método de laplace
    

