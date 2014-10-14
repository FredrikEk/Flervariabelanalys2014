%% Ex6

%% Ass1
clear
%close all

t=linspace(0,10*pi);
plot(-0.5+1/(2*pi)*t-1/(2*pi)*sin(t),-0.25*cos(t))
%plot(sin(t),-0.25*cos(t))
axis equal, axis([-2 6 -0.5 0.5])
title('Elipsoid')

%% Ass2 a)
clear

t=linspace(0,2*pi,200);
x=cos(10*t); y=sin(30*t); z=t;
plot3(x,y,z)
grid on
xlabel('x'), ylabel('y'), zlabel('z','rotation',0)
axis([-1.5 1.5 -1.5 1.5 0 2*pi])
axis vis3d, rotate3d on



%{
a=2; s=[-1 1];
xa=cos(10*a); ya=sin(30*a); za=a;
dxa=-10*sin(10*a); dya=30*cos(30*a); dza=1;
hold on
plot3(xa+s*dxa,ya+s*dya,za+s*dza,'m')
plot3(xa,ya,za,'ro','markersize',2,'linewidth',2)
hold off
%}
%% b)
clear; 

t=linspace(0,2*pi,200);
x=cos(10*t).^3; y=sin(10*t).^3; z=t;
plot3(x,y,z)
grid on
xlabel('x'), ylabel('y'), zlabel('z','rotation',0)
axis([-1.5 1.5 -1.5 1.5 0 2*pi])
axis vis3d, rotate3d on

%% Ass 3
clear

fx=@(t)(-0.5+1/(2*pi)*t-1/(2*pi)*sin(t));
fy=@(t)(-0.25*cos(t));

c = 10;
L = 0;
step=4*pi/c;
for i=1:c-1
    L = L + sqrt((fx(step*(i+1))-(fx(step*i)))^2+(fy(step*(i+1))-fy(step*i))^2);
end;

L

%% Ass 4
clear

[X,Y]=meshgrid(linspace(-2,2,10),linspace(-2,2,10));
quiver(X,Y,X.*Y,X-Y,0.8)
axis equal, axis([-2 2 -2 2])

F=@(t,u)[u(1).*u(2);u(1)-u(2)];
hold on
[t,U]=ode45(F,[0 5],[-2;2]);
plot(U(:,1),U(:,2),'g','linewidth',2)
[t,U]=ode45(F,[0 5],[-2;0.5]);
plot(U(:,1),U(:,2),'g','linewidth',2)
hold off

%% Ass 5

clear

fx=@(t)(-0.5+1/(2*pi)*t-1/(2*pi)*sin(t));
fy=@(t)(-0.25*cos(t));

c=100;
A=0;
step = 4*pi/c;
for i=1:c-1
A=A+(fx(step*(i+1))+fx(step*i))*(fy(step*(i+1))-fy(step*i))/2;
end
A=abs(A)
% Ellips = radie_a * radie_b * pi
% 0.5*0.25*pi = 0.39

%% Ass 6
%% a)

rho=3; n=20; m=30;
s=linspace(0,pi,n); t=linspace(0,2*pi,m);
[S,T]=meshgrid(s,t);
X=rho*sin(S).*cos(T); Y=rho*sin(S).*sin(T); Z=rho*cos(S);
surf(X,Y,Z)
axis equal
colormap(autumn)

axis equal vis3d
h=camlight('left');
for i=1:200
    camorbit(5,0)
    drawnow; pause(0.05)
end

%% b)

rho=1.2; a=3; n=20; m=50;
s=linspace(-pi,pi,n); t=linspace(0,2*pi,m);
[S,T]=meshgrid(s,t);
X=(a+rho*cos(S)).*cos(T); Y=(a+rho*cos(S)).*sin(T); Z=rho*sin(S);
surf(X,Y,Z)
axis equal
colormap(summer)

axis equal vis3d
h=camlight('left');
for i=1:200
    camorbit(5,0)
    drawnow; pause(0.05)
end

%% c)

h=6; n=20; m=30;
s=linspace(0,h,n); t=linspace(0,2*pi,m);
[S,T]=meshgrid(s,t);
R=1+sin(S).^2;
X=R.*cos(T); Y=R.*sin(T); Z=S;
surf(X,Y,Z)
axis equal, axis([-2 2 -2 2 0 6])


axis equal vis3d
h=camlight('left');
for i=1:200
    camorbit(5,0)
    drawnow; pause(0.05)
end

%% d)

rho=1.5; h=6; n=20; m=30;
s=linspace(0,h,n); t=linspace(0,2*pi,m);
[S,T]=meshgrid(s,t);
X=rho*cos(T); Y=rho*sin(T); Z=S;
surf(X,Y,Z)
axis equal, axis([-2 2 -2 2 0 6])

axis equal vis3d
h=camlight('left');
for i=1:200
    camorbit(5,0)
    drawnow; pause(0.05)
end