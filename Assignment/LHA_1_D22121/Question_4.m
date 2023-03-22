clc,clear,close all

%% Assignment Lab 01

%% Question 4: 
A = [2 6; 3 9];
B = [1 2; 3 4];
C = [-5 5; 5 3];

G = blkdiag(A,B,C);
G1 = G;

G1(end,:) = [];
G1(:,end) = [];
G1 = G(1:4,1:4);

G2 = G;
G2(5,5) = 4;

[EVec,Eval] = eig(G)



