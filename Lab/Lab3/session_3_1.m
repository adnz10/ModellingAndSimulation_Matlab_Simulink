clc
clear global
n=8;
x=linspace(0,4*pi,100);
y=cos(x);
p=polyfit(x,y,n)
y1=polyval(p,x)
plot(x,y,'o')
hold on
plot(x,y1,'LineWidth',2)
