clc,clear,close all

k = 5;
m1 = 2;
m2 = 3;
m3 = 8;
b1 = 40;
b2 = 30;
g = 9.81;

out = sim("question_2_simu.slx");
t = out.t.data;
x1 = out.x1.data;x2 = out.x2.data;x3 = out.x3.data;
v1 = out.v1.data;v2 = out.v2.data;v3 = out.v3.data;

plot(t,x1,'r',t,x2,'g',t,x3,'b',LineWidth=1.5)
title("Displacement Plot")
legend('x1 displacement','x2 displacement','x3 displacement')
xlabel('time(s)')
ylabel('Displacement')
grid on
figure;
plot(t,v1,'r',t,v2,'g',t,v3,'b',LineWidth=1.5)
title("Velocity Plot")
legend('v1 velocity','v2 velocity','v3 velocity')
xlabel('time(s)')
ylabel('Velocity')
grid on
