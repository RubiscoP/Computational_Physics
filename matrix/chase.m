function x = chase(a,b,c,f)
N = length(f);
x = zeros(1,N);
y = zeros(1,N);
% d = zeros(1,N);
u = zeros(1,N);

y(1) = f(1)/b(1);
d = b(1);
for i = 2:N
    u(i-1) = c(i-1)/d;
    d = b(i)-a(i)*u(i-1);
    y(i) = (f(i)-a(i)*y(i-1))/d;
end
x(N) = y(N);
for i = N-1:-1:1
    x(i) = y(i)-u(i)*x(i+1);
end
