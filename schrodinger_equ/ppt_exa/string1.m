clc;clear all;
x=0:0.01:1; 
n=length(x);
h=x(2)-x(1);
tol=0.000001; %允许误差
k=4;
dk=1;
s(1:n)=0;
q(1:n)=k.^2;
u(1:n)=0;
u(1)=0;
u(2)=0.01;
uu=numerove(n, h, q, s, u);%先调用一次
phiold=uu(n); %得到对ｋ第一次猜测对应的phi值
 while(abs(dk)>tol)                       
     k=k+dk;%ｋ前进一步
     q(1:n)=k.^2;
     uu=numerove(n, h, q, s, u);%新k所对应的phi值
     plot(x,uu,'r');axis([0 1 -1 1]); %pause
     phi=uu(n);
     if(phi*phiold<0) %如果ｐｈｉ改变符号
       k=k-dk; dk=dk./2;  %后退一步并把步长减半
     end
 end