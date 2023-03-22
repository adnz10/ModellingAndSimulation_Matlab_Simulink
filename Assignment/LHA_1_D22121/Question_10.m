clc,clear,close all

%% Assignment Lab 01

%% Question 10:

syms y(t)
ode = diff(y,t) == t*y
ysol(t) = dsolve(ode)
