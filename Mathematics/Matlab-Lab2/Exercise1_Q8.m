% Create a meshgrid for 𝑥, 𝑦 ∈ [−5,5].Plot 𝑧 = sin(√(x^2+^2))using both mesh and surf. Compare the difference in visualization.

[x,y] = meshgrid(-5:0.1:5);
z = sin(sqrt(x.^2 + y.^2));

subplot(1,2,1)
mesh(x,y,z)
title('Mesh Plot')
xlabel('x'); ylabel('y'); zlabel('z');

subplot(1,2,2)
surf(x,y,z)
title('Surf Plot')
xlabel('x'); ylabel('y'); zlabel('z');
colorbar;
