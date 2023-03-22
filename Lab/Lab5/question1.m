clc,clear,close all

num = 2*[1 3 7 5];
den = [ 1 6 12 26 6];
G = tf(num,den)

subplot(2,1,1)
step(G)
subplot(2,1,2)
impulse(G)