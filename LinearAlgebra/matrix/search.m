function search(n,A)
lambda = -4;
dlam = 1;
ppold = ppp(lambda,n,A);
while abs(dlam)>0.0001
    lambda = lambda + dlam;
    if ppp(lambda,n,A)*ppold<0
        lambda = lambda-dlam;
        dlam = dlam/2;
    end
end
disp(lambda);
end