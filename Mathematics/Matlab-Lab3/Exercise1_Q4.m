clc; clear;

A = [10 -2 -1;
    -2 10 -1;
    -1 -1 10];

b = [3;15;27];

tol = 1e-4;
maxIter = 50;

[x_j, err_j] = jacobi_method(A, b, tol, maxIter);
[x_gs, err_gs] = gauss_seidel(A, b, tol, maxIter);

% Plot
plot(err_j,'r','LineWidth',2); hold on;
plot(err_gs,'b','LineWidth',2);

legend('Jacobi','Gauss-Seidel');
xlabel('Iterations');
ylabel('Error');
title('Convergence Graph');
grid on;

% Display
disp('Jacobi Solution:');
disp(x_j);

disp('Gauss-Seidel Solution:');
disp(x_gs);