%% Ex 1

clear all;
clf

x=linspace(-2,2,30); y=linspace(-2,2,30);
f=@(x,y)(-x.*y.*exp(1).^(-2*(x.^2+y.^2)));
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z) % eller surf(x,y,Z)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Ex 2 a)

clear all
clf

x=linspace(1,2,30); y=linspace(3,4,30);
f=@(x,y)(x+2*y-2);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);

subplot(2,2,1);
surf(X,Y,Z) % eller surf(x,y,Z)
subplot(2,2,2);
contour(X,Y,Z,30)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Ex 2 b)

clear all
clf

x=linspace(-2,2,30); y=linspace(-2,2,30);
f=@(x,y)(x.^2-y.^2);
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
subplot(2,1,1);
surf(X,Y,Z) % eller surf(x,y,Z)
subplot(2,1,2);
contour(X,Y,Z,30)

grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Ex 2 c)

clear all
clf

x=linspace(0,3,30); y=linspace(-1,1,30);
f=@(x,y)(sqrt(1-y.^(2)));
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
subplot(2,1,1);
surf(X,Y,Z) % eller surf(x,y,Z)
subplot(2,1,2);
contour(X,Y,Z,30)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Ex 2 d)

clear all
clf

x=linspace(-2,2,30); y=linspace(-2,2,30);
f=@(x,y)(y.*exp(1).^(-sqrt(x.^2+y.^2)));
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
subplot(2,1,1);
surf(X,Y,Z) % eller surf(x,y,Z)
subplot(2,1,2);
contour(X,Y,Z,30)

grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Ex 3


clear all
clf

x=linspace(-5,5,30); y=linspace(-5,5,30);
f=@(x,y)(-6*x./(2+x.^2 + y.^2));
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z) % eller surf(x,y,Z)
grid on, box on
xlabel('x'), ylabel('y'), zlabel('z = f(x,y)')

%% Ex 4
x=linspace(-2,2,40); y=linspace(-2,2,40);
f=@(x,y)(-x.*y.*exp(1).^(-2*(x.^2+y.^2)));
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
contour(X,Y,Z,30) % eller contour(x,y,Z,30)
