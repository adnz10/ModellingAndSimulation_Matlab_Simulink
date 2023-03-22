clc,clear,close all

x = 0:0.2:2*pi;
y = sin(x);
plot(x,y,x,cos(x),x,tan(x))
xlabel("Angle in radians")
legend('Sin(x)','Cos(x)','Tan(x)')
