clc; clear; close all;

N = 20;
h = 1/(N+1);
x = linspace(0,1,N+2);
y = linspace(0,1,N+2);
[X,Y] = meshgrid(x,y);

U = zeros(N+2, N+2);

% Boundary conditions
for i = 1:N+2
    U(i, N+2) = sin(pi*x(i)); % u(x,1)
end

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

% Plot
figure;
surf(X,Y,U);
title('Laplace: u(x,1)=sin(\pi x)');
xlabel('x'); ylabel('y'); zlabel('u');