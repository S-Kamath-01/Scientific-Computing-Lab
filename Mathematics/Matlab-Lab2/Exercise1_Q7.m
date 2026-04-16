% Create a subplot layout with the following
% Top-left: 𝑦 = 𝑥^2
% Top-right: 𝑦 = √𝑥
% Bottom-left: 𝑦 = 𝑒^x
% Bottom-right: 𝑦 = ln (𝑥)


x = 0.1:0.01:10;

subplot(2,2,1)
plot(x, x.^2, 'b'); title('y = x^2'); grid on;

subplot(2,2,2)
plot(x, sqrt(x), 'r'); title('y = sqrt(x)'); grid on;

subplot(2,2,3)
plot(x, exp(x), 'g'); title('y = e^x'); grid on;

subplot(2,2,4)
plot(x, log(x), 'k'); title('y = ln(x)'); grid on;
