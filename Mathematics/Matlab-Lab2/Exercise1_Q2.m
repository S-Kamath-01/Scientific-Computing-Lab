% Using subplot, plot: x², x³, sinx + cosx. Include legend and proper formatting.

x = -5:0.01:5;
subplot(3,1,1)
plot(x, x.^2, 'r-','MarkerSize',3);
title('y = x^2');
grid on;
legend('x^2');

subplot(3,1,2)
plot(x, x.^3, 'g-','MarkerSize',3);
title('y = x^3');
grid on;
legend('x^3');

subplot(3,1,3)
plot(x, sin(x)+cos(x), 'b-','MarkerSize',3);
title('y = sin(x)+cos(x)');
grid on;
legend('sinx+cosx');
