% Plot the surface: 𝑧 = 𝑥²− 𝑦². Use surf. Add colorbar.

[x,y] = meshgrid(-5:0.1:5);
z = x.^2 - y.^2;

surf(x,y,z)
title('Surface: z = x^2 - y^2');
xlabel('x'); ylabel('y'); zlabel('z');
colorbar;
