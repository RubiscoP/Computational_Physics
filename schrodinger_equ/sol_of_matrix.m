% function phi = sol_of_matrix
x = -1:0.1:1;
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

a = search(N,A);
disp(a);


