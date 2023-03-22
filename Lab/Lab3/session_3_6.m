clc
clear global
%%
%part(a)
tic
for n=1:100
    res=100;
    a(n)=res;
end
toc

%%
tic
a=zeros(1,100);
for n=1:100
    res=100;
    a(n)=res;
end
toc

%%
%part(b)
tic
x=sin(linspace(0,10*pi,100));
count=0;
for n1=1:length(x)
    if x(n1)>0
        count=count+1;
    end
end
disp(count)
toc

%%
tic
x=sin(linspace(0,10*pi,100));
count=length(find(x>0));
disp(count)
toc

%%
%part(c)
tic
a=rand(1,100);
b=zeros(1,100);
for n2=1:100
    if n2==1
        b(n2)=a(n2);
    else
        b(n2)=a(n2-1)+a(n2);
    end
end
toc

%%
tic
a=rand(1,100);
b=[0 a(1:end-1)]+a;
toc