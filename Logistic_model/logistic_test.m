function logistic_test(mu,x)

x_store = 1:30;

for i = 1:30
    x = mu.*(x-x.^2);
    x_store(i) = x;
end

i = 1:30;
plot(i,x_store,'*-');
hold on;

end