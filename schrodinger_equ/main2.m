%%
clc;clear all;
global e1;
global C;
global tol;

tol = 1e-6;
e1 = -2.1;
de = 0.0001;
C = 50^2;%���г������ɸò���
xturn = findroot(e1);%�Ե�һ�β²��e1��V-e1����С��

[xl,ul] = int_left(xturn);%�����������
[xr,ur] = int_right(xturn);%�������һ���

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
% dur = diff(ur)./diff(xr);%MATLAB��ֵ����

dul = du_backward(xl,ul);
dur = du_forward(xr,ur);%�ֱ���ul��ur��xturn���ĵ���
f0 = dul(end)-dur(1);%�ж�б���Ƿ��㹻�ӽ���
f1 = ul(end)-ur(1);%�ж���ֵ�Ƿ��㹻�ӽ���
%�����������
while abs(de)>tol
    e1 = e1+de;%���Ĳ²�ֵ
    xturn = findroot(e1);%���µĲ²�ֵ�������
    [xl,ul] = int_left(xturn);
    [xr,ur] = int_right(xturn);%���»��ֵõ��µ�ur��ul
%     dul = diff(ul)./diff(xl);
%     dur = diff(ur)./diff(xr);
    dul = du_backward(xl,ul);
    dur = du_forward(xr,ur);
    f00 = dul(end) - dur(1);
    f11 = ul(end)-ur(1);
    if(f0*f00<0 && f1*f11<0)
        e1 = e1 - de;
        de = de/2;
    end 
end
disp(e1);
subplot(1,2,1);
plot(xl(1,1:955),ul(1,1:955),xr,ur);