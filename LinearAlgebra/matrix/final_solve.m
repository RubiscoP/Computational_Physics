function [x,y] = final_solve(n,L,U,b)
y = zeros(n,1);
x = zeros(n,1);
y(1) = b(1);
for i = 2:n
    sigema = 0;
    for k = 1:i-1
        sigema = sigema+L(i,k)*y(k);
    end
    y(i) = b(i)-sigema;
end
x(n) = y(n)/U(n,n);
for i = n-1:1
    sigema1 = 0;
    for k = i+1:n
        sigema1 = sigema1+U(i,k)*x(k);
    end
    x(i) = (y(i)-sigema1)/U(ii);
end
