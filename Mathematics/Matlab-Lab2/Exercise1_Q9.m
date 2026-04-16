% Plot a Möbius strip using parametric equations. Use surf and apply a colormap for visual effect.

u = linspace(0, 2*pi, 200);
v = linspace(-1, 1, 50);
[u,v] = meshgrid(u,v);

x = (1 + (v/2).*cos(u/2)) .* cos(u);
y = (1 + (v/2).*cos(u/2)) .* sin(u);
z = (v/2).*sin(u/2);

surf(x,y,z, u); % color based on 'u'
shading interp;
colormap(jet);
title('Möbius Strip');
xlabel('x'); ylabel('y'); zlabel('z');
