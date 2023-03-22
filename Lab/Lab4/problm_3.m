clc,clear,close all

mp = 10;
mj = 60;
bp = 100;
bj = 10;
kr = 400;
g = 9.81;

var = sim('Problem_3.slx');
time = var.time.Data;
% accejump = var.aj.Data;
xp = var.xp.data;
xj = var.xj.data;
% plot(time,xp,time,xj)
var.plot