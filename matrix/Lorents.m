clc;clear all;
t = linspace(0,2000,2000);
h = t(2)-t(1);
n = length(t);

x = ones(n);
y = ones(n);

x(1) = 1;
y(1) = 2;

for i=1:n-1
   dx = xx(t(i),x(i),y(i)).*h;
   dy = yy(t(i),x(i),y(i)).*h;
   x(i+1) = x(i)+dx;
   y(i+1) = y(i)+dy;
end

plot(x,t);






