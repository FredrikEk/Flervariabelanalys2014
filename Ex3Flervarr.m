%% Ex3Flervarr
%% Uppg1nivåkurva

clear
clf

f1=@(x,y)x.^3+y.^2-1;
f2=@(x,y)exp(x.*y)+x+y-2;

x=linspace(-5,3,30); y=linspace(-4,6,30);
[X,Y]=meshgrid(x,y);
Z1=f1(X,Y); Z2=f2(X,Y);
contour(x,y,Z1,[0 0],'g')
hold on
contour(x,y,Z2,[0 0],'b')
grid on

% Uppg1Newton


f1=@(x,y)x.^3+y.^2-1;
f2=@(x,y)exp(x.*y)+x+y-2;

f=@(x)[f1(x(1),x(2));f2(x(1),x(2))];

Df=@(x)[3.*x(1).^2, 2.*x(2);x(2).*exp(x(1).*x(2))+1, x(1).*exp(x(1).*x(2))+1];

%%%L=@(x,y,a,b)[f1(a,b);f2(a,b)] + Df(a,b) * [x-a;y-b];

x=[-2.5;4.5];
kmax=10; tol=0.5*exp(-8);
for k=1:kmax
    h=-Df(x)\f(x);
    x=x+h;
    disp([x' norm(h)])
    if norm(h)<tol, break, end
end
plot(x(1),x(2), 'ro')

x=[0;1];
kmax=10; tol=0.5*exp(-8);
for k=1:kmax
    h=-Df(x)\f(x);
    x=x+h;
    disp([x' norm(h)])
    if norm(h)<tol, break, end
end
plot(x(1),x(2), 'ro')

x=[1;0];
kmax=10; tol=0.5*exp(-8);
for k=1:kmax
    h=-Df(x)\f(x);
    x=x+h;
    disp([x' norm(h)])
    if norm(h)<tol, break, end
end
plot(x(1),x(2), 'ro')

x=[-1;-1.5];
kmax=10; tol=0.5*exp(-8);
for k=1:kmax
    h=-Df(x)\f(x);
    x=x+h;
    disp([x' norm(h)])
    if norm(h)<tol, break, end
end
plot(x(1),x(2), 'ro')


%% Uppg2
%Part1
f1=@(x,y) sin(x) - y;
f2=@(x,y) x - cos(y);

x=linspace(-1,1,30); y=linspace(-1,1,30);
[X,Y]=meshgrid(x,y);
Z1=f1(X,Y); Z2=f2(X,Y);
contour(x,y,Z1,[0 0],'g')
hold on
contour(x,y,Z2,[0 0],'b')
grid on

%Part2

x0 = [0.7;0.7]
f=@(x)[f1(x(1),x(2));f2(x(1),x(2))];

