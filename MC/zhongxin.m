R = rand(1,1000);
% subplot(2,1,1);
hist(R,20);
Z = ceil(1000*rand(6,1000));
for k = 1:1000
    kk = Z(:,k);
    Y(k) = (R(kk(1)+R(kk(2))+R(kk(3)))+...
        R(kk(4))+R(kk(5))+R(kk(6)))/6;
end
% subplot(2,1,2);
% hist(Y,20);

        