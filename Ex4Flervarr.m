%% Ex4Flervarr.m

%% Ass1
close all
clear

%funktionsyta
x=linspace(-5,5,30); y=linspace(-5,5,30);
f=@(x,y)(2.*x.^3-3.*x.^2-6.*x.*y.*(x-y-1));
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z) % eller surf(x,y,Z)
grid on, box on
%xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%niv�kurva
x=linspace(-5,5,40); y=linspace(-5,5,40);
f=@(x,y)(2.*x.^3-3.*x.^2-6.*x.*y.*(x-y-1));
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
figure, contour(X,Y,Z,30) % eller contour(x,y,Z,30)
hold on
grid on

%% Ass2

Df=@(x)[6.*x(1)^2-6.*x(1)-12.*x(1).*x(2)+6.*x(2).^2+6.*x(2) , -6.*x(1).^2+12.*x(1).*x(2)+6.*x(1)];

%Egenv�rden -3 +- ~7 = sadelpunkt
x=[0;0];
kmax=10; tol=0.5*exp(-8);
for k=1:kmax
    h=-Df(x)\f(x(1),x(2));
    x=x+h;
    disp([x' norm(h)])
    if norm(h)<tol, break, end
end
plot(x(1),x(2), 'ro')


%Egenv�rden -33 +- <33 = sadelpunkt
x=[0;5];
kmax=10; tol=0.5*exp(-8);
for k=1:kmax
    h=-Df(x)\f(x(1),x(2));
    x=x+h;
    disp([x' norm(h)])
    if norm(h)<tol, break, end
end
plot(x(1),x(2), 'ro')

x=[0;-5];
kmax=10; tol=0.5*exp(-8);
for k=1:kmax
    h=-Df(x)\f(x(1),x(2));
    x=x+h;
    disp([x' norm(h)])
    if norm(h)<tol, break, end
end
plot(x(1),x(2), 'ro')

%Egenv�rden 15 +- srt(15^2-72) = negativa r�tter = lokalt min
x=[1.5;0];
kmax=10; tol=0.5*exp(-8);
for k=1:kmax
    h=-Df(x)\f(x(1),x(2));
    x=x+h;
    disp([x' norm(h)])
    if norm(h)<tol, break, end
end
plot(x(1),x(2), 'ro')
