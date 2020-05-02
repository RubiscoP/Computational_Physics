clc;clear all;
n = 1000;
r = linspace(0,10,n);
h = r(2)-r(1);
q(1:n) = 0;
s = -0.5.*r.*(exp(-1.*r));

phi(1:n) = 0;
phi(n) = 1;
phi(n-1) = 1-0.000001;
phi = numerove_inv(n,h,q,s,phi);

plot(r,phi,'r-');


%ÕýÏò
% n = 1000;
% r = linspace(0,10,n);
% h = r(2)-r(1);
% q(1:n) = 0;
% s = -0.5.*r.*(exp(-1.*r));
% 
% phi(1:n) = 0;
% phi(1) = 0;
% phi(2) = 1-0.5.*(h+2).*exp(-1.*h);
% phi = numerove(n,h,q,s,phi);

