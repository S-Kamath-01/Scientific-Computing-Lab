p = @(x)0;
q = @(x)1;
r = @(x)0;
a = 0;
b = pi/2;
alpha = 0;
beta = 1;
N = 10;
y = fd_bvp(p,q,r,a,b,alpha,beta,N);
x = linspace(a,b,N+1);
y_exact = sin(x);

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