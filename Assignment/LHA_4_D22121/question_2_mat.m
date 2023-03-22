clc,clear,close all

f1 = 1;
f2 = -1;
m1 = 1;
m2 = 1.5;
b = 0.1;
k = 0.2;

out = sim("question_2_Sim.slx");
t = out.t.data;
x1 = out.x1.data;x2 = out.x2.data;
v1 = out.v1.data;v2 = out.v2.data;

plot(t,x1,'r',t,x2,'g',LineWidth=1.5)
title("Displacement Plot")
legend('x1 displacement','x2 displacement')
xlabel('time(s)')
ylabel('Displacement')
grid on
figure;
plot(t,v1,'r',t,v2,'g',LineWidth=1.5)
title("Velocity Plot")
legend('v1 velocity','v2 velocity')
xlabel('time(s)')
ylabel('Velocity')
grid on
