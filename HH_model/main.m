%%clear
clear all;

%%constant
Cm = 1;
gNa = 120;
gK = 36;
gL = 0.3;
EK = -77;
ENa = 50;
EL = -54.4;
Iapp = 20;
t = 1000; %ms
dt = 0.01;

%%init variables
V = -60;
m = 0.1;
n = 0.1;
h = 0.1;

%%store variables
Vs = zeros(1,t/dt);

%%main loop
for i = 1 : t/dt
   dm = dt .* (alpha_m(V) .* (1-m) - beta_m(V) .* m);
   m = m + dm;
   
   dn = dt .* (alpha_n(V) .* (1-n) - beta_n(V) .* n);
   n = n + dn;
   
   dh = dt .* (alpha_h(V) .* (1-h) - beta_h(V) .* h);
   h = h + dh;
   
   dV = dt ./Cm.*(-gL.*(V-EL) - gNa.*m^3.*h.*(V-ENa)-...
       gK.*n.^4.*(V-EK) + Iapp);
   
   V = V + dV;
   Vs(i) = V;
end

plot(dt:dt:t,Vs);










    
