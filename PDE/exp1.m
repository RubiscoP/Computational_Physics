x = 0:0.1:20;%һά����
t = 0:0.1:25;%ʱ�仮��
a2 = 10;%a2
r = a2*0.01;%����
u = zeros(length(x),length(t));
u(10/0.1:11/0.1,1) = 1;%��ʼʱ��
for j = 1:length(t)
    u(2:length(x)-1,j+1) = (1-2*r).*u(2:length(x)-1,j)...
        +r*(u(1:length(x)-2,j)+u(3:length(x),j));
    plot(x,u(:,j));
    pause(0.1);
end
meshz(u);

