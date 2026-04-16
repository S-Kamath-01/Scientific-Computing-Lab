clc; clear;

x = [0.5; 1; 1.5]; % initial guess

for k = 1:10
    
    % Function values
    F = [x(1) + x(2) + x(3) - 3;
         x(1)^2 + x(2)^2 + x(3)^2 - 5;
         x(1) - x(2) + x(3) - 1];
    
    % Jacobian matrix
    J = [1, 1, 1;
         2*x(1), 2*x(2), 2*x(3);
         1, -1, 1];
    
    % Solve using your function
    delta = solve_linear_system(J, -F);
    
    % Update
    x = x + delta;
end

disp('Solution:')
disp(x)