% function phi = sol_of_matrix
x = -1:0.01:1;
C = 1;
V = 0;
h = x(2) - x(1);
N = length(x);

A = zeros(N,N);
% for i = 1:N
%     A(i,i) = (2/h*h)+V(i);
% end
for i = 1:N
    A(i,i) = (2/h*h);
end
for i = 2:N%����Ԫ
    A(i,i-1) = -1/h^2;
end

for i = 1:N-1%����Ԫ
    A(i,i+1) = -1/h^2;
end

lambda = search(N,A);
A = A - lambda*eye(N);

%д��a��b��c��f
b = zeros(1,N);
for i = 1:N
    b(i) = A(i,i);
end

a = zeros(1,N);
a(1) = 0;
for i = 2:N
    a(i) = A(i,i-1);
end

c = zeros(1,N);
c(end) = 0;
for i = 1:N-1
    c(i) = A(i,i+1);
end

f = zeros(1,N);%�������̵��ұ�Ϊ0����
%ʹ��׷�Ϸ���Ȿ��ֵ
phi = chase(a,b,c,f);






