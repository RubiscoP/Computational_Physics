function [Vs] = main2(Iapp)
%clear all;

%constant
t = 100; %ms
dt = 0.01;
%store variables
Vs = zeros(1,t/dt);
%init variables
V = -60;
m = 0.1;
n = 0.1;
h = 0.1;
%main loop
for i = 1 : t/dt
    k_m1 = dt * dmt(V,m);
    k_h1 = dt * dht(V,h);
    k_n1 = dt * dnt(V,n);
    k_v1 = dt * dVt(V,m,h,n,Iapp);
    
    k_m2 = dt * dmt(V,m+0.5*k_m1);
    k_h2 = dt * dht(V,h+0.5*k_h1);
    k_n2 = dt * dnt(V,n+0.5*k_n1);
    k_v2 = dt * dVt(V+0.5*k_v1,m,h,n,Iapp);
   
    k_m3 = dt * dmt(V,m+0.5*k_m2);
    k_h3 = dt * dht(V,h+0.5*k_h2);
    k_n3 = dt * dnt(V,n+0.5*k_n2);
    k_v3 = dt * dVt(V+0.5*k_v2,m,h,n,Iapp);
    
    k_m4 = dt * dmt(V,m+k_m3);
    k_h4 = dt * dht(V,h+k_h3);
    k_n4 = dt * dnt(V,n+k_n3);
    k_v4 = dt * dVt(V+k_v3,m,h,n,Iapp);
    
    m = m + (1/6) * (k_m1 + 2*k_m2 + 2*k_m3 + k_m4);
    h = h + (1/6) * (k_h1 + 2*k_h2 + 2*k_h3 + k_h4);
    n = n + (1/6) * (k_n1 + 2*k_n2 + 2*k_n3 + k_n4);
    V = V + (1/6) * (k_v1 + 2*k_v2 + 2*k_v3 + k_v4);
    Vs(i) = V;
end
 plot(dt:dt:t,Vs);
% xlabel('t/ms');
% ylabel('V/mv');
% title(['I_{app} = ',num2str(Iapp),'\muA']);
% hold on;
end
