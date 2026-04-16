clc; clear;

x = [2; 1]; % initial guess

for k = 1:10
    
    % Function values
    F = [x(1)^2 + x(2)^2 - 9;
         x(1) - x(2) - 1];
    
    % Jacobian matrix
    J = [2*x(1), 2*x(2);
         1,      -1];
    
    % Solve J * delta = -F using your function
    delta = solve_linear_system(J, -F);
    
    % Update
    x = x + delta;
end

disp('Solution:')
disp(x)