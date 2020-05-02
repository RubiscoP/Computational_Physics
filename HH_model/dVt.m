function dV = dVt(V,m,h,n,Iapp)
Cm = 1;
gNa = 120;
gK = 36;
gL = 0.3;
EK = -77;
ENa = 50;
EL = -54.4;
% Iapp = 40;
dV = (1./Cm).*(-gL.*(V-EL) - gNa.*m^3.*h.*(V-ENa)-...
       gK.*n.^4.*(V-EK) + Iapp);
end