clc; clear; close all;

N = 20;
[X,Y] = meshgrid(linspace(0,1,N+2));
f = -2*pi^2*sin(pi*X).*sin(pi*Y);
U = poisson_solver(N, f);
surf(X, Y, U); title('Poisson Solution');