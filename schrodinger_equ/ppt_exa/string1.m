clc;clear all;
x=0:0.01:1; 
n=length(x);
h=x(2)-x(1);
tol=0.000001; %�������
k=4;
dk=1;
s(1:n)=0;
q(1:n)=k.^2;
u(1:n)=0;
u(1)=0;
u(2)=0.01;
uu=numerove(n, h, q, s, u);%�ȵ���һ��
phiold=uu(n); %�õ��ԣ��һ�β²��Ӧ��phiֵ
 while(abs(dk)>tol)                       
     k=k+dk;%��ǰ��һ��
     q(1:n)=k.^2;
     uu=numerove(n, h, q, s, u);%��k����Ӧ��phiֵ
     plot(x,uu,'r');axis([0 1 -1 1]); %pause
     phi=uu(n);
     if(phi*phiold<0) %�������ı����
       k=k-dk; dk=dk./2;  %����һ�����Ѳ�������
     end
 end