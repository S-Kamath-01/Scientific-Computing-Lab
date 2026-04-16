function x = solve_linear_system(A,b)

% Step 1: Check matrix size
[n,m] = size(A);
if n ~= m
    error('Matrix must be square');
end

% Step 2: Check determinant
if det(A) == 0
    error('System does not have a unique solution');
end

% Step 3: Solve using MATLAB built-in
x_builtin = A\b;

% Step 4: Solve using user-defined method
x_user = gaussElimination(A,b);

% Step 5: Display results
disp('Solution using user method:')
disp(x_user)

disp('Solution using MATLAB:')
disp(x_builtin)

% Step 6: Compute error
err = norm(x_user - x_builtin);
fprintf('Error between methods = %e\n', err);

x = x_user;

end