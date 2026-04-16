function [x, err] = jacobi_method(A,b,tol,max_iter)

n = length(b);
x = zeros(n,1);
x_old = x;
err = [];

fprintf('Iter\t   x\t\t   y\t\t   z\t\t   w\t\t Error\n');

for k = 1:max_iter
    
    for i = 1:n
        sum_val = 0;
        for j = 1:n
            if j ~= i
                sum_val = sum_val + A(i,j)*x_old(j);
            end
        end
        x(i) = (b(i) - sum_val)/A(i,i);
    end
    
    err(k) = norm(x - x_old, inf);
    
    % Print iteration values
    fprintf('%d\t%8.5f\t%8.5f\t%8.5f\t%8.5f\t%e\n', ...
        k, x(1), x(2), x(3), x(4), err(k));
    
    if err(k) < tol
        break;
    end
    
    x_old = x;
end

fprintf('\nNumber of iterations = %d\n', k);

end