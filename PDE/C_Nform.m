clear;

L = 1;
T = 1;

maxk = 2500;
dt = T/maxk;
n = 50;
dx = L/n;
cond = 1/2;
b = cond*dt/(dx*dx);
%IC
for i = 1:n+1
    x(i) = (i-1)*dx;
    u(i,1) = sin(pi*x(i));
end
%BC
for k = 1:maxk+1
    u(1,k) = 0;
    u(n+1,k) = 0;
    time(k)  =(k-1)*dt;
end
%
aal(1:n-2) = -b;
bbl(1:n-1) = 2+2*b;
ccl(1:n-2) = -b;
MMl = diag(bbl,0)+diag(aal,-1)+diag(ccl,1);

aar(1:n-2) = b;
bbr(1:n-1) = 2-2*b;
ccr(1:n-2) = b;
MMr = diag(bbr,0)+diag(aar,-1)+diag(ccr,1);
%
for k = 2:maxk
    uu = u(2:n,k-1);
    u(2:n,k) = inv(MMl)*MMr*uu;
end

figure(1);
plot(x,u(:,1),'-',x,u(:,100),'-',x,u(:,300),'-',x,u(:,600),'-');
figure(2);
mesh(x,time,u');




    