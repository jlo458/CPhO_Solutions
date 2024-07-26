% Simple projectile simulation 
% Air resistance not included


% Variables 

u = 10
theta = 30; theta = deg2rad(theta)
g = 9.81
initialHeight = 3 


% Finding the Limits - When vertical height reaches 0

a = -0.5*g
b = u*sin(theta) 
c = initialHeight
x1 = (-b - sqrt(b.^2 - 4*a*c))/(2*a) 
x2 = (-b + sqrt(b.^2 - 4*a*c))/(2*a) 

tMax = max(x1, x2) 

xMax = u * cos(theta) * tMax

% Graph making

x = linspace( 0, xMax, 100)
y = x * tan(theta) - (g / (2 * u^2 * cos(theta)^2)) * x.^2 + initialHeight;

plot( x ,y, 'b', 'LineWidth',1)

% Graph Annotation

xlabel('Horizontal distance/m', FontSize= 12); ylabel('Vertical distance/m','FontSize',12)
title('Projectile Motion', FontSize=18)
