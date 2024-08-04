% Solution to part 4 

% Variables
g = 9.81
h = 2
u = 15
givenTheta = 50; givenTheta = deg2rad(givenTheta)

% Max Distance & Angle
max_X = u^2/g * sqrt(1 + ((2*g*h)/(u^2)))
max_Theta = asin(1/sqrt(2 + ((2*g*h)/u^2)))

% Plot 
x = linspace(0, max_X, 100)

y1 = x * tan(givenTheta) - (g / (2 * u^2 * cos(givenTheta)^2)) * x.^2 + h
y2 = x * tan(max_Theta) - (g / (2 * u^2 * cos(max_Theta)^2)) * x.^2 + h

plot(x, y1)

hold on 

plot(x, y2)

hold off

% Graph Annotation
xlabel('Horizontal distance/m', FontSize= 12); ylabel('Vertical distance/m','FontSize',12)
title('Projectile Motion', FontSize=18)
legend('Given Projectile Motion', 'Optimal Projectile Motion')
