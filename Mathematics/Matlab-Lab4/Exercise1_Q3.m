p = @(x) x.^2 ./ (x.^3 + 1);
q = @(x) -4*x ./ (x.^3 + 1);
r = @(x) 2 ./ (x.^3 + 1);
a = 0;
b = 2;
alpha = 0;
beta = 4;
h = 0.2
N = (b-a)/h
y = fd_bvp(p,q,r,a,b,alpha,beta,N);
x = linspace(a,b,N+1);
y_exact = x.^2;

%Display table
disp('x Numerical Exact');
disp([x.' ,y , y_exact.'])


%Plot
figure;
plot(x,y,'ro-','LineWidth',2);hold on;
plot(x,y_exact,'b--','LineWidth',2);
legend('Numerical','Exact');
xlabel('x');ylabel('y');
title('FDM Solution of BVP');
grid on;