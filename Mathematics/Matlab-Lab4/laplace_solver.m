function U = laplace_solver(N)
 h = 1/(N+1);
 U = zeros(N+2);
 tol = 1e-5;
 max_iter = 10000;
 for iter = 1:max_iter
     U_old = U;
     for i = 2:N+1
         for j = 2:N+1
             U(i,j) = 0.25*(U(i+1,j) + U(i-1,j) + U(i,j+1) + U(i,j-1));
         end
     end
     if max(max(abs(U - U_old))) < tol
         break;
     end
 end
end