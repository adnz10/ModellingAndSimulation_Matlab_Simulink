clc
clear global
global K m;
K=35 %in s-kg/m5
m=1800;%in kg
v0=60*5/18;%in m/s
xspan=0:0.1:3;
[X V]=ode45('bumper',xspan,v0)
plot(X,V,"LineWidth",3)

