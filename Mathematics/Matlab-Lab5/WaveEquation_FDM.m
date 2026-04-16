% Wave Equation using Finite Difference Method
clear
clc
L = 1;
T = 1;
c = 1;
N = 20;
M = 200;
h = L/N;
k = T/M;
lambda = c*k/h;
x = 0:h:L;
u = zeros(N+1,M+1);
% Initial displacement
for i=1:N+1
    u(i,1) = sin(pi*x(i));
end
% Boundary conditions
u(1,:) = 0;
u(N+1,:) = 0;
% First time step
for i=2:N
    u(i,2) = u(i,1) + 0.5*lambda^2*(u(i+1,1)-2*u(i,1)+u(i-1,1));
end
% Finite difference iteration
for j=2:M
    for i=2:N
        u(i,j+1) = 2*u(i,j) - u(i,j-1) + ...
        lambda^2*(u(i+1,j)-2*u(i,j)+u(i-1,j));
    end
end
surf(u)
xlabel('Time step')
ylabel('Space node')
zlabel('Displacement')
title('Wave Equation Solution')