clc,clear,close all

t = 0:0.1:15;
A = [0 1 0; 0 0 1; -1 -4 -2];
B = [0;0;2];
C = [1 -3 2];
D = 0.5;
x0 = [1;2;3];
u = 0*t;
sys = ss(A,B,C,D)
[y,t] = lsim(sys,u,t,x0)
plot(t,y)
