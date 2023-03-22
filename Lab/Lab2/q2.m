clc,clear,close all

% Question 2


v = 5;
theta = 30;
g = 9.81;

H = v^2 *sind(theta)^2/(2*g);
fprintf('Maximum height is %g \n',H)
T = 2*v*sind(theta)/g;
fprintf('Total Time is %g \n',T)
range = v^2*sind(2*theta)/g;
fprintf('Range is %g \n',range)



t = 0:0.01:T;
y = v*sind(theta)*t - 0.5*g*t.^2;
x = v*cosd(theta)*t;
plot(x,y)



