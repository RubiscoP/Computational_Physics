function lambda = search(n,A)
lambda = -10;
dlam = 0.1;
ppold = ppp(lambda,n,A);
while abs(dlam)>0.0001
    lambda = lambda + dlam;
    if ppp(lambda,n,A)*ppold<0
        lambda = lambda-dlam;
        dlam = dlam/2;
    end
end
% disp('计算所得值为:');
% disp(lambda);
end