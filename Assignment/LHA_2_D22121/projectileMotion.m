function [MaximumHeight, Total_Time, Range] = projectileMotion(velocity,theta)

g = 9.81;
MaximumHeight = velocity^2 *sind(theta).^2/(2*g);
Total_Time = 2*velocity*sind(theta)/g;
Range = velocity^2*sind(2*theta)/g;
