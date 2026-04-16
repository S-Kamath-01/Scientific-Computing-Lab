function [x, err] = gauss_seidel(A,b,tol,max_iter)
n = length(b);
x = zeros(n,1);
err = [];

for k = 1:max_iter
    x_old = x;
    
    for i = 1:n
        sum1 = A(i,1:i-1)*x(1:i-1);
        sum2 = A(i,i+1:n)*x_old(i+1:n);
        x(i) = (b(i) - sum1 - sum2)/A(i,i);
    end
    
    err(k) = norm(x-x_old,inf);
    
    if err(k) < tol
        break;
    end
end
end