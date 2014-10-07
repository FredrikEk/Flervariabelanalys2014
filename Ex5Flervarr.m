%% Ex5Flervarr
clear

%Ass 1
f=@(x)(x*sin(x));

%Rektangelregel
a=0;
b=1;

fr = (b-a)*f((b+a)/2);

%Trapetsregel

ft = (b-a)*((f(a)+f(b))/2);

h1 = a;
h2 = a + 0.01;
area = 0;
% Vänster
while h2 < b
    area = area + (f(a + h1)*(h2-h1));
    h1 = h2;
    h2 = h2 + 0.01;
end
h1 = a;
h2 = a + 0.01;
area
% Höger
area = 0;
while h2 < b
    area = area + (f(a + h2)*(h2-h1));
    h1 = h2;
    h2 = h2 + 0.01;
end
h1 = a;
h2 = a + 0.01;
area
area = 0;
% Trapets
while h2 < b
    area = area + (h2-h1)*((f(a + h1)+f(a+h2))/2);
    h1 = h2;
    h2 = h2 + 0.01;
end
area

%% Ass 2

f=@(x,y)(y*sin(y+x*y));

a = 0;
b = 1;
c = -pi/2;
d = pi/2;

h1 = a;
h2 = a + 0.01;
area = 0;
% Trapets
while h2 < b
    h3 = c;
    h4 = c + 0.01;
    while h4 < d
        area = area + (h4-h3)*(h2-h1)*f(h2,h4);
        h3 = h4;
        h4 = h4 + 0.01;
    end
    h1 = h2;
    h2 = h2 + 0.01;
end

area

%% skall bli 2

q = integral2(@(x,y)y.*sin(y+x.*y),0,1,-pi/2,pi/2)

% Skall vara 2 så bra!
%% Ass3

clear

%funktionsyta
x=linspace(-5,5,30); y=linspace(-5,5,30);
f=@(x,y)(x.*exp(x.*y));
[X,Y]=meshgrid(x,y);
Z=f(X,Y);
surf(X,Y,Z) % eller surf(x,y,Z)
grid on, box on

% integralen

q=integral2(@(x,y)x.*exp(x.*y),0,1,0,2)

%% Ass 4

clear

a=2;

f=@(x,y)(a-x+y);
rho=@(x,y) y <=a - ((x.^2)/a);

corr = a^3*28/15
q = integral2(@(x,y)f(x,y).*rho(x,y) ,-a,a,0,a)
