%% LAB Home Assignment 2 Due Date 15.02.2023

%% Question 1.
% Create sine series script file.
% In main file Calling the script file
x = [0 pi/6 pi/4 pi/2]; % Angle in radians
n = [1 5 10 20]; % Number of terms
for x1 = 1:length(x)
    for n1 = 1:length(n)
        Value_sine = sineseries(x(x1),n(x1));
        fprintf('Value of sineseries at x = %g and n = %g = %.10g \n',x(x1),n(n1),Value_sine)
        %         error = sin(x(x1)) - Value_sine;
    end
end

%% Question 2
% Projectile Motion Find maximum height, total time, range
velocity = 20;
theta = 0:5:50;
[MaximumHeight, Total_Time, Range] = projectileMotion(velocity,theta);
for htm = 1:length(MaximumHeight)
    fprintf('For velocity of 20 m/s and angle of %g (degrees), Maximum height attained is %g , Total Time is %g and Range is %g \n' , theta(htm),MaximumHeight(htm),Total_Time(htm),Range(htm))
end


%% Question 3
% Write script file for calculating volume of hollow sphere
radius_out = 10; % Radius of outer sphere
radius_in = 9; % Radius of inner sphere
volume_HS = Volume_Hollow_sphere(radius_out, radius_in);
fprintf("Volume of Hollow sphere of outer radius (%g) and inner radius (%g) = %g \n",radius_out,radius_in,volume_HS)

%% Question 4
% Write function to convert temp. from C to F
Cel = 0:5:100;
Far = TempC2F(Cel);
figure;
plot(Cel,Far,"R--o")
grid on
title('Conversion of Celsius to Fahrenheit temperature')
xlabel('Temp(Celsius)')
ylabel('Temp(Fahrenheit)')

%% Question 5
% Plot function e^(sqrt(x)) /(x.^2 - x.*e^(x)).^(1/3)
warning off
x5 = 0:1:100;
y51 = exp(sqrt(x5));
y52 = (x5.^2 - x5.*exp(x5)).^(1/3);
y5 = y51./y52;
figure;
plot(x5,y5,'b--o','MarkerSize', 2)
grid on
title('Plot of Function')
xlabel('X values')
ylabel('Function value')

%% Question 6
% Butterfly curve
t = 0:1/16:100;
x6 = sin(t).*( exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
y6 = cos(t).*(exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
figure;
subplot(2,1,1)
plot(t,x6,'R--',t,y6,'K-')
grid on
xlabel('t value')
legend('X curve','Y curve')
subplot(2,1,2)
plot(x6,y6)
xlabel('X Curve')
ylabel('Y Curve')
grid on
axis square
title('Butterfly Curve')

%% Question 7
% Damping Constant Variation with h,a,e
num = 10;
mew = 0.3445/10000; % Ns/cm^2
l = 10; % cm
h = linspace(0.05,0.1, num); % cm
a = linspace(2,4, num); % cm
r = linspace(0.5,1, num); % cm
h1 = 0.5;
a1 = 3;
r1 = 0.75;
DCH = (6*pi*mew*l./h.^3).*( (a1-h/2).^2 -r1.^2 ).*( ((a1.^2 - r1.^2)./(a1-h/2)) - h);
DCA = (6*pi*mew*l./h1.^3)*( (a-h1/2).^2 -r1.^2 ).*( ((a.^2 - r1.^2)./(a-h1/2)) - h1);
DCR = (6*pi*mew*l./h1.^3).*( (a1-h1/2).^2 -r.^2 ).*( ((a1.^2 - r.^2)./(a1-h1/2)) - h1);
figure;

plot(h,DCH,"r--o")
ylabel('Damping Constant')
xlabel('h (cm)')
legend('a = 3, r = 0.75')
grid on
title("Variation of damping constant with h")

figure;
plot(a,DCA,"g-->")
grid on
ylabel('Damping Constant')
xlabel('a (cm)')
title("Variation of damping constant with a")
legend('h = 0.5, r = 0.75')

figure;
plot(r,DCR,"b--p")
grid on
ylabel('Damping Constant')
xlabel('r (cm)')
title("Variation of damping constant with r")
legend('h = 0.5, a = 3')

% Generalised Solution of Question 7

[h2,a2,r2] = meshgrid(h,a,r);
DC = (6*pi*mew*l./h2.^3).*( (a2-h2/2).^2 -r2.^2 ).*( ((a2.^2 - r2.^2)./(a2-h2/2)) - h2);
figure;
slice(h2,a2,r2,DC,h,a,r)
title('Variation of Damping constant with h,a,r')
xlabel('h (cm)')
ylabel('a(cm)')
zlabel('r(cm)')
DCV=colorbar;
ylabel(DCV,'Damping Constant (Ns/cm)');
view(3)