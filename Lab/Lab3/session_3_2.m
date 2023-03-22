clc
clear global
D=1.259; %in mm
mu=0.001; %in N-s/mm2
rho=999.83; %in kg/m3
V=[0.35,0.59,0.88,1.78,3.39,5.15,7.11,8.76];
dp_bar=[30.59,76.17,150.8,517.3,1605.5,3323.3,5856,8442.4];
pi1=(D*dp_bar)./(rho*V.^2);
pi2=mu./(rho.*D.*V);
n=input('Enter the number for degree of polynomial: ')
p=polyfit(pi2,pi1,n)
y1=polyval(p,pi2)
plot(pi2,pi1,'o')
hold on
plot(pi2,y1,'LineWidth',3)