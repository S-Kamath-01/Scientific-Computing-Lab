% Plot the Lemniscate of Bernoulli which has the parametric equation (given
% in pdf)

t = 0:0.001:2*pi;
x = cos(t)./(1 + sin(t).^2);
y = (cos(t).*sin(t))./(1 + sin(t).^2);

plot(x, y, 'm-', 'LineWidth',1.5,'MarkerSize',4);
axis equal; grid on;
title('Lemniscate of Bernoulli');
xlabel('x'); ylabel('y');

