clc,clear,close all

v = 5;
theta = 0:5:50;
g = 9.81;

[H,T,range]  = projectile(theta,g,v);

plot(H,theta,'m-+')
hold on
plot(T,theta,'c--s')
plot(range,theta,'r-.>')

title('For different theta 0:5:50')
xlabel("Theta")
ylabel("Different Parameters")
legend('Maximum Height','Time','Range')