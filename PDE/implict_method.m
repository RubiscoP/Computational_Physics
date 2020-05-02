clear;

L = 1;
T =1;

maxk = 2500;
dt = T/maxk;
n = 50.;
dx = L/n;
cond = 1./4.;
b = cond*dt/(dx*dx);

for i = 1:n+1
    x(i) =(i-1)*dx;
    u(i,1) =sin(pi*x(i));
end


for k=1:maxk+1
    u(1,k) = 0.;
    u(n+1,k) = 0.;
    time(k) = (k-1)*dt;
end

aa(1:n-2)=-b;
bb(1:n-1)=1.+2.*b;
cc(1:n-2)=-b;
MM=inv(diag(bb,0)+diag(aa,-1)+diag(cc,1));
for k=2:maxk   
   uu=u(2:n,k-1);
   u(2:n,k)=MM*uu;
end

figure(1);
plot(x,u(:,1),'-',x,u(:,100),'-',x,u(:,300),'-',x,u(:,600),'-');
title('Temperature within the fully implicit method');
xlabel('X');
ylabel('T');
figure(2);
mesh(x,time,u');
title('Temperature within the fully implicit method');
xlabel('X');
ylabel('Temperature');








