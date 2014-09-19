%% Uppg1

clear
clf

a1 = -1;
a2 = 2.5;
a3 = 2.8;

syms x
f(x) = (0.5 * (x-2)^2 - 2*cos(2*x) - 1.5);
fd(x) = diff(f(x));

syms t
Lin1(t) = f(a1) + fd(a1) * (t-a1);
Lin2(t) = f(a2) + fd(a2) * (t-a2);
Lin3(t) = f(a3) + fd(a3) * (t-a3);

ezplot(f(x));
hold on;
ezplot(Lin1(t));
ezplot(Lin2(t));
ezplot(Lin3(t));

%% Uppg2

clear
clf

f=@(x,y)x.*cos(2.*x).*sin(y); % Enklare skriva x,y ist¨allet f¨or x1,x2
dfdx=@(x,y)sin(y).*cos(2*x)-sin(y).*2.*x.*sin(2*x); dfdy=@(x,y)cos(y).*x.*cos(2*x);

L=@(x,y,a,b)f(a,b)+dfdx(a,b)*(x-a)+dfdy(a,b)*(y-b);
n=@(x,y)[dfdx(x,y);dfdy(x,y);-1];

a=3; b=1; % Enklare skriva a,b ist¨allet f¨or a1,a2
p0=[a;b;f(a,b)]; n0=n(a,b); % Tangeringspunkt och normalvektor
x=linspace(2,4,20); y=linspace(0,2,20);
[X,Y]=meshgrid(x,y);

Z=f(X,Y); T=L(X,Y,a,b);
surf(x,y,Z) % Funktionsytan
hold on
surf(x,y,T,'FaceColor','b','FaceAlpha',0.4) % Tangentplanet
s=[-1 1]; % F¨or att rita normalen
plot3(p0(1)+s*n0(1),p0(2)+s*n0(2),p0(3)+s*n0(3),'m','linewidth',2)
hold off
xlabel('x'), ylabel('y'), zlabel('z'), box on
axis equal, axis vis3d, rotate3d on


%% Uppg3
clear

%Li=@(a,b,x,y)
L=@(x,y)[8;exp(2)+1] + [12, 2;exp(2)+1, 2*exp(2)+1] * [x-2;y-1]


L(1.5,1.8)

%% Example
clear
clf

f=@(x,y)0.5*x.^2.*(1+y.^2)-x+1; % Enklare skriva x,y ist¨allet f¨or x1,x2
dfdx=@(x,y)x.*(1+y.^2)-1; dfdy=@(x,y)x.^2.*y;
%Sedan bildar vi linj¨arisering och normalvektor med funktionerna
L=@(x,y,a,b)f(a,b)+dfdx(a,b)*(x-a)+dfdy(a,b)*(y-b);
n=@(x,y)[dfdx(x,y);dfdy(x,y);-1];
%Vi anger tangeringspunkt och ber¨aknar normalvektor samt anger omr?adet vi skall rita ¨over.
a=0.8; b=0.1; % Enklare skriva a,b ist¨allet f¨or a1,a2
p0=[a;b;f(a,b)]; n0=n(a,b); % Tangeringspunkt och normalvektor
x=linspace(-0.5,1.5,20); y=linspace(-1.2,1.2,20);
[X,Y]=meshgrid(x,y); % Koordinatmatriser f¨or omr?adet
%Ritar funktionsyta, tangentplan samt normal med
Z=f(X,Y); T=L(X,Y,a,b);
surf(x,y,Z) % Funktionsytan
hold on
surf(x,y,T,'FaceColor','b','FaceAlpha',0.4) % Tangentplanet
s=[-1 1]; % F¨or att rita normalen
plot3(p0(1)+s*n0(1),p0(2)+s*n0(2),p0(3)+s*n0(3),'m','linewidth',2)
hold off
xlabel('x'), ylabel('y'), zlabel('z'), box on
axis equal, axis vis3d, rotate3d on
