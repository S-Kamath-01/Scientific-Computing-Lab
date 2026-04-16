clc; clear;

A = [1e-5 1 1;
     1    1 1;
     1    2 3];
b = [2;3;6];
x = GEPartialPivoting(A,b)