function I = simpson_int(u)

a=-1; b=1;
N=length(u);
x=linspace(a,b,N);
h=x(2)-x(1);
sum=0;
c=2;
for i=2:1:N-1
    if(c==2)
        c=4;
    else
        c=2;
    end
        sum=sum+c.*u(i);
end    
 I = (sum+(u(1)+u(end))).*h./3;
