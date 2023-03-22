clc,clear,close all

%% Assignment Lab 01

%% Question 5: 

I = @(R,C,L,E,W) (E/sqrt(R^2 + (2*pi*W*L -1/(2*pi*W*C))^2));
R = 5;
C = 10;
L = 4;
E = 2;
W = 2;
I(R,C,L,E,W)