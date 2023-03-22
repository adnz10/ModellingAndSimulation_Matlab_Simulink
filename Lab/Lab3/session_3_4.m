clc
clear global
%%
%part(a)
x=-pi:pi/100:pi;
y=cos(4*x).*sin(10*x).*exp(-abs(x));
% plot(x,y,"LineWidth",3)
subplot(2,2,1)
plot(x,y,'r',"LineWidth",3)
subplot(2,2,2)
semilogx(x,y,'k',"LineWidth",3)
subplot(2,2,3)
semilogy(x,y,'c',"LineWidth",3)
subplot(2,2,4)
loglog(x,y,'b',"LineWidth",3)

%%
% part(b)
t=0:pi/500:pi;
x1=sin(t).*cos(10*t);
y1=sin(t).*sin(10*t);
z1=cos(t);
%--------------
x2=sin(t).*cos(12*t);
y2=sin(t).*sin(12*t);
z2=cos(t);
%-------------
plot3(x1,y1,z1,x2,y2,z2)

%%
% part(c)
x=1:10000;
mat=reshape(x,100,100);
imagesc(mat)
colorbar
map=zeros(256,3);
map(:,3)=(0:255)/255;
colormap(map)

%%
% part(d)
x=-pi:0.1:pi;
y=-pi:0.1:pi;
[X,Y]=meshgrid(x,y);
Z=sin(X).*cos(Y);
surf(X,Y,Z)
shading interp

%%
% part(e)
x=-pi:0.1:pi;
y=-pi:0.1:pi;
[X,Y]=meshgrid(x,y);
Z=sin(X).*cos(Y);
mesh(X,Y,Z)
hold on    %comment these two lines for 2-D
contour(X,Y,Z,'LineWidth',2)
shading flat