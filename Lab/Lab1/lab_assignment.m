clc,clear,close all

% Question 1 of 01 02 2023 lab
a = sqrt(2);
b = (3+4)/(5+6);
c = (5+3)/(5*3);
d = 2^3^2;
e = (2*pi)^2;
f = 2*pi^2;
g = 1/sqrt(2*pi);
h = 1/(2*sqrt(pi));
i = (2.3*4.5)^(1/3);
ii = nthroot((2.3*4.5),3);
j = (1-(2/(3+2)))/(1+(2/(3-2)));
n = 1000*(1+0.15/12)^60;
l = (0.0000123+5.678*10^-3)*0.4567*10^-4;

% Question 2 
Q2 = (2*(3+4))/(5*(6+1))^2;

% Question 3 
m = 0.5;
c = -2;
x = [0,1,5,3,4,5,7,9,10];
y = m*x +c

% Question 4
A = [1 0 1; 2 3 4 ; -1 6 7];
B = [7 4 2; 3 5 6; -1 2 1];
add = A+B;
mul = A*B;
sqr = A^2;
tran = A';
inve = B^-1;
invee = inv(B);
btat = B' * A';
a2b2ab = A^2 + b^2 -A*B;

% Question 5
eigen = [4 2 -3 ; -1 1 3; 2 5 7];
[Evector, Evalue] = eig(eigen);

% Question 6
Aq6 = [ 0 1 -3; 2 3 -1; 4 5 -2];
Bq6 = [-5;7;10];
xq6 = inv(Aq6)*Bq6;

% Question 7 
q7 = roots([3 -2 -4]);

% Question 8
syms x1 y1 z1
eq1 = 2*x1 + y1 + z1 == 2;
eq2 = -x1 + y1 - z1 == 3;
eq3 = x1 + 2*y1 + 3*z1 == -10;
eq = [eq1;eq2;eq3];
var = [x1;y1;z1];
xq8 = solve(eq,var)

% Question 9
C = 37;
Faren1 = @(cc) (9*cc/5 +32);
Faren1(37)
Faren2 = 9*C/5 +32  

% Question 10

syms  n;
fxn = (1/(n^2));

suma = symsum(fxn,n,1,100000);
eval(suma)

first = 1;
last = 1/100000^2;
space




