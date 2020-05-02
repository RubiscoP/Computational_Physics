clear;

Lmax = 1.0;
Tmax = 1.;
c = 1.0;

maxt = 350;
dt = Tmax/maxt;
n = 300;
nint=50;

dx = Lmax/n;
b = c*dt/(2.*dx);

for i = 1:(n+1)
   if i < nint
u(i,1)=1.;
else
u(i,1)=0.;
end
   x(i) =(i-1)*dx;
end

for k=1:maxt+1
    u(1,k) = 1.;
    u(n+1,k) = 0.;
    time(k) = (k-1)*dt;
end

for k=1:maxt      %  Time loop
   for i=2:n      %  Space loop
      u(i,k+1) =0.5*(u(i+1,k)+u(i-1,k))-b*(u(i+1,k)-u(i-1,k));
   end
end

figure(1)
mesh(x,time,u')
title('Square-wave test within the Lax Method')
xlabel('X')
ylabel('T')
figure(2)
plot(x,u(:,1),'-',x,u(:,20),'-',x,u(:,50),'-',x,u(:,100),'-')
title('Square-wave test within the Lax Method')
xlabel('X')
ylabel('Amplitude(X)')



