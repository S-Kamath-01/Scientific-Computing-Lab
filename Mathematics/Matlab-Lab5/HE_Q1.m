% Heat Equation using Finite Difference Method (Explicit Scheme)
clear
clc

% Parameters
L = 1;
T = 0.5;
C = 1;
h = 0.25;
k = 0.02;

N = L/h;        % Number of space intervals
M = T/k;        % Number of time steps

lambda = k/(C*h^2);

x = 0:h:L;
t = 0:k:T;

% Solution matrix
u = zeros(N+1, M+1);

% Initial condition u(x,0) = x(1-x)
for i = 1:N+1
    u(i,1) = x(i)*(1 - x(i));
end

% Boundary conditions
u(1,:)     = 0;     % u(0,t) = 0
u(N+1,:)   = 0;     % u(1,t) = 0

% Finite difference iteration
for j = 1:M
    for i = 2:N
        u(i,j+1) = (1 - 2*lambda)*u(i,j)+ ...
                   lambda*(u(i-1,j) + u(i+1,j));
    end
end
% Display numerical solution
disp('Numerical Solution')
disp('   x        t=0        t=0.01      t=0.02')
disp([x' u(:,1) u(:,2) u(:,3)])

% Exact solution
u_exact = zeros(N+1, M+1);
for j = 1:M+1
    for i = 1:N+1
        u_exact(i,j) = exp(-pi^2*t(j)) * sin(pi*x(i));
    end
end

% Display exact solution
disp('Exact Solution')
disp('   x        t=0        t=0.01      t=0.02')
disp([x' u_exact(:,1) u_exact(:,2) u_exact(:,3)])
% Plot solution
surf(t, x, u)
xlabel('Time')
ylabel('Space')
zlabel('Temperature')
title('Heat Equation Solution (Explicit FDM)')