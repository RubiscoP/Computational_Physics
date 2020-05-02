function ppp = ppp(lambda,n,A)
p = zeros(1,n);
p(1) = A(1,1)-lambda;%p0
p(2) = (A(1,1)-lambda)*p(1)-A(2,1)^2;%p1
for i = 3:n
    p(i) = (A(i,i)-lambda)*p(i-1)-A(i,i-1)^2*p(i-2);
end
ppp = p(end);