function [H,T,range] = projectile(theta,g,v)


H = v^2 *sind(theta).^2/(2*g);
T = 2*v*sind(theta)/g;
range = v^2*sind(2*theta)/g;
