clc;
clear;
close all;

N = 20;
U = laplace_solver(N);
surf(U); title('Laplace Solution');
