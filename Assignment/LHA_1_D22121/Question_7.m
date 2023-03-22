clc,clear,close all

%% Assignment Lab 01

%% Question 7: 
m = pi/4;
Km = @(theta) (1./sqrt(1-(m^2*(sin(theta)).^2)));
thetamin = 0;
thetamax = pi/2;
integ = integral(Km,thetamin,thetamax)

syms x
expr = 1./sqrt(1-(m^2*(sin(x)).^2));
int(expr,thetamin,thetamax)