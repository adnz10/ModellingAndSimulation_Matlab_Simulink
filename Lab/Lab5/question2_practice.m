clc,clear,close all

A = [0 1; -2 -3];
B = [0;0];
C = [1 0; 0 1];
D = [0;0];
t = 0:0.01:6;

sys = ss(A,B,C,D);

[y,x,t1] = initial(sys,[0.1;0.05],t);
y1 = [1 0]*y'
y2 = [0 1]*y'