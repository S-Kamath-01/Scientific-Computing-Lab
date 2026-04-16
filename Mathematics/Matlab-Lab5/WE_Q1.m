% Wave Equation using Finite Difference Method
clear
clc

% Parameters
L = 1;          % Length of string
T = 1;          % Final time
c = 1;          % Wave speed
h = 0.1;        % Space step
k = 0.01;       % Time step

N = L/h;        % Number of space intervals
M = T/k;        % Number of time steps

lambda = c*k/h;

% Grid
x = 0:h:L;
t = 0:k:T;

% Solution matrix
u = zeros(N+1, M+1);

% Initial displacement u(x,0) = sin(pi x)
for i = 1:N+1
    u(i,1) = sin(pi*x(i));
end

% Boundary conditions
u(1,:)   = 0;           % u(0,t) = 0
u(N+1,:) = 0;           % u(1,t) = 0

% First time step (using initial velocity = 0)
for i = 2:N
    u(i,2) = u(i,1) + 0.5*lambda^2 * ...
            (u(i+1,1) - 2*u(i,1) + u(i-1,1));
end

% Finite difference iteration
for j = 2:M
    for i = 2:N
        u(i,j+1) = 2*u(i,j) - u(i,j-1) + ...
                   lambda^2 * (u(i+1,j) - 2*u(i,j) + u(i-1,j));
    end
end

% Exact solution
u_exact = zeros(N+1, M+1);
for j = 1:M+1
    for i = 1:N+1
        u_exact(i,j) = sin(pi*x(i)) * cos(pi*t(j));
    end
end



% ---- 3D Surface Plot of Numerical Solution ----
figure
surf(u)
shading interp
xlabel('Time')
ylabel('Space')
zlabel('Displacement')
title('Wave Equation Solution (Finite Difference Method)')