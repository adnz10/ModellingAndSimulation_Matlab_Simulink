clc,clear,close all

%% Assignment Lab 01

%% Question 6: 
t = 1790:10:2000;

p = 197273000./(1+exp(-0.03134*(t-1913.25)));
for i = 1:size(t,2)
    fprintf('Population of %d year = %d \n',t(i),p(i))
end
plot(p)

