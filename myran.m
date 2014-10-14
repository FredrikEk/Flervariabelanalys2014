%% Myran
shg
t=linspace(0,10*pi,100); s=linspace(0,2*pi);
for i=1:length(t)
    plot(t(1:i)-sin(t(1:i)),1-cos(t(1:i))), hold on
    plot([-1.5 32.5],[0 0],'k')
    plot(t(i)+cos(s),1+sin(s),'r')
    plot(t(i)-sin(t(i)),1-cos(t(i)),'ko'), hold off
    axis equal, axis([-1.5 32.5 -2 4]), title('Cykloid')
    pause(0.1)
end
