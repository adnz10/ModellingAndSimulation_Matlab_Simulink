clc,clear,close all

m = 20;
k = 2;
b = 10;
omega = 2*pi;
k1 = k;
k2 = k;
m1 = m;
m2 = m;
b1 = b;
b2 = b;
A = [0 1 0 0; k/m b/m -k/m 0; 0 0 0 1; k/m 0 -(2*k)/m -b/m];
B = [0;1/m;0;0];
C1 = [1 0 0 0];
D1 = [0];
C2 = [0 0 1 0];
D2 = [0];