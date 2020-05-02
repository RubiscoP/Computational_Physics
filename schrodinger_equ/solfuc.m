function u = solfuc()
clc;clear all;
global e1;
global C;
global tol;

tol = 1e-9;
e1 = -2.1;
de = 0.0001;
C = 50^2;%所有常数化成该参数
xturn = findroot(e1);%对第一次猜测的e1求V-e1的最小根

[xl,ul] = int_left(xturn);%从右向左积分
[xr,ur] = int_right(xturn);%从左向右积分

% dul = du_backward(xl,ul);
% dur = du_forward(xr,ur);

% dul = diff(ul)./diff(xl);
% dur = diff(ur)./diff(xr);
% subplot(1,2,1);
% plot(xr,ur,xl,ul);
% subplot(1,2,2);
% plot(xr(:,1:999),dur,xl(:,1:999),dul);
%%
% dul = diff(ul)./diff(xl);
% dur = diff(ur)./diff(xr);%MATLAB数值求导数

dul = du_backward(xl,ul);
dur = du_forward(xr,ur);%分别求ul，ur在xturn处的导数
f0 = dul(end)-dur(1);%判断斜率是否相等用
%用搜索法求解
while abs(de)>tol
    e1 = e1+de;%更改猜测值
    xturn = findroot(e1);%对新的猜测值重新求根
    [xl,ul] = int_left(xturn);
    [xr,ur] = int_right(xturn);%重新积分得到新的ur，ul
%     dul = diff(ul)./diff(xl);
%     dur = diff(ur)./diff(xr);
    dul = du_backward(xl,ul);
    dur = du_forward(xr,ur);
    f1 = dul(end) - dur(1);
    if(f0*f1<0)
        e1 = e1 - de;
        de = de/2;
    end 
    u = [ul ur];
end





