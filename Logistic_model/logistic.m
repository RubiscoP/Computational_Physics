function logistic(mu,j)

x = 0.6;%³õÖµ
x_store = 1:30;

for i = 1:30
    x = mu.*(x-x.^2);
    x_store(i) = x;
end

i = 1:30;
subplot(2,3,j);
plot(i,x_store,'*-');
title(['u=',num2str(mu)]);

end

