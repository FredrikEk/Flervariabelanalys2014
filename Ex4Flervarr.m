%% Ex4Flervarr.m

%% Ass1
close all

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
%hold on
%grid on

%%Ass2

Df=@(x)[6.*x(1)^2-6.*x(1)-12.*x(1).*x(2)+6.*x(2).^2+6.*x(2);-6.*x(1).^2+12.*x(1).*x(2)+6.*x(1)];

%figure, plotfunc3d(sin(x^2 + y^2), cos(x^2 - y^2), x = 0..1, y = 0..2);
%%

x=[-2.5;4.5];
kmax=10; tol=0.5*exp(-8);
for k=1:kmax
    h=-Df(x)\f(x(1),x(2));
    x=x+h;
    disp([x' norm(h)])
    if norm(h)<tol, break, end
end
plot(x(1),x(2), 'ro')
