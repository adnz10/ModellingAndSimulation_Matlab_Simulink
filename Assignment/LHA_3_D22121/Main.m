clc,clear,close all

%% LHA_3_D22121

%% Question 1
F = linspace(1,5,10);
N = linspace(100,500,10);
P = linspace(1,10,10);
Dia = 40; % 40 mm
mew = 0.02; % pa*s
p1 = F./P;
p2 = Dia^2 * mew *N ./P;
plot(p1,p2,'o')
grid on

%% Question 2
t = 1:1:10;
V = [9.4 7.31 5.51 3.55 2.81 2.04 1.26 0.97 0.74 0.58];
ft = fittype('v*exp(-t/R*c)','independent',{'t'});
coeeficients = fit(t',V',ft)
R = coeeficients.R;
C = coeeficients.c;
V0 = coeeficients.v;
VV = V0 * exp(-t/R*C);
figure;
plot(t,V,'o',t,VV)
grid on
xlabel('time(s)')
ylabel('Voltage')
%% Question 3
[x,y] = meshgrid(-pi:0.1:2*pi);
f = sin(y)./cos(x);
figure;
surf(x,y,f)
xlabel('sin(x)')
ylabel('cos(x)')
zlabel('sin(x)/cos(x)')

%% Question 4
scali()

%% Question 5
value = tan(rand([20 20]));
% Using Loop
greaterNumber = 0;
for j = 1:20
    for k = 1:20
        if value(j,k)>1
            greaterNumber = greaterNumber+1;
        end
    end
end
fprintf('Numbers greater than 1 using loop = %g \n', greaterNumber)
% Using find Command
greaterNumber2 = find(value>1);
greaterNumber2 = length(greaterNumber2);
fprintf('Numbers greater than 1 using find cmd = %g \n', greaterNumber2)
