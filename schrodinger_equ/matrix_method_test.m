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
for i = 2:N%左旁元
    A(i,i-1) = -1/h^2;
end

for i = 1:N-1%右旁元
    A(i,i+1) = -1/h^2;
end

lambda = search(N,A);
A = A - lambda*eye(N);

%写出a，b，c，f
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

f = zeros(1,N);%本征方程的右边为0向量
%使用追赶法求解本征值
phi = chase(a,b,c,f);






