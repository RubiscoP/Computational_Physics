function [xr,ur] = int_right(xturn)
% global tol;
global C;
global e1;
%�����������
nr = 1000;
xr = linspace(xturn,1,nr);%��ѡ���Ҳ���ֱ߽�
hr = xr(2) - xr(1);
ur = zeros(1,nr);%Ԥ����ռ�
ur(nr) = 0;
ur(nr-1) = 0+0.0001;
qr = zeros(1,nr);%Ԥ����ռ�
for i = 1:nr
    qr(i) = C.*(e1-VX(xr(i)));
end%����k^2
sr(1:nr) = 0;%����s
ur = numerove_inv(nr,hr,qr,sr,ur);%����numerove�������һ���