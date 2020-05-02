N = 100000;
r = rand(2,N);
theta = 2.*pi.*r(1,:);
rho = -1.*log(r(2,:));
x = sqrt(2.*rho).*cos(theta);
y = sqrt(2.*rho).*sin(theta);

fx = -5:0.01:5;
fy = (1./sqrt(2.*pi)).*exp(-1.*fx.^2./2);
plot(fx,fy,'r','linewidth',4);
hold on;
[m,n] = hist(y,[-5:0.1:5]);
m = (m./N)*10;
bar(n,m);
