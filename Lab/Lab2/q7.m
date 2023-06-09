clc,clear,close all

t = 0:1/16:100;

x = sin(t).*( exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
y = cos(t).*(exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
subplot(2,1,1)
plot(t,x,'--',t,y,':')
subplot(2,1,2)
plot(y,x)
axis square