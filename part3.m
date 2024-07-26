% Solution to part 3 

% Variables 
g = 9.81
X = 1100
Y = 250

% Work out minimum initial velocity
u = sqrt(g) * sqrt(Y + sqrt(X^2 + Y^2)

% Make sure u is greater than min velocity
u = u + 5

% Work out "low ball" and "high ball" angles
a = g/(2 * u^2) * X^2
b = -X
c = Y + (g*X^2)/(2*u^2)

angle1 = atand((-b+sqrt(b^2 - 4*a*c))/(2*a)); a1 = deg2rad(angle1)
angle2 = atand((-b-sqrt(b^2 - 4*a*c))/(2*a)); a2 = deg2rad(angle2)

% Plot given graph
x = linspace(0, X, 100)
y1 = x * tan(a1) - (g / (2 * u^2 * cos(a1)^2)) * x.^2
y2 = x * tan(a2) - (g / (2 * u^2 * cos(a2)^2)) * x.^2

plot(x, y1)

hold on 

plot(x, y2)
