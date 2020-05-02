clc;
clear all;
N = 40000;
a = 0.0529;
r1 = 0.25.*rand(1,N);
Dr = (4/a.^3).*r1.^2.*exp(-2./a.*r1);
M = max(Dr);
r2 = M.*rand(1,N);
r = r1(r2<Dr);
n = length(r);
Q = 2.*pi.*rand(1,n);
[X,Y] = pol2cart(Q,r);

figure(1)
scatter(X,Y);

figure(2)
axis equal;
rr = 0:0.01:5;
DDr = 4/a.^3*rr.^2.*exp(-2/a*rr);
scatter(rr,DDr);
xlabel('r');
ylabel('D');
