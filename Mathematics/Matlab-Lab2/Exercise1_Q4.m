%  Plot both surface and contour of: 𝑧 = 𝑒^−(𝑥^2+𝑦^2) using subplot.

[x,y] = meshgrid(-3:0.1:3);
z = exp(-(x.^2 + y.^2));

subplot(1,2,1)
surf(x,y,z);
title('Surface Plot');
xlabel('x');
ylabel('y');
zlabel('z');
colorbar

subplot(1,2,2)
contour(x,y,z,20,'LineWidth',1.2);
title('Contour Plot');
colorbar
grid on;
