function [xr,ur] = int_right(xturn)
% global tol;
global C;
global e1;
%从右向左积分
nr = 1000;
xr = linspace(xturn,1,nr);%已选定右侧积分边界
hr = xr(2) - xr(1);
ur = zeros(1,nr);%预分配空间
ur(nr) = 0;
ur(nr-1) = 0+0.0001;
qr = zeros(1,nr);%预分配空间
for i = 1:nr
    qr(i) = C.*(e1-VX(xr(i)));
end%设置k^2
sr(1:nr) = 0;%设置s
ur = numerove_inv(nr,hr,qr,sr,ur);%调用numerove从左向右积分