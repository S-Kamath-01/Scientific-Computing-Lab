% Plot the piecewise function 𝑓(𝑥) = {𝑥^2:0 ≤ 𝑥 ≤ 1 ;𝑒^(x−1)/2: 1 ≤ 𝑥
% ≤ 4;e^3/2 * si𝑛 (4𝜋/𝑥):4 ≤ 𝑥 ≤ 10}

x1 = 0:0.01:1;
f1 = x1.^2;

x2 = 1:0.01:4;
f2 = exp((x2-1)/2);

x3 = 4:0.01:10;
f3 = exp(1.5)*sin(4*pi./x3);

plot(x1,f1,'r-o','MarkerSize',3); hold on;
plot(x2,f2,'g--s','MarkerSize',3);
plot(x3,f3,'b:*','MarkerSize',4);

title('Piecewise Function');
xlabel('x'); ylabel('f(x)');
legend('x^2','exp(x-1)/2','exp(3/2)*sin(4π/x)');
grid on;

