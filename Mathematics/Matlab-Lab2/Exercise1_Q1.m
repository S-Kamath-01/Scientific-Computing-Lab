% 1) Plot 𝑦 = 𝑥³ − 3𝑥 + 1 for −3 ≤ 𝑥 ≤ 3. Add title, axis labels, grid. Highlight turning points using markers.

x = -3:0.01:3;
y = x.^3 - 3*x + 1;

% Turning points
xt = [-1, 1];
yt = xt.^3 - 3*xt + 1;

plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(xt, yt, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); % highlight
grid on;

xlabel('x');
ylabel('y');
title('y = x^3 - 3x + 1 with Turning Points');
legend('Function','Turning Points');
