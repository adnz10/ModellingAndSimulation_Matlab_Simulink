function [area, sumps] = trap_area(a,b,h)

sumps = (a+b);
area = 0.5*h*(sumps);
