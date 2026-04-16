clc; clear; close all;

N = 20;
h = 1/(N+1);
x = linspace(0,1,N+2);
y = linspace(0,1,N+2);
[X,Y] = meshgrid(x,y);

% Initialize
U = ones(N+2, N+2);   % boundary = 1 already set
f = zeros(N+2, N+2);

% Define RHS: f = -81*x*y
for i = 1:N+2
    for j = 1:N+2
        f(i,j) = -81 * x(i) * y(j);
    end
end

tol = 1e-5;
max_iter = 10000;

% Iteration
for iter = 1:max_iter
    U_old = U;
    
    for i = 2:N+1
        for j = 2:N+1
            U(i,j) = 0.25 * ( ...
                U(i+1,j) + U(i-1,j) + ...
                U(i,j+1) + U(i,j-1) - ...
                h^2 * f(i,j));
        end
    end
    
    if max(max(abs(U - U_old))) < tol
        break;
    end
end

% Plot
figure;
surf(X,Y,U);
title('Poisson: ∇^2u = -81xy, u=1 on boundary');
xlabel('x'); ylabel('y'); zlabel('u');