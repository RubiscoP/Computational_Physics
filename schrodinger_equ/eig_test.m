% x = -1:0.1:1;
% C = 1;
% V = 0;
% h = x(2) - x(1);
% N = length(x);
% 
% A = zeros(N,N);
% % for i = 1:N
% %     A(i,i) = (2/h*h)+V(i);
% % end
% for i = 1:N
%     A(i,i) = (2/h*h);
% end
% for i = 2:N%左旁元
%     A(i,i-1) = -1/h^2;
% end
% 
% for i = 1:N-1%右旁元
%     A(i,i+1) = -1/h^2;
% end
% [t,v] = eig(A);%使用eig方法，能够解出所有本征值，本征解
x = -1:0.01:1;
C = 50;
V = (1/C).*VX(x);
h = x(2) - x(1);
N = length(x);

A = zeros(N,N);
for i = 1:N
    A(i,i) = -(2/h*h)+V(i);
end

for i = 2:N
    A(i,i-1) = -1/h^2;
end

for i = 1:N-1
    A(i,i+1) = -1/h^2;
end

[t,v] = eig(A);
x = linspace(0,1,201);
subplot(2,2,1);
plot(x,t(:,1));
subplot(2,2,2);
plot(x,t(:,2));
subplot(2,2,3);
plot(x,t(:,3));
subplot(2,2,4);
plot(x,t(:,4));



