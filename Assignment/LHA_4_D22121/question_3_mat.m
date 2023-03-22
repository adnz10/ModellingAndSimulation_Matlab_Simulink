clc,clear,close all

k1 = 5;
k2 = 35;
m1 = 2;
m2 = 3;
b1 = 36;
b2 = 26;
g = 9.81;

out = sim("Question_3_Sim.slx");
t = out.t.data;
x1 = out.x1.data;x2 = out.x2.data;
v1 = out.v1.data;v2 = out.v2.data;

plot(t,x1,'r',t,x2,'b',LineWidth=1.5)
title("Displacement Plot")
legend('x1 displacement','x2 displacement')
xlabel('time(s)')
ylabel('Displacement')
grid on
figure;
plot(t,v1,'r',t,v2,'b',LineWidth=1.5)
title("Velocity Plot")
legend('v1 velocity','v2 velocity')
xlabel('time(s)')
ylabel('Velocity')
grid on

