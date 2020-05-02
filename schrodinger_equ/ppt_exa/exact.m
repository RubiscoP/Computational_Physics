clc
clear all
solinit=bvpinit(linspace(0,20,40),[0 1]);
sol=bvp4c('twoode', 'twobc',solinit);
x=linspace(0,20);
y1=deval(sol,x);
plot(x,y1(1,:))
