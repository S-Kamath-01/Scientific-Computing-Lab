clc; clear;

x = [1; 1]; % initial guess

for k = 1:10
    
    % Function values
    F = [sin(x(1)) + x(2)^2 - 1;
         x(1)^2 + x(2) - 2];
    
    % Jacobian matrix
    J = [cos(x(1)), 2*x(2);
         2*x(1),    1];
    
    % Solve J * delta = -F using your function
    delta = solve_linear_system(J, -F);
    
    % Update
    x = x + delta;
end

disp('Tension values:')
disp(x)