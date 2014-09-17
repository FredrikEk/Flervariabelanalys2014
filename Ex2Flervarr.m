%% Uppg1

clear
%clf

a1 = -1;
a2 = 2.5;
a3 = 2.8;

syms x
f(x) = (0.5 * (x-2)^2 - 2*cos(2*x) - 1.5);
fd(x) = diff(f(x));

syms t
Lin1(t) = f(a1) + fd(a1) * (t-a1)
Lin2(t) = f(a2) + fd(a2) * (t-a2)
Lin3(t) = f(a3) + fd(a3) * (t-a3)